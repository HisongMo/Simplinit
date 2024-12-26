//
//  SimplinitUIButton.swift
//  Simplinit
//
//  Created by wanglei on 12/26/24.
//

import UIKit

extension UIButton {
    
    func themeBtn(title: String, bgColor: UIColor = SimplinitUIPreset.ThemeColor, corner: CGFloat = SimplinitUIPreset.SizeScale * 20, fontSize: CGFloat = SimplinitUIPreset.SizeScale * 15) -> Self {
        self.titleLabel?.font = UIFont.systemFont(ofSize: fontSize)
        self.setTitleColor(.white, for: .normal)
        self.setTitle(title, for: .normal)
        self.backgroundColor = bgColor
        self.layer.cornerRadius = corner
        return self
    }
    
    //MARK: normal按钮字体颜色，默认白色
    ///按钮字体颜色：主题色
    var titleColorTheme: UIButton {
        self.setTitleColor(SimplinitUIPreset.ThemeColor, for: .normal)
        return self
    }
    func titleColorCustom(_ colorHex: String) -> Self {
        self.setTitleColor(UIColor(colorHex), for: .normal)
        return self
    }
    
    ///按钮普通标题颜色自定义
    func titleColorCustomForNormal(_ color: UIColor) -> Self {
        self.setTitleColor(color, for: .normal)
        return self
    }
    
    ///按钮选中标题颜色自定义
    func titleColorCustomForSelected(_ color: UIColor) -> Self {
        self.setTitleColor(color, for: .selected)
        return self
    }
    
    //MARK: 按钮背景颜色，默认主题色
    ///按钮背景颜色：主题色
    var bgColorTheme: UIButton {
        self.backgroundColor = SimplinitUIPreset.ThemeColor
        return self
    }
    
    func spBgColorNormal(_ color: UIColor) -> Self {
        self.backgroundColor = color
        return self
    }
    
    func spBgColorSelected(_ color: UIColor) -> Self {
        self.setBackgroundImage(color.toImage(), for: .selected)
        return self
    }
    
