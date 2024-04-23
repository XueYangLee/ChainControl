//
//  ChainCtrl+UIView.swift
//  ChainControl
//
//  Created by 李雪阳 on 2024/4/23.
//

import Foundation

public extension UIView {
    /// 初始化  不使用此方式则用系统初始化方法即可
    func ctrl_init() -> Self {
        return self
    }
    
    /// 控件范围尺寸
    func ctrl_frame(_ frame: CGRect) -> Self {
        self.frame = frame
        return self
    }
    
    /// 控件范围尺寸(具体坐标)
    func ctrl_frame(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) -> Self {
        self.frame = CGRect(x: x, y: y, width: width, height: height)
        return self
    }
    
    /// 控件背景色
    func ctrl_backgroundColor(_ backgroundColor: UIColor?) -> Self {
        self.backgroundColor = backgroundColor
        return self
    }
    
    /// 控件背景图
    func ctrl_backgroundImage(_ image: UIImage) -> Self {
        self.backgroundColor = UIColor(patternImage: image)
        return self
    }
    
    /// 控件内容样式(填充模式)
    func ctrl_contentMode(_ contentMode: UIView.ContentMode) -> Self {
        self.contentMode = contentMode
        return self
    }
    
    /// 垂直渐变色  必须设置frame,并在frame之后设置
    /// - Parameters:
    ///   - startColor: 起始颜色
    ///   - endColor: 终止颜色
    ///   - locations: 渐变色范围 默认整体
    func ctrl_gradientVerticalColor(startColor: UIColor, endColor: UIColor, locations: [NSNumber]? = [0, 1]) -> Self {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.bounds
        gradientLayer.colors = [startColor.cgColor, endColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        gradientLayer.locations = locations
        self.layer.addSublayer(gradientLayer)
        return self
    }
    
    /// 水平渐变色  必须设置frame,并在frame之后设置
    /// - Parameters:
    ///   - startColor: 起始颜色
    ///   - endColor: 终止颜色
    ///   - locations: 渐变色范围 默认整体
    func ctrl_gradientHorizontalColor(startColor: UIColor, endColor: UIColor, locations: [NSNumber]? = [0, 1]) -> Self {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.bounds
        gradientLayer.colors = [startColor.cgColor, endColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        gradientLayer.locations = locations
        self.layer.addSublayer(gradientLayer)
        return self
    }
    
    /// 控件阴影
    /// - Parameters:
    ///   - color: 阴影色
    ///   - opacity: 阴影透明度  默认1
    ///   - offset: 阴影偏移量 默认(1,1)
    ///   - shadowRadius: 阴影模糊半径，越大越模糊  默认2
    ///   - path: 阴影路径  阴影效果更好  UIBezierPath(rect: myView.bounds).cgPath
    func ctrl_shadow(color: UIColor?, opacity: Float = 1, offset: CGSize = CGSize(width: 1, height: 1), shadowRadius: CGFloat = 2, path: CGPath? = nil) -> Self {
        self.layer.shadowColor = color?.cgColor
        self.layer.shadowOpacity = opacity
        self.layer.shadowOffset = offset
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowPath = path
        return self
    }
    
    /// 是否裁减掉超出尺寸的部分
    func ctrl_clipsToBounds(_ clipsToBounds: Bool) -> Self {
        self.clipsToBounds = clipsToBounds
        return self
    }
    
    /// 控件是否响应用户操作
    func ctrl_userInteractionEnabled(_ userInteractionEnabled: Bool) -> Self {
        self.isUserInteractionEnabled = userInteractionEnabled
        return self
    }
    
    /// 添加轻点手势点击触发对象及点击事件
    func ctrl_addTapGestureTarget_action(_ target: Any?, _ action: Selector?) -> Self {
        self.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: target, action: action)
        self.addGestureRecognizer(tapGesture)
        return self
    }
    
    /// 添加手势
    func ctrl_addGestureRecognizer(_ gestureRecognizer: UIGestureRecognizer) -> Self {
        self.isUserInteractionEnabled = true
        self.addGestureRecognizer(gestureRecognizer)
        return self
    }
    
    /// 添加tag标识
    func ctrl_tag(_ tag: Int) -> Self {
        self.tag = tag
        return self
    }
    
    /// 控件透明度
    func ctrl_alpha(_ alpha: CGFloat) -> Self {
        self.alpha = alpha
        return self
    }
    
    /// 是否隐藏控件
    func ctrl_hidden(_ hidden: Bool) -> Self {
        self.isHidden = hidden
        return self
    }
    
    /// 设置圆角
    /// - Parameters:
    ///   - cornerRadius: 圆角弧度大小
    ///   - rectCorner: 圆角位置 默认四个角
    ///   - clipsToBounds: 是否需要裁剪  默认false
    func ctrl_cornerRadius(_ cornerRadius: CGFloat, rectCorner: UIRectCorner = .allCorners, clipsToBounds: Bool = false) -> Self {
        self.layer.cornerRadius = cornerRadius
        if #available(iOS 13.0, tvOS 13.0, *) {
            self.layer.cornerCurve = .continuous
        }
        if #available(iOS 11.0, tvOS 11.0, *) {
            self.layer.maskedCorners = CACornerMask(rawValue: rectCorner.rawValue)
        }
        if clipsToBounds { self.clipsToBounds = true }
        return self
    }
    
    /// 设置边框
    /// - Parameters:
    ///   - borderColor: 边框色
    ///   - borderWidth: 边框宽度
    func ctrl_border(_ borderColor: UIColor?, borderWidth: CGFloat) -> Self {
        self.layer.borderColor = borderColor?.cgColor
        self.layer.borderWidth = borderWidth
        return self
    }
    
    /// 控件变形属性(平移\缩放\旋转)
    func ctrl_transform(_ transform: CGAffineTransform) -> Self {
        self.transform = transform
        return self
    }
    
    /// 控件自动调整子视图尺寸，默认YES则会根据autoresizingMask属性自动调整子视图尺寸
    func ctrl_autoresizesSubviews(_ autoresizesSubviews: Bool) -> Self {
        self.autoresizesSubviews = autoresizesSubviews
        return self
    }
    
    /// 控件自动调整子视图与父视图的位置，默认UIViewAutoresizingNone
    func ctrl_autoresizingMask(_ autoresizingMask: UIView.AutoresizingMask) -> Self {
        self.autoresizingMask = autoresizingMask
        return self
    }
}
