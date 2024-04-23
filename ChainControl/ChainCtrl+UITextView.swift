//
//  ChainCtrl+UITextView.swift
//  ChainControl
//
//  Created by 李雪阳 on 2024/4/23.
//

import Foundation

public extension UITextView {
    /// 文本视图文本
    func ctrl_text(_ text: String!) -> Self {
        self.text = text
        return self
    }
    
    /// 文本视图文本颜色
    func ctrl_textColor(_ textColor: UIColor?) -> Self {
        self.textColor = textColor
        return self
    }
    
    /// 文本视图字体
    func ctrl_font(_ font: UIFont?) -> Self {
        self.font = font
        return self
    }
    
    /// 文本视图文本对齐方式
    func ctrl_textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        self.textAlignment = textAlignment
        return self
    }
    
    /// 文本视图是否允许编辑
    func ctrl_editable(_ editable: Bool) -> Self {
        self.isEditable = editable
        return self
    }
    
    /// 文本视图是否允许链接变成超链接
    func ctrl_selectable(_ selectable: Bool) -> Self {
        self.isSelectable = selectable
        return self
    }
    
    /// 是否允许编辑文本样式
    func ctrl_allowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool) -> Self {
        self.allowsEditingTextAttributes = allowsEditingTextAttributes
        return self
    }
    
    /// 文本视图属性文本
    func ctrl_attributedText(_ attributedText: NSAttributedString!) -> Self {
        self.attributedText = attributedText
        return self
    }
    
    /// 文本视图键盘类型
    func ctrl_keyboardType(_ keyboardType: UIKeyboardType) -> Self {
        self.keyboardType = keyboardType
        return self
    }
}
