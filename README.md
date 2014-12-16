ShowNotWorking_Radar
====================

Code sample for [Radar](http://www.openradar.me/19259764) demonstrating that "Show" segue called on `iOS 7` is broken.

#Problem
According to Apple's documentation on the `Show` segue:
>Present the content in the detail or master area depending on the content of the screen. If the app is displaying a master and detail view, the content is pushed onto the detail area. If the app is only displaying the master or the detail, the content is pushed on top of the current view controller stack.

If used on an iPhone (other than an iPhone 6/6+ showing a master detail) a `Show` segue should `push` a view controller into the current view controller stack.

However this behavior is broken with "retrocompatibility" issues when running `iOS 7`. 
Weirdly enough this only happens when we first push a `UIViewController` via code and then call a `Show` segue from that pushed VC; the `UINavigationController` of this child VC gets lost and the `Show` segue will present the `UIViewController` modally.

#What's Happening?
When running this example app on `iOS 8` you'll notice that both `UIViewController`s are pushed into the stack and the last one will display a `UIActivityController` whereas running this on `iOS 7.1` will result on the last `UIViewController` being presented modally and no `UIActivityController` will be displayed due to the lack of a `navigationController` property on the last child view controller.

#Expected Results
In this case we are displaying only the "master"; thus, the child `UIViewCotnroller` should be pushed on top of the current view controller stack on `iOS7` and `iOS8`.
