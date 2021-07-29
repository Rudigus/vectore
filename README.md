# Vectore
Vectore is a vector framework written in ObjC, which can prove useful in simulations, games and more. Currently, it has support for only one class, VTVector2, which lets you work with two dimensional vectors.

## Installation
This framework is available on CocoaPods. To install it, you can run
```shell
sudo gem install cocoapods
```
After that, you will need a Podfile in your project. Go to your project directory and run
```shell
pod init
```
Add Vectore to your project dependencies by adding this line to your target in the Podfile
```
pod 'Vectore'
```
and running
```shell
pod install
```
That's it! Now you can use Vectore in your project. One thing to note is that you now need to open your app's .xcworkspace instead of the .xcodeproj when working on the app, because of the CocoaPods integration.

## Documentation
The full documentation can be found [here](https://rudigus.github.io/vectore/).
