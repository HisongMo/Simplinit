//
//  SimplinitUIView.swift
//  Simplinit
//
//  Created by wanglei on 12/26/24.
//

import UIKit

extension UIView {
    
    ///边框
    func hiBorder(color: UIColor) -> Self {
        self.layer.borderWidth = SimplinitUIPreset.SizeScale * 1
        self.layer.borderColor = color.cgColor
        return self
    }
    
    ///圆角
    func hiCorner(cornerNum: CGFloat) -> Self {
        self.layer.cornerRadius = cornerNum
        return self
    }
    
    /// 背景色
    func spBgColor(color: UIColor) -> Self {
        self.backgroundColor = color
        return self
    }
    
    ///全部圆角
    func cornerRadiuForAll(cornerNum: CGFloat) {
        if #available(iOS 11.0, *) {
            // iOS11:只需要带用这个系统方法就可以随意设置View的圆角了，是不是很方便，赶快试一下吧
            self.layer.cornerRadius = cornerNum*SimplinitUIPreset.SizeScale
            self.layer.maskedCorners = CACornerMask(rawValue: CACornerMask.layerMinXMinYCorner.rawValue | CACornerMask.layerMaxXMinYCorner.rawValue | CACornerMask.layerMaxXMaxYCorner.rawValue | CACornerMask.layerMinXMaxYCorner.rawValue)
        } else {
            // 类型可省略
            let corners: UIRectCorner = [.topLeft,.topRight,.bottomLeft,.bottomRight]
            self.setCornerRadius(cor: SimplinitUIPreset.SizeScale * cornerNum, rectCorner: corners)
        }
    }
    
    ///上面圆角
    func cornerRadiuForTop_LeftRight(cornerNum: CGFloat) {
        if #available(iOS 11.0, *) {
            // iOS11:只需要带用这个系统方法就可以随意设置View的圆角了，是不是很方便，赶快试一下吧
            self.layer.cornerRadius = cornerNum*SimplinitUIPreset.SizeScale
            self.layer.maskedCorners = CACornerMask(rawValue: CACornerMask.layerMinXMinYCorner.rawValue | CACornerMask.layerMaxXMinYCorner.rawValue)
        } else {
            // 类型可省略
            let corners: UIRectCorner = [.topLeft,.topRight]
            self.setCornerRadius(cor: SimplinitUIPreset.SizeScale * cornerNum, rectCorner: corners)
        }
    }
    
    ///下面圆角
    func cornerRadiuForBottom_LeftRight(cornerNum: CGFloat) {
        if #available(iOS 11.0, *) {
            // iOS11:只需要带用这个系统方法就可以随意设置View的圆角了，是不是很方便，赶快试一下吧
            self.layer.cornerRadius = cornerNum
            self.layer.maskedCorners = CACornerMask(rawValue: CACornerMask.layerMinXMaxYCorner.rawValue | CACornerMask.layerMaxXMaxYCorner.rawValue)
        } else {
            // 类型可省略
            let corners: UIRectCorner = [.bottomLeft,.bottomRight]
            self.setCornerRadius(cor: cornerNum, rectCorner: corners)
        }
    }
    
    ///左上右下圆角
    func cornerRadiuForTopLeft_BottomRight(cornerNum: CGFloat) {
        if #available(iOS 11.0, *) {
            // iOS11:只需要带用这个系统方法就可以随意设置View的圆角了，是不是很方便，赶快试一下吧
            self.layer.cornerRadius = cornerNum*SimplinitUIPreset.SizeScale
            self.layer.maskedCorners = CACornerMask(rawValue: CACornerMask.layerMinXMinYCorner.rawValue | CACornerMask.layerMaxXMaxYCorner.rawValue)
        } else {
            // 类型可省略
            let corners: UIRectCorner = [.topLeft,.bottomRight]
            self.setCornerRadius(cor: SimplinitUIPreset.SizeScale * cornerNum, rectCorner: corners)
        }
    }
    
    ///左下右上圆角
    func cornerRadiuForBotLeft_TopRight(cornerNum: CGFloat) {
        if #available(iOS 11.0, *) {
            // iOS11:只需要带用这个系统方法就可以随意设置View的圆角了，是不是很方便，赶快试一下吧
            self.layer.cornerRadius = cornerNum*SimplinitUIPreset.SizeScale
            self.layer.maskedCorners = CACornerMask(rawValue: CACornerMask.layerMinXMaxYCorner.rawValue | CACornerMask.layerMaxXMinYCorner.rawValue)
        } else {
            // 类型可省略
            let corners: UIRectCorner = [.bottomLeft,.topRight]
            self.setCornerRadius(cor: SimplinitUIPreset.SizeScale * cornerNum, rectCorner: corners)
        }
    }
    
    ///左侧圆角
    func cornerRadiuForLeft_topBottom(cornerNum: CGFloat) {
        if #available(iOS 11.0, *) {
            // iOS11:只需要带用这个系统方法就可以随意设置View的圆角了，是不是很方便，赶快试一下吧
            self.layer.cornerRadius = cornerNum*SimplinitUIPreset.SizeScale
            self.layer.maskedCorners = CACornerMask(rawValue: CACornerMask.layerMinXMinYCorner.rawValue | CACornerMask.layerMinXMaxYCorner.rawValue)
        } else {
            // 类型可省略
            let corners: UIRectCorner = [.topLeft,.bottomLeft]
            self.setCornerRadius(cor: SimplinitUIPreset.SizeScale * cornerNum, rectCorner: corners)
        }
    }
    
    ///右侧圆角
    func cornerRadiuForRight_topBottom(cornerNum: CGFloat) {
        if #available(iOS 11.0, *) {
            // iOS11:只需要带用这个系统方法就可以随意设置View的圆角了，是不是很方便，赶快试一下吧
            self.layer.cornerRadius = cornerNum*SimplinitUIPreset.SizeScale
            self.layer.maskedCorners = CACornerMask(rawValue: CACornerMask.layerMaxXMinYCorner.rawValue | CACornerMask.layerMaxXMaxYCorner.rawValue)
        } else {
            // 类型可省略
            let corners: UIRectCorner = [.topRight,.bottomRight]
            self.setCornerRadius(cor: SimplinitUIPreset.SizeScale * cornerNum, rectCorner: corners)
        }
    }
    
    /// 随心所欲设置圆角
    /// - Parameters:
    ///   - cor: 圆角弧度
    ///   - rectCorner: 圆角位置
    func setCornerRadius(cor: CGFloat, rectCorner: UIRectCorner) {
        
        self.layoutIfNeeded()
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: rectCorner, cornerRadii: CGSize(width: cor, height: cor))
        let shapeLayer = CAShapeLayer()
        shapeLayer.frame = self.bounds
        shapeLayer.path = path.cgPath
        self.layer.mask = shapeLayer
        
    }
    
}
