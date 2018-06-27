
# ILSParticleEmissionAnimation
ILSParticleEmissionAnimation is pure-Swift library for displaying animation effect from emiting particles. It helps to show for sucess animation and .

<img src="https://user-images.githubusercontent.com/32927921/40609245-afdce0ba-628b-11e8-80b3-6bc02301f879.png">


## Features

* Customizable particle images and color.
* Customize background sound to enhance the animation.
* Can be used as a sucess animation.
* Can customize the sucess background view color and the sucess image as well

## Installation

### Compatibility

-  iOS 8.0+

- Xcode 9.0+, Swift 4+

#### Manual installation
Download and drop the 'ILSParticleEmissionAnimation' folder into your Xcode project.


## Usage

1. Drag and drop the assets from the sample project to provide the necessary particle shapes: 


2. Dont forget to add the framework via embeded binaries in target settings and import the library in your class

3. Create an instance of the ParticleEmissionAnimationView as follows
```swift
var animate = ParticleEmissionAnimationView()
```

4. Add custom color and images to the animating particles  
```swift 
animate.images = [#imageLiteral(resourceName: "semiCircle"),#imageLiteral(resourceName: "flower"),#imageLiteral(resourceName: "polygon"),#imageLiteral(resourceName: "heart")]
animate.colors = [UIColor.cyan,UIColor.green,UIColor.yellow,UIColor.brown]
```
5. Start animating the emission particles  
```swift 
animate.showAnimation(aboveVC: self, withSuccesAnimation: false)
```

6. If you want to show any success animation, then

```swift
animate.showAnimation(aboveVC: self, withSuccesAnimation: false)
```
7. If you want to add sound to enhance the animation, then

```swift
animate.showAnimationWithSound(aboveVC: <#T##UIViewController#>, withSuccesAnimation: <#T##Bool#>, playSoundWithName: <#T##String#>, soundExtension: <#T##String#>)
```
8. Dismiss the animation with the required time delay

```swift
DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4), execute: {
// Put your code which should be executed with a delay here
self.animate.stopAnimation()
})
```
8. Customize sucess image and sucess border color

```swift
animate.sucessImage = image name
animate.sucessCircleBorderColor = desired color
```

## Author

iLeaf Solutions
[http://www.ileafsolutions.com](http://www.ileafsolutions.com)










