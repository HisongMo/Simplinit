# Simplinit

![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)
[![CocoaPods](http://img.shields.io/cocoapods/v/Simplinit.svg)](https://cocoapods.org/pods/Simplinit)

##### Super sweet syntactic sugar for Swift Component initializers.

### 1.Install
  
#### CocoaPods
  - Add the following to your Podfile: ``` pod 'Simplinit' ```
  - And ``` pod install ``` in your Terminal
### 3.Use
  - just ``` import Simplinit ```
  - And you can use it like this
    ```swift
    var newBtn = UIButton()
        .size12
        .weightMedium
        .titleColorTheme
        .bgColorBlue
        .hiTitleNomal(title: "open")
        .hiImgNormal(imgName: "openImg", position: .top)
    ```
  - This is equivalent to:
    ```swift
    let btn = UIButton()
    btn.setTitle("open", for: .normal)
    btn.setImage(UIImage(named: "openImg"), for: .normal)
    btn.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .medium)
    btn.backgroundColor = .blue
    btn.setTitleColor(.black, for: .normal)
    ```

  ### 4.Author

  HisongMo(old: Thered-key)

  ### 5.License

  `Simplinit` is available under the MIT license. See the [LICENSE](LICENSE) file for more info.

  ---
  
