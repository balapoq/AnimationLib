//
//  EventTrackerSettings.swift
//  Poq.iOS
//
//  Created by Antonia Chekrakchieva on 2/25/16.
//
//

import Foundation

class EventTrackerSettings: NSObject {
   
    public static var sharedInstance: EventTrackerSettings = EventTrackerSettings()

    var eventTypeAddToBag = "Add to Bag"
    var eventTypeAddToWishList = "Add to Wish List"
    var eventTypeAppBackground = "App Background"
    var eventTypeAppForeground = "App Foreground"
    var eventTypeAppLaunch = "App Launch"
    var eventTypeApplePay = "ApplePay"
    var eventTypeApplyFilters = "Apply Filters"
    var eventTypeApplySort = "Apply Sort"
    var eventTypeAppStories = "App Stories"
    var eventTypeBag = "Bag"
    var eventTypeBagMerged = "Bag Merged"
    var eventTypeBagScreen = "Bag Screen"
    var eventTypeCategoryLoaded = "Category Loaded"
    var eventTypeCheckoutError = "Checkout Error"
    var eventTypeCheckoutExit = "Checkout Exit"
    var eventTypeCheckoutOrderUpdate = "Checkout Order Update"
    var eventTypeCheckoutURLRequest = "Checkout URL Request"
    var eventTypeFullScreenImageViewLoad = "Full screen image view Load"
    var eventTypeFullScreenImageViewSharing = "Full screen image view sharing"
    var eventTypeGroupProductListLoad = "Group Product List Load"
    var eventTypeHomeAction = "Home Action"
    var eventTypeLayerActions = "Layar Actions"
    var eventTypeLayerSales = "Layer Sales"
    var eventTypeLinkClicked = "Link Clicked"
    var eventTypeLookBookOpen = "Lookbook Open"
    var eventTypeLookBookShopIt = "Lookbook ShopIt"
    var eventTypeMyReward = "My Reward Card"
    var eventTypeMySize = "My Size"
    var eventTypeMyStore = "MyStore"
    var eventTypeNativeBagScreen = "Native Bag Screen"
    var eventTypeNativeCheckout = "NativeCheckout"
    var eventTypeOnboarding = "Onboarding"
    var eventTypeOpenReview = "Open Reviews"
    var eventTypeOrderList = "Order List"
    var eventTypeOrderSummary = "Order Summary"
    var eventTypePageScreen = "Page Screen"
    var eventTypePeekAction = "Peek and Pop Action"
    var eventTypePeekOpen = "Peek and Pop Open"
    var eventTypeProductAvailabilityLoad = "Product Availability Load"
    var eventTypeProductDetailLoad = "Product Detail Load"
    var eventTypeProductListLoad = "Product List Load"
    var eventTypePushNotification = "Push Notification"
    var eventTypeRecentlyViewed = "Recently Viewed"
    var eventTypeRecognition = "Recognition"
    var eventTypeRegister = "Register"
    var eventTypeRemoveFromBag = "Remove from bag"
    var eventTypeRemoveFromBagSwiping = "Swipe to remove from bag"
    var eventTypeRemoveFromWishList = "Remove from wishlist"
    var eventTypeReviewsLoad = "Reviews Load"
    var eventTypeRewardCard = "Reward Card"
    var eventTypeScan = "Scan"
    var eventTypeSearch = "Search"
    var eventTypeSearchHistory = "History"
    var eventTypeSearchNoResults = "No Results"
    var eventTypeSecureCheckout = "Secure Checkout"
    var eventTypeSelectMySizes = "Select My Sizes"
    var eventTypeSelectMyStore = "Select My Store"
    var eventTypeSetSizeForKids = "Set Size For Kids"
    var eventTypeSetSizeForMale = "Set Size For Male"
    var eventTypeSetSizeForWomen = "Set Size For Woman"
    var eventTypeSetSizeForOppositeGender = "Set Size For Opposite Gender"
    var eventTypeShare = "Share"
    var eventTypeShopScreenLoaded = "Shop Screen Loaded"
    var eventTypeStore = "Store"
    var eventTypeStoreAddToFavorite = "Store Add To Favorite"
    var eventTypeStoreList = "Store List"
    var eventTypeSwipeToHype = "Swipe to Hype"
    var eventTypeTermsAndConditions = "Terms And Conditions"
    var eventTypeUser = "User"
    var eventTypeVideos = "Videos"
    var eventTypeVisualSearch = "Visual Search"
    var eventTypeWishScreen = "Wish Screen"
    var actionTypeActionLike = "Like"
    var actionTypeActionDislike = "Dislike"
    var actionTypeActionOpenPDP = "Open Product Detail"
    var actionTypeActionEndOfDeckInCategory = "End of Products In Category"
    var actionTypeActionEndOfDeckInProducts = "End of All Products"
    var actionTypeActionSwitchToAllProductsFeed = "Switch to All Products"
    var actionTypeActivityType = "ActivityType"
    var actionTypeAddToBag = "Add to Bag"
    var actionTypeAddToWishlist="Add To Wishlist"
    var actionTypeAppDelegate = "App Delegate"
    var actionTypeAppStoriesAutoOpen = "Auto Open"
    var actionTypeAppStoriesDismiss = "Dismiss"
    var actionTypeAppStoriesOpen = "Open"
    var actionTypeAppStoriesPLPSwipe = "PLP Swipe"
    var actionTypeAppStoriesPDPSwipe = "PDP Swipe"
    var actionTypeAppStoriesVideoSwipe = "Video Swipe"
    var actionTypeAppStoriesWebViewSwipe = "Webview Swipe"
    var actionTypeBagMerged = "Bag Merged"
    var actionTypeCategory = "Category"
    var actionTypeCategoryLoaded = "Category Loaded"
    var actionTypeCheckout = "Checkout"
    var actionTypeCheckoutPrice = "Checkout Price"
    var actionTypeColours = "Colours"
    var actionTypeBrands = "Brands"
    var actionTypeSizes = "Sizes"
    var actionTypeCategories = "Categories"
    var actionTypeMinPrice = "MinPrice"
    var actionTypeMaxPrice = "MaxPrice"
    var actionTypeStyles = "Styles"
    var actionTypeCount = "Count"
    var actionTypeCreditCard = "Credit Card"
    var actionTypeDeepLink = "Deeplink"
    var actionTypeError = "Error"
    var actionTypeFavouriteStore = "FavouriteStore"
    var actionTypeImageURL = "ImageURL"
    var actionTypeInvalidTotalCost = "Invalid Total Cost"
    var actionTypeFailedCode = "Failed code"
    var actionTypeFemale = "Female"
    var actionTypeLoaded = "Loaded"
    var actionTypeLogin = "Login"
    var actionTypeLogout = "Logout"
    var actionTypeMale = "Male"
    var actionTypeMyProfile = "My Profile"
    var actionTypeMySizes = "My Sizes"
    var actionTypeNoResults = "NoResults"
    var actionTypeNumberOfReviews = "NumberOfReviews"
    var actionTypeOnboardingSwipe = "Swipe"
    var actionTypeOnboardingSkip = "Skip"
    var actionTypeOpenExternalLink = "Open External Link"
    var actionTypeOpenedLayarViewer = "Opened Layar Viewer"
    var actionTypeOpenQRCode = "Open QR Code"
    var actionTypeOrder = "Order"
    var actionTypePeekAddToWishlistSKU = "Add to Wishlist SKU"
    var actionTypePeekAddToWishlistTitle = "Add to Wishlist Title"
    var actionTypePeekProductSKU = "Peek Product SKU"
    var actionTypePeekProductTitle = "Peek Product Title"
    var actionTypePeekShareSKU = "Share SKU"
    var actionTypePeekShareTitle = "Share Title"
    var actionTypePeekViewDetailsSKU = "View Details SKU"
    var actionTypePeekViewDetailsTitle = "View Details Title"
    var actionTypePlay = "Play"
    var actionTypeProduct = "Product"
    var actionTypeProductID = "ProductID"
    var actionTypeProductName = "Product Name"
    var actionTypePushNotificationLandingPage = "Push Notification landing page"
    var actionTypePurchasedAfterUsingScanner = "Purchased after using scanner"
    var actionTypeRecognition = "Applied For Recognition"
    var actionTypeRegister = "Register"
    var actionTypeRegisterRewardCard = "Register Reward Card"
    var actionTypeRemoveFromBag = "Remove from bag"
    var actionTypeRemoveFromWishList = "Remove from wishlist"
    var actionTypeRefresh = "Refresh"
    var actionTypeScan = "Scan"
    var actionTypeScreen = "Screen"
    var actionTypeSearch = "Search"
    var actionTypePredictiveSearch = "Predictive Search"
    var actionTypeSelectSize = "Selected Size"
    var actionTypeShareTapped = "Share Tapped"
    var actionTypeShop = "Shop"
    var actionTypeShopItButtonClicked = "Shop it button clicked page"
    var actionTypeSignUp = "Sign up"
    var actionTypeSize = "Size"
    var actionTypeSortBy = "Sort by"
    var actionTypeStore = "Store"
    var actionTypeStoreName = "StoreName"
    var actionTypeSuccessful = "Successful"
    var actionTypeSuccessfulScan = "Successful scan"
    var actionTypeTitle = "Title"
    var actionTypeUnsuccessful = "Unsuccessful"
    var actionTypeUnsuccessfulScan = "Unsuccessful scan"
    var actionTypeUpdateAccount = "Update Account"
    var actionTypeUpdatedTotalCost = "Updated Total Cost"
    var actionTypeURL = "URL"
    var actionTypeVisualSearchSubmission = "Submit"
    var actionTypeVisualSearchResults = "Results"

    var labelTypeFeatured = "Featured"
    var labelTypeFemale = "Female"
    var labelTypeFromHomescreen = "From Homescreen"
    var labelTypeFromNavigation = "From Navigation"
    var labelTypeHisSizes = "His Sizes"
    var labelTypeHerSizes = "Her Sizes"
    var labelTypeKids = "Kids"
    var labelTypeLoaded = "Loaded"
    var labelTypeMale = "Male"
    var labelTypeNewest = "Newest"
    var labelTypeNotCompleted = "NotCompleted"
    var labelTypePrice = "Price"
    var labelTypeSeller = "Seller"
    var labelTypePurchasedAfterUsingScanner = "Purchased after using scanner"
    var labelTypeRating = "Rating"
    var labelTypeReceived = "Received"
    var labelTypeSignIn = "Sign In"
    var labelTypeSignUp = "Sign Up"
    var labelTypeShare = "Share"
    var labelTypeShop = "Shop"
    var labelTypeSuccessfulScan = "Successful scan"
    var labelTypeUnknown = "Unknown"
    var labelTypeUnsuccessfullScann = "Unsucessfull scan"
    var labelTypeValueSwipe = "Swipe"
    var labelTypeValueTap = "Tap"

}