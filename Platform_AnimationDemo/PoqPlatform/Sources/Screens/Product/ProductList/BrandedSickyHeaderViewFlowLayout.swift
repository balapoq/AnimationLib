//
//  BrandedSickyHeaderViewFlowLayout.swift
//  Poq.iOS
//
//  Created by Nikolay Dzhulay on 29/06/2016.
//
//

import Foundation


final class BrandedSickyHeaderViewFlowLayout: UICollectionViewFlowLayout {
    
    override func layoutAttributesForSupplementaryView(ofKind elementKind: String, at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        // Get the layout attributes for a standard flow layout
        guard let attributes = super.layoutAttributesForSupplementaryView(ofKind: elementKind, at: indexPath) else {
            return nil
        }
        
        // If this is a header, we should tweak it's attributes
        if elementKind == UICollectionElementKindSectionHeader {
            if let fullSectionFrame = frameForSection(indexPath.section) {
                let minimumY = max(collectionView!.contentOffset.y + collectionView!.contentInset.top, fullSectionFrame.origin.y)
                let maximumY = fullSectionFrame.maxY - headerReferenceSize.height - collectionView!.contentInset.bottom
                
                attributes.frame = CGRect(x: 0, y: min(minimumY, maximumY), width: collectionView!.bounds.size.width, height: headerReferenceSize.height)
                attributes.zIndex = 1
            }
        }
        
        return attributes
    }
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        // Get the layout attributes for a standard UICollectionViewFlowLayout
        guard var elementsLayoutAttributes: [UICollectionViewLayoutAttributes] = super.layoutAttributesForElements(in: rect) else {
            return nil
        }
        
        
        // Define a struct we can use to store optional layout attributes in a dictionary
        struct HeaderAttributes {
            var layoutAttributes: UICollectionViewLayoutAttributes?
        }
        var visibleSectionHeaderLayoutAttributes = [Int : HeaderAttributes]()
        
        
        // Loop through the layout attributes we have
        for (index, layoutAttributes) in elementsLayoutAttributes.enumerated() {
            let section = layoutAttributes.indexPath.section
            
            switch layoutAttributes.representedElementCategory {
            case .supplementaryView:
                // If this is a set of layout attributes for a section header, replace them with modified attributes
                if layoutAttributes.representedElementKind == UICollectionElementKindSectionHeader {
                    if let newLayoutAttributes = layoutAttributesForSupplementaryView(ofKind: UICollectionElementKindSectionHeader, at: layoutAttributes.indexPath) {
                        elementsLayoutAttributes[index] = newLayoutAttributes
                        
                        // Store the layout attributes in the dictionary so we know they've been dealt with
                        visibleSectionHeaderLayoutAttributes[section] = HeaderAttributes(layoutAttributes: newLayoutAttributes)
                    }
                    
                }
                
            case .cell:
                // Check if this is a cell for a section we've not dealt with yet
                if visibleSectionHeaderLayoutAttributes[section] == nil {
                    // Stored a struct for this cell's section so we can can fill it out later if needed
                    visibleSectionHeaderLayoutAttributes[section] = HeaderAttributes(layoutAttributes: nil)
                }
                
            case .decorationView:
                break
            }
        }
        
        // Loop through the sections we've found
        for (section, headerAttributes) in visibleSectionHeaderLayoutAttributes {
            // If the header for this section hasn't been set up, do it now
            if headerAttributes.layoutAttributes == nil {
                let indexPath: IndexPath = IndexPath(item: 0, section: section)
                if let newAttributes = layoutAttributesForSupplementaryView(ofKind: UICollectionElementKindSectionHeader, at: indexPath) {
                    elementsLayoutAttributes.append(newAttributes)
                }
                
            }
        }
        
        return elementsLayoutAttributes
    }
    
    override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        return true
    }
    
    fileprivate func frameForSection(_ section: Int) -> CGRect? {
        
        guard let collectionView: UICollectionView = self.collectionView else {
            return nil
        }
        // Sanity check
        let numberOfItems = collectionView.numberOfItems(inSection: section)
        if numberOfItems == 0 {
            return nil
        }
        
        // Get the index paths for the first and last cell in the section
        let firstIndexPath = IndexPath(row: 0, section: section)
        let lastIndexPath = numberOfItems == 0 ? firstIndexPath : IndexPath(row: numberOfItems - 1, section: section)
        
        // Work out the top of the first cell and bottom of the last cell
        let firstCellTop = layoutAttributesForItem(at: firstIndexPath)!.frame.origin.y
        let lastCellBottom = layoutAttributesForItem(at: lastIndexPath)!.frame.maxY
        
        // Build the frame for the section
        var frame = CGRect.zero
        
        frame.size.width = collectionView.bounds.size.width
        frame.origin.y = 0
        frame.size.height = lastCellBottom - firstCellTop
        
        // Increase the frame to allow space for the header
        frame.origin.y -= headerReferenceSize.height
        frame.size.height += headerReferenceSize.height
        
        // Increase the frame to allow space for an section insets
        frame.origin.y -= sectionInset.top
        frame.size.height += sectionInset.top
        
        frame.size.height += sectionInset.bottom
        
        return frame
    }
}
