//
//  SimplinitCommon.swift
//  Simplinit
//
//  Created by wanglei on 12/26/24.
//

import UIKit

extension UIColor {
    
    // 字符串转16进制颜色
    convenience init(_ hexString: String) {
        let hexString = hexString.trimmingCharacters(in: .whitespacesAndNewlines)
        let scanner = Scanner(string: hexString)
        if hexString.hasPrefix("#") {
            scanner.scanLocation = 1
        }
        var color: UInt32 = 0
        scanner.scanHexInt32(&color)
        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
        self.init(red: red, green: green, blue: blue, alpha: 1)
    }
    
    /// 生成图片
    ///
    /// - Returns: 图片
    func toImage(width:CGFloat? = 1,height:CGFloat? = 1) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        // 在这个范围开启一个上下文
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(self.cgColor)
        // 填充这个颜色
        context?.fill(rect)
        let myImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return myImage!
    }
    
}

class BaseImage: NSObject {
    
    var image : UIImage?
    
    init?(named name: String) {
        
        let bunbun = Bundle(for: Self.self)
        self.image = UIImage(named: name, in: bunbun, compatibleWith: nil)
        
    }
}
