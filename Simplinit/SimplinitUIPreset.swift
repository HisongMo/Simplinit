//
//  SimplinitUIPreset.swift
//  Simplinit
//
//  Created by wanglei on 12/26/24.
//

import UIKit

final public class SimplinitUIPreset: NSObject {
    
    public static let ThemeColor = UIColor("#FF7F50")
    /// 比例 以 苹果 6/7屏宽 为准 为 1 ，其余宽度的比例 按照屏幕适当缩小
    public static var SizeScale : CGFloat {
        get{
            return UIScreen.main.bounds.size.width / 375
        }
    }
    /// 屏宽
    public static var Width : CGFloat {
        get{
            return UIScreen.main.bounds.size.width
        }
    }
    /// 圆角 大小
    public static var Height : CGFloat {
        get{
            
            return UIScreen.main.bounds.size.height
        }
    }
}
