# DTZFloatingActionButton
![Swift 4.0](https://img.shields.io/badge/Swift-4.0-orange.svg)
[![CI Status](http://img.shields.io/travis/hintoz/DTZFloatingActionButton.svg?style=flat)](https://travis-ci.org/hintoz/DTZFloatingActionButton)
[![Version](https://img.shields.io/cocoapods/v/DTZFloatingActionButton.svg?style=flat)](http://cocoapods.org/pods/DTZFloatingActionButton)
[![License](https://img.shields.io/cocoapods/l/DTZFloatingActionButton.svg?style=flat)](http://cocoapods.org/pods/DTZFloatingActionButton)
[![Platform](https://img.shields.io/cocoapods/p/DTZFloatingActionButton.svg?style=flat)](http://cocoapods.org/pods/DTZFloatingActionButton)

Floating button for your ios app in swift.

<img src="https://raw.githubusercontent.com/hintoz/DTZFloatingActionButton/master/Images/Gmaps.png" width="30%"></img> <img src="https://raw.githubusercontent.com/hintoz/DTZFloatingActionButton/master/Images/UITableView.png" width="30%"></img> <img src="https://raw.githubusercontent.com/hintoz/DTZFloatingActionButton/master/Images/UIView.png" width="30%"></img> 

## Requirements
* iOS 9.0+
* Swift 4.0
* Xcode 9

## Installation
### CocoaPods
DTZFloatingActionButton is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:
```ruby
pod 'DTZFloatingActionButton'
```
### Manually
To install manually the DTZFloatingActionButton in an app, just drag the `DTZFloatingActionButton/Classes/*.swift` file into your project.

## Usage
### As Manager in UIWindow
```swift
DTZFABManager.shared.button().handler = {
    button in
    print("Tapped")
}
DTZFABManager.shared.show()
```
### In UIView
```swift
let actionButton = DTZFloatingActionButton()
        actionButton.handler = {
            button in
            self.performSegue(withIdentifier: "tableViewSegue", sender: nil)
        }
        
        self.view.addSubview(actionButton)
```
### In UITableView, UICollectionView
```swift
let actionButton = DTZFloatingActionButton()
        actionButton.handler = {
            button in
            print("Hi!")
        }
        actionButton.isScrollView = true
        self.view.addSubview(actionButton)
```
### Custom initializer
```swift
let actionButton = DTZFloatingActionButton(frame:CGRect(x: view.frame.size.width - 56 - 14,
                                                                y: view.frame.size.height - 56 - 14,
                                                                width: 56,
                                                                height: 56
        ))
```

### Button as in Google maps
```swift
paddingX = 10
paddingY = 76
buttonColor = .white
buttonImage = UIImage(named: "icons8-layers-50")
plusColor = .darkGray

shadowCircleColor = .black
shadowCircleOffSet = CGSize(width: 0, height: 2)
shadowCircleOpacity = 0.4
shadowCircleRadius = 2
isAddShadow = true
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Author

Evgeny Dats (hintoz), hintoz@gmail.com

## License

DTZFloatingActionButton is available under the MIT license. See the LICENSE file for more info.
