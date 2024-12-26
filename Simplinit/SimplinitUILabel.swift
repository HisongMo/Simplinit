//
//  SimplinitUILabel.swift
//  Simplinit
//
//  Created by wanglei on 12/26/24.
//

import UIKit

extension UILabel {
    
    //MARK: Color
    func stColor(_ colorName: String) -> Self {
        self.textColor = UIColor(colorName)
        return self
    }
    
    ///自定义颜色
    func customColor(_ color: UIColor) -> Self {
        self.textColor = color
        return self
    }
    
    ///222222
    var colorTwo: UILabel {
        self.textColor = UIColor("222222")
        return self
    }
    
    ///3333333颜色
    var colorThree: UILabel {
        self.textColor = UIColor("333333")
        return self
    }
    ///666666颜色
    var colorSix: UILabel {
        self.textColor = UIColor("666666")
        return self
    }
    ///999999颜色
    var colorNine: UILabel {
        self.textColor = UIColor("999999")
        return self
    }
    
    //MARK: Font Weight
//    var curWeight: UIFont.Weight = .regular
    ///medium
    var weightMedium: UILabel {
        self.font = UIFont.systemFont(ofSize: self.font.pointSize, weight: .medium)
        return self
    }
    
    ///bold
    var weightBold: UILabel {
        self.font = UIFont.systemFont(ofSize: self.font.pointSize, weight: .bold)
        return self
    }
    
    ///heavy
    var weightHeavy: UILabel {
        self.font = UIFont.systemFont(ofSize: self.font.pointSize, weight: .heavy)
        return self
    }
    
    ///semibold
    var weightSemibold: UILabel {
        self.font = UIFont.systemFont(ofSize: self.font.pointSize, weight: .semibold)
        return self
    }
    
    ///regular
    var weightRegular: UILabel {
        self.font = UIFont.systemFont(ofSize: self.font.pointSize, weight: .regular)
        return self
    }
    
    //MARK: Font
    ///8
    var size8: UILabel {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 8)
        return self
    }
    
    ///9
    var size9: UILabel {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 9)
        return self
    }
    
    ///10
    var size10: UILabel {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 10)
        return self
    }
    
    ///11
    var size11: UILabel {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 11)
        return self
    }
    
    ///12
    var size12: UILabel {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 12)
        return self
    }
    
    ///13
    var size13: UILabel {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 13)
        return self
    }
    
    ///14
    var size14: UILabel {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 14)
        return self
    }
    
    ///15
    var size15: UILabel {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 15)
        return self
    }
    
    ///16
    var size16: UILabel {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 16)
        return self
    }
    
    ///17
    var size17: UILabel {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 17)
        return self
    }
    
    ///18
    var size18: UILabel {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 18)
        return self
    }
    
    ///19
    var size19: UILabel {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 19)
        return self
    }
    
    ///20
    var size20: UILabel {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 20)
        return self
    }
    
    ///21
    var size21: UILabel {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 21)
        return self
    }
    
    ///22
    var size22: UILabel {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 22)
        return self
    }
    
    ///23
    var size23: UILabel {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 23)
        return self
    }
    
    ///24
    var size24: UILabel {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 24)
        return self
    }
    
    ///30
    var size30: UILabel {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 30)
        return self
    }
    
    ///30
    var size36: UILabel {
        self.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 36)
        return self
    }
    
    ///设置标签内容
    func stText(text: String) -> UILabel {
        self.text = text
        return self
    }
    
    //换行
    var canManyLines: Self {
        self.numberOfLines = 0
        return self
    }
    
    //居中
    var textCenter: Self {
        self.textAlignment = .center
        return self
    }
    
    func lineSpacing(value: CGFloat) -> Self {
        let attributedText = NSMutableAttributedString(string: self.text ?? "")
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = value  // 调整行间距大小
        attributedText.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: attributedText.length))
        self.attributedText = attributedText
        return self
    }
    
}
