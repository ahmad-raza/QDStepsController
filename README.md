# QDStepsController

[![CI Status](http://img.shields.io/travis/ahmadraza/QDStepsController.svg?style=flat)](https://travis-ci.org/ahmadraza/QDStepsController)
[![Version](https://img.shields.io/cocoapods/v/QDStepsController.svg?style=flat)](http://cocoapods.org/pods/QDStepsController)
[![License](https://img.shields.io/cocoapods/l/QDStepsController.svg?style=flat)](http://cocoapods.org/pods/QDStepsController)
[![Platform](https://img.shields.io/cocoapods/p/QDStepsController.svg?style=flat)](http://cocoapods.org/pods/QDStepsController)

## Usage

QDStepsController is a iOS swift control that will help developers to implement step based functionality with minimum effort.
To run the example project, clone the repo, and run `pod install` from the Example directory first.

![Alt text](https://cloud.githubusercontent.com/assets/5131811/13901246/e08a1da4-ee3e-11e5-9fdc-7b9efe0d5c52.gif "Sample UI")

## Installation
You need to take care of following four points in order to integrate QDStepsController inside your application:  
* Inherit your UINavigationController from QDNavigationController.
* Invoke setStepsCount(steps) to setup steps from viewDidLoad() function of your navigation controller. steps = number of steps that would be shown on screen.
* Inherit all your UIViewController(steps) from QDStepViewController.
* Assign step number to each UIViewController by calling setStepNumber() from their viewDidLoad().   
  

Hurrah, all setup. You're good to launch and test it.

#CocoaPods
QDStepsController is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'QDStepsController', '1.0.0'
```

#Manual
Add all files from QDStepsController/Pod/Classes to your project and follow the steps mentioned above for Installation.

## Author

Ahmad Raza, @Ahmad_Rza

## License

QDStepsController is available under the MIT license. See the LICENSE file for more info.
