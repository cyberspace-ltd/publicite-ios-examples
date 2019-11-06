
# publicite-ios-examples
Publicite Ios SDK Integration

# Introduction
The Cyberspace publicite SDK makes it easy to add a publicite ads engine to your IOS application.

# Features
The SDK provides custom native UI elements to get you started easily without having to design the elements yourself.

# Requirements
The Cyberpay iOS SDK is compatible with iOS Apps supporting IOS 10 and above.

# Getting Started
##	Install and Configure the SDK

#### 1. If you haven't already, install the latest version of CocoaPods

#### 2. Add this line to your podfile

pod 'publicite'

#### 4. Run the following command in your terminal after navigating to your project directory. pod install

#### 5. Ensure you use the .xcworkspace file to open your project in Xcode instead of .xcodeproj.

##      Usage
### Import Dependencies
```
import UIKit
import PubliciteSdk
```

### Publicite Native Ads

![Publicite Native Ads](https://github.com/cyberspace-ltd/publicite-android-examples/raw/master/native_ads.png)

```

```

### Publicite Slider Ads

![Publicite Native Ads](https://github.com/cyberspace-ltd/publicite-android-examples/raw/master/slider_ads.png)

```
// create a publicite slider view
let publiciteSliderAdsView = PubliciteSliderView();

override func viewDidLoad() {
  super.viewDidLoad()

  //add view to parent view container
  self.view.addSubview(publiciteSliderAdsView);

  //set constraints
  publiciteSliderAdsView.translatesAutoresizingMaskIntoConstraints = false;

  publiciteSliderAdsView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true;
  publiciteSliderAdsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true;
  publiciteSliderAdsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true;
  publiciteSliderAdsView.heightAnchor.constraint(equalToConstant: 200).isActive = true;

  // set slider refresh rate in MS
  publiciteSliderAdsView.refreshRateMs = 50000;

  //load ads -> replace with your publicite ads token
  publiciteSliderAdsView.load(adsToken: "APP-535F7894-35AB-49D9-986D-C7B2B8B9B50D_SP-3E71FDB4-3B6B-4A1B-AF8F-20C12356CDEE_52_3");


}
```
### Publicite Banner Ads

![Publicite Native Ads](https://github.com/cyberspace-ltd/publicite-android-examples/raw/master/banner_ads.png)

```
// create a publicite ads view
let publiciteAdsView =  PubliciteAdsView();


override func viewDidLoad() {
  super.viewDidLoad()

  //add view to parent view container
  self.view.addSubview(publiciteAdsView);

  //set constraints
  publiciteAdsView.translatesAutoresizingMaskIntoConstraints = false;

  publiciteAdsView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true;
  publiciteAdsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true;
  publiciteAdsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true;
  publiciteAdsView.heightAnchor.constraint(equalToConstant: 200).isActive = true;

  //load ads -> replace with your publicite ads token
  publiciteAdsView.load(adsToken: "APP-535F7894-35AB-49D9-986D-C7B2B8B9B50D_SP-3E71FDB4-3B6B-4A1B-AF8F-20C12356CDEE_52_3");


}
```
### Publicite Full Page Ads

![Publicite Native Ads](https://github.com/cyberspace-ltd/publicite-android-examples/raw/master/full_page_ads.png)

```
// implement the onloadcomplete callback
class ViewController: UIViewController, OnLoadCompleteListener {

//static let shared
var fpAds: PubliciteFpAds!

override func viewDidLoad() {
super.viewDidLoad()

fpAds = PubliciteFpAds(rootController: self, token: "APP-535F7894-35AB-49D9-986D-C7B2B8B9B50D_SP-3E71FDB4-3B6B-4A1B-		AF8F-20C12356CDEE_52_3");
fpAds.onLoadCompleteListener = self;

fpAds.load();

}

func onLoadCompleteListener(ad: PubliciteAd) {

DispatchQueue.main.async {
self.fpAds.makeVisible(rootController: self);
}

//print(ad.clickUrl);
}

}
```
