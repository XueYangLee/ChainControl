//
//  ChainCtrl+UILabel.swift
//  ChainControl
//
//  Created by 李雪阳 on 2024/4/23.
//

import Foundation

public extension UILabel {
    /// 初始化 不使用此方式则用系统初始化方法即可
    convenience init(text: String?) {
        self.init(frame: .zero)
        self.text = text
    }
    
    /// 文本
    func ctrl_text(_ text: String?) -> Self {
        self.text = text
        return self
    }
    
    /// 属性文本
    func ctrl_attributedText(_ attributedText: NSAttributedString?) -> Self {
        self.attributedText = attributedText
        return self
    }
    
    /// 字体
    func ctrl_font(_ font: UIFont!) -> Self {
        self.font = font
        return self
    }
    
    /// 文本颜色
    func ctrl_textColor(_ textColor: UIColor!) -> Self {
        self.textColor = textColor
        return self
    }
    
    /// 对齐方式
    func ctrl_textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        self.textAlignment = textAlignment
        return self
    }
    
    /// 行数
    func ctrl_numberOfLines(_ numberOfLines: Int) -> Self {
        self.numberOfLines = numberOfLines
        return self
    }
    
    /// 文本是否根据宽度调整Font  宽度自适应
    func ctrl_adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> Self {
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }
    
    /// 是否可用
    func ctrl_enabled(_ enabled: Bool) -> Self {
        self.isEnabled = enabled
        return self
    }
}
