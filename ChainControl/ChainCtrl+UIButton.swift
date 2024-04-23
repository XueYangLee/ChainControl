//
//  ChainCtrl+UIButton.swift
//  ChainControl
//
//  Created by 李雪阳 on 2024/4/23.
//

import Foundation

public extension UIButton {
    /// 初始化 不使用此方式则用系统初始化方法即可
    convenience init(title: String?) {
        self.init(type: .custom)
        self.setTitle(title, for: .normal)
    }
    
    /// 字体
    func ctrl_font(_ font: UIFont!) -> Self {
        self.titleLabel?.font = font
        return self
    }
    
    /// 按钮文本对齐方式
    func ctrl_textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        self.titleLabel?.textAlignment = textAlignment
        return self
    }
    
    /// 按钮文本行数
    func ctrl_numberOfLines(_ numberOfLines: Int) -> Self {
        self.titleLabel?.numberOfLines = numberOfLines
        return self
    }
    
    /// 按钮文本是否根据宽度调整Font  宽度自适应
    func ctrl_adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> Self {
        self.titleLabel?.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }
    
    /// 按钮文本
    func ctrl_title(_ title: String?, state: UIControl.State = .normal) -> Self {
        self.setTitle(title, for: state)
        return self
    }
    
    /// 按钮属性文本
    func ctrl_attributedTitle(_ title: NSAttributedString?, state: UIControl.State = .normal) -> Self {
        self.setAttributedTitle(title, for: state)
        return self
    }
    
    /// 按钮文本颜色
    func ctrl_titleColor(_ titleColor: UIColor?, state: UIControl.State = .normal) -> Self {
        self.setTitleColor(titleColor, for: state)
        return self
    }
    
    /// 按钮图片
    func ctrl_image(_ image: UIImage?, state: UIControl.State = .normal) -> Self {
        self.setImage(image, for: state)
        return self
    }
    
    /// 按钮内容垂直对齐方式
    func ctrl_contentVerticalAlignment(_ contentVerticalAlignment: UIControl.ContentVerticalAlignment) -> Self {
        self.contentVerticalAlignment = contentVerticalAlignment
        return self
    }
    
    /// 按钮内容水平对齐方式
    func ctrl_contentHorizontalAlignment(_ contentHorizontalAlignment: UIControl.ContentHorizontalAlignment) -> Self {
        self.contentHorizontalAlignment = contentHorizontalAlignment
        return self
    }
    
    /// 按钮背景色
    func ctrl_buttonBackColor(_ backgroundColor: UIColor, state: UIControl.State = .normal) -> Self {
        let size = (self.bounds == .zero) ? CGSize(width: 1, height: 1) : self.bounds.size
        let image = UIGraphicsImageRenderer(size: size).image { context in
            context.cgContext.setFillColor(backgroundColor.cgColor)
            context.fill(self.bounds)
        }
        self.setBackgroundImage(image, for: state)
        return self
    }
    
    /// 按钮背景图片
    func ctrl_buttonBackImage(_ backgroundImage: UIImage?, state: UIControl.State = .normal) -> Self {
        self.setBackgroundImage(backgroundImage, for: state)
        return self
    }
    
    /// 按钮点击触发对象及点击事件
    func ctrl_addTarget(_ target: Any?, action: Selector, controlEvent: UIControl.Event = .touchUpInside) -> Self {
        self.addTarget(target, action: action, for: controlEvent)
        return self
    }
    
    /// 是否可用
    func ctrl_enabled(_ enabled: Bool) -> Self {
        self.isEnabled = enabled
        return self
    }
}