    //MARK: normal按钮字体大小
    ///10
    var size10: UIButton {
        self.titleLabel?.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 10)
        return self
    }
    
    ///11
    var size11: UIButton {
        self.titleLabel?.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 11)
        return self
    }
    
    ///12
    var size12: UIButton {
        self.titleLabel?.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 12)
        return self
    }
    
    ///13
    var size13: UIButton {
        self.titleLabel?.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 13)
        return self
    }
    
    ///14
    var size14: UIButton {
        self.titleLabel?.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 14)
        return self
    }
    
    ///15
    var size15: UIButton {
        self.titleLabel?.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 15)
        return self
    }
    
    ///16
    var size16: UIButton {
        self.titleLabel?.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 16)
        return self
    }
    
    ///17
    var size17: UIButton {
        self.titleLabel?.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 17)
        return self
    }
    
    ///18
    var size18: UIButton {
        self.titleLabel?.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 18)
        return self
    }
    
    ///19
    var size19: UIButton {
        self.titleLabel?.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 19)
        return self
    }
    
    ///20
    var size20: UIButton {
        self.titleLabel?.font = UIFont.systemFont(ofSize: SimplinitUIPreset.SizeScale * 20)
        return self
    }
    
    //MARK: normal按钮字体粗细
    ///medium
    var weightMedium: UIButton {
        self.titleLabel?.font = UIFont.systemFont(ofSize: self.titleLabel?.font.pointSize ?? SimplinitUIPreset.SizeScale * 14, weight: .medium)
        return self
    }
    
    ///bold
    var weightBold: UIButton {
        self.titleLabel?.font = UIFont.systemFont(ofSize: self.titleLabel?.font.pointSize ?? SimplinitUIPreset.SizeScale * 14, weight: .bold)
        return self
    }
    
    ///heavy
    var weightHeavy: UIButton {
        self.titleLabel?.font = UIFont.systemFont(ofSize: self.titleLabel?.font.pointSize ?? SimplinitUIPreset.SizeScale * 14, weight: .heavy)
        return self
    }
    
    ///semibold
    var weightSemibold: UIButton {
        self.titleLabel?.font = UIFont.systemFont(ofSize: self.titleLabel?.font.pointSize ?? SimplinitUIPreset.SizeScale * 14, weight: .semibold)
        return self
    }
    
    //MARK: 设置按钮文字
    ///设置按钮标题
    func hiTitleNomal(title: String) -> Self {
        self.setTitle(title, for: .normal)
        return self
    }
    
    ///设置按钮选中标题
    func hiTitleSelected(title: String) -> Self {
        self.setTitle(title, for: .selected)
        return self
    }
    
    //MARK: 设置按钮图片
    ///normal：设置按钮图片,若position不是only，应在设置按钮标题后调用
    func hiImgNormal(imgName: String, position: BtnImgPosition? = .only, space: CGFloat = SimplinitUIPreset.SizeScale * 2) -> Self {
        self.setImage(BaseImage(named: imgName)?.image, for: .normal)
        
        switch position {
        case .left:
            self.setImgAndTitleStyle(type: .Positionleft, Space: space, img: BaseImage(named: imgName)?.image)
            break
        case .top:
            self.setImgAndTitleStyle(type: .PositionTop, Space: space, img: BaseImage(named: imgName)?.image)
            break
        case .right:
            self.setImgAndTitleStyle(type: .PositionRight, Space: space, img: BaseImage(named: imgName)?.image)
            break
        case .bottom:
            self.setImgAndTitleStyle(type: .PositionBottom, Space: space, img: BaseImage(named: imgName)?.image)
            break
        default:
            break
        }
        return self
    }
    
    ///selected：设置按钮图片，至少应该在normal之后调用
    func hiImgSelected(imgName: String, position: BtnImgPosition? = .only, space: CGFloat = SimplinitUIPreset.SizeScale * 2) -> Self {
        self.setImage(BaseImage(named: imgName)?.image, for: .selected)
        switch position {
        case .left:
            self.setImgAndTitleStyle(type: .Positionleft, Space: space, img: BaseImage(named: imgName)?.image)
            break
        case .top:
            self.setImgAndTitleStyle(type: .PositionTop, Space: space, img: BaseImage(named: imgName)?.image)
            break
        case .right:
            self.setImgAndTitleStyle(type: .PositionRight, Space: space, img: BaseImage(named: imgName)?.image)
            break
        case .bottom:
            self.setImgAndTitleStyle(type: .PositionBottom, Space: space, img: BaseImage(named: imgName)?.image)
            break
        default:
            break
        }
        return self
    }
    
    // 预设按钮
    /// 主题按钮
    var themeType: Self {
        return self.bgColorTheme.size15.titleColorCustomForNormal(.white).hiCorner(cornerNum: SimplinitUIPreset.SizeScale * 18) as! Self
    }
    
    enum BtnImgPosition {
        case only, left, top, right, bottom
    }
    
    func setImgAndTitleStyle(type:ButtonImagePosition,Space space:CGFloat, img: UIImage? = nil)  {
            
        var imageWith :CGFloat = 0.0
        var imageHeight :CGFloat = 0.0
        if img != nil {
            imageWith = (img!.size.width);
            imageHeight = (img!.size.height);
        } else {
            imageWith = (self.imageView?.frame.size.width)!;
            imageHeight = (self.imageView?.frame.size.height)!;
        }
        
        var labelWidth :CGFloat = 0.0;
        var labelHeight :CGFloat = 0.0;
        
        labelWidth = CGFloat(self.titleLabel!.intrinsicContentSize.width);
        labelHeight = CGFloat(self.titleLabel!.intrinsicContentSize.height);
        
        var  imageEdgeInsets :UIEdgeInsets = UIEdgeInsets();
        var  labelEdgeInsets :UIEdgeInsets = UIEdgeInsets();
        
        switch type {
        case .PositionTop:
            imageEdgeInsets = UIEdgeInsets(top: -labelHeight - space/2.0, left: 0, bottom: 0, right: -labelWidth);
            labelEdgeInsets = UIEdgeInsets(top: 0, left: -imageWith, bottom: -imageHeight-space/2.0, right: 0);
            break;
        case .Positionleft:
            imageEdgeInsets = UIEdgeInsets(top: 0, left: -space/2.0, bottom: 0, right: space/2.0);
            labelEdgeInsets = UIEdgeInsets(top: 0, left: space/2.0, bottom: 0, right: -space/2.0);
            break;
        case .PositionBottom:
            imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: -labelHeight-space/2.0, right: -labelWidth);
            labelEdgeInsets = UIEdgeInsets(top: -imageHeight-space/2.0, left: -imageWith, bottom: 0, right: 0);
            break;
        case .PositionRight:
            imageEdgeInsets = UIEdgeInsets(top: 0, left: labelWidth, bottom: 0, right: -labelWidth);
            labelEdgeInsets = UIEdgeInsets(top: 0, left: -imageWith-space/2.0, bottom: 0, right: imageWith+space/2.0);
            break;
        }
        
        // 4. 赋值
        self.titleEdgeInsets = labelEdgeInsets;
        self.imageEdgeInsets = imageEdgeInsets;
    }
    
}

/*
 枚举 设置 图片的位置
 */
enum ButtonImagePosition : Int{
    
    case PositionTop = 0
    case Positionleft
    case PositionBottom
    case PositionRight
}
