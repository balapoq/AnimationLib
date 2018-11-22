//
// Made by Novoda 2016
// From https://github.com/novoda/ios-demos/blob/master/Earl-Grey-Demo/Earl-Grey-DemoTests/UITest.swift
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import XCTest
import EarlGrey

// This code allows a nicer API around [EarlGrey](https://github.com/google/EarlGrey).
// Let your `XCTest` class implement this protocol, and then use the protocol extensions. For example:
// `onView(with: .accessibilityLabel("doneButton")).tap()`

protocol UITest {}

extension UITest
{
    func onView(with matchers: Matcher...) -> GREYElementInteraction {
        let greyMatchers = matchers.map {
            $0.createMatcher()
        }
        return EarlGrey.selectElement(with: grey_allOf(greyMatchers))
    }

    func onTabBarButton(with matcher: Matcher) -> GREYElementInteraction {
        return onView(with: matcher)
                .inRoot(grey_kindOfClass(UITabBar.classForCoder()))
    }

}

struct Matcher
{
    fileprivate let createMatcher: (() -> GREYMatcher)

    static func accessibilityIdentifier(_ accessibilityIdentifier: String) -> Matcher {
        return Matcher(createMatcher: {
            return grey_accessibilityID(accessibilityIdentifier)
        })
    }

    static func accessibilityLabel(_ accessibilityLabel: String) -> Matcher {
        return Matcher(createMatcher: {
            return grey_accessibilityLabel(accessibilityLabel)
        })
    }

    static func accessibilityHint(_ accessibilityHint: String) -> Matcher {
        return Matcher(createMatcher: {
            return grey_accessibilityHint(accessibilityHint)
        })
    }
    
    static func type(_ classType: AnyClass) -> Matcher {
        return Matcher(createMatcher: {
            return grey_kindOfClass(classType)
        })
    }

    static func title(_ title: String) -> Matcher {
        return Matcher(createMatcher: {
            return grey_buttonTitle(title)
        })
    }

    static func text(_ text: String) -> Matcher {
        return Matcher(createMatcher: {
            return grey_text(text)
        })
    }

}

extension GREYElementInteraction
{
    func tap() {
        perform(GREYActions.actionForTap())
    }

    func doubleTap() {
        perform(GREYActions.actionForTap())
        perform(GREYActions.actionForTap())
    }

    func swipeSlowLeft() {
        perform(GREYActions.actionForSwipeSlow(in: GREYDirection.left))
    }

    func swipeFastLeft() {
        perform(GREYActions.actionForSwipeFast(in: GREYDirection.left))
    }
    
    func swipeFastUp() {
        perform(GREYActions.actionForSwipeFast(in: GREYDirection.up))
    }

    func assertIsVisible() {
        assert(with: GREYMatchers.matcherForSufficientlyVisible())
    }

    func assertText(matches string: String) {
        assert(with: GREYMatchers.matcher(forText: string))
    }

    func type(_ text: String) {
        perform(GREYActions.action(forTypeText: text))
    }
    
    func replace(_ text: String) {
        perform(GREYActions.action(forReplaceText: text))
    }

    func backspace(times: Int) {
        let backspaceString = String(repeating: "\u{8}", count: times)
        type(backspaceString)
    }
}
