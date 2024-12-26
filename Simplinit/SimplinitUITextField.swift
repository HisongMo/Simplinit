//
//  SimplinitUITextField.swift
//  Simplinit
//
//  Created by wanglei on 12/26/24.
//

import UIKit

extension UITextField {
    
    func stColor(_ colorName: String) -> Self {
        self.textColor = UIColor(colorName)
        return self
    }
    
    //MARK: Font
    ///11
    var size11: Self {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 11)
        return self
    }
    
    ///12
    var size12: Self {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 12)
        return self
    }
    
    ///13
    var size13: Self {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 13)
        return self
    }
    
    ///14
    var size14: Self {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 14)
        return self
    }
    
    ///15
    var size15: Self {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 15)
        return self
    }
    
    ///16
    var size16: Self {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 16)
        return self
    }
    
    ///17
    var size17: Self {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 17)
        return self
    }
    
    ///18
    var size18: Self {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 18)
        return self
    }
    
    ///19
    var size19: Self {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 19)
        return self
    }
    
    ///20
    var size20: Self {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 20)
        return self
    }
    
//    //MARK: Font Weight
////    var curWeight: UIFont.Weight = .regular
//    ///medium
//    var weightMedium: Self {
//        self.font = UIFont.systemFont(ofSize: self.font.pointSize, weight: .medium)
//        return self
//    }
//
//    ///bold
//    var weightBold: Self {
//        self.font = UIFont.systemFont(ofSize: self.font.pointSize, weight: .bold)
//        return self
//    }
//
//    ///heavy
//    var weightHeavy: Self {
//        self.font = UIFont.systemFont(ofSize: self.font.pointSize, weight: .heavy)
//        return self
//    }
//
//    ///semibold
//    var weightSemibold: Self {
//        self.font = UIFont.systemFont(ofSize: self.font.pointSize, weight: .semibold)
//        return self
//    }
//
}
