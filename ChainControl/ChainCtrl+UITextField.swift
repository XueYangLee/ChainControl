//
//  ChainCtrl+UITextField.swift
//  ChainControl
//
//  Created by 李雪阳 on 2024/4/23.
//

import Foundation

public extension UITextField {
    /// 输入框文本
    func ctrl_text(_ text: String?) -> Self {
        self.text = text
        return self
    }
    
    /// 输入框属性文本
    func ctrl_attributedText(_ attributedText: NSAttributedString?) -> Self {
        self.attributedText = attributedText
        return self
    }
    
    /// 输入框文本颜色
    func ctrl_textColor(_ textColor: UIColor?) -> Self {
        self.textColor = textColor
        return self
    }
    
    /// 输入框字体
    func ctrl_font(_ font: UIFont?) -> Self {
        self.font = font
        return self
    }
    
    /// 输入框占位文本
    func ctrl_placeholder(_ placeholder: String?) -> Self {
        self.placeholder = placeholder
        return self
    }
    
    /// 输入框占位文本字体颜色大小设置  *需写在占位文本后
    func ctrl_placeholder_color_font(_ placeholderColor: UIColor, _ placeholderFont: UIFont) -> Self {
        self.attributedPlaceholder = NSAttributedString(string: self.placeholder ?? "", attributes: [.foregroundColor: placeholderColor, .font: placeholderFont])
        return self
    }
    
    /// 输入框文本是否根据宽度调整Font  宽度自适应
    func ctrl_adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> Self {
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }
    
    /// 输入框对齐方式
    func ctrl_textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        self.textAlignment = textAlignment
        return self
    }
    
    /// 输入框光标颜色
    func ctrl_tintColor(_ tintColor: UIColor!) -> Self {
        self.tintColor = tintColor
        return self
    }
    
    /// 输入框边框样式 默认的样式为UITextBorderStyleNone
    func ctrl_borderStyle(_ borderStyle: UITextField.BorderStyle) -> Self {
        self.borderStyle = borderStyle
        return self
    }
    
    /// 输入框编辑框中的内容密码显示
    func ctrl_secureTextEntry(_ secureTextEntry: Bool) -> Self {
        self.isSecureTextEntry = secureTextEntry
        return self
    }
    
    /// 输入框清除按钮的模式
    func ctrl_clearButtonMode(_ clearButtonMode: UITextField.ViewMode) -> Self {
        self.clearButtonMode = clearButtonMode
        return self
    }
    
    /// 输入框返回键的类型
    func ctrl_returnKeyType(_ returnKeyType: UIReturnKeyType) -> Self {
        self.returnKeyType = returnKeyType
        return self
    }
    
    /// 输入框键盘类型
    func ctrl_keyboardType(_ keyboardType: UIKeyboardType) -> Self {
        self.keyboardType = keyboardType
        return self
    }
    
    /// 操作事件 (默认为文本变化后)
    func ctrl_addTarget(_ target: Any?, action: Selector, controlEvent: UIControl.Event = .editingChanged) -> Self {
        self.addTarget(target, action: action, for: controlEvent)
        return self
    }
    
    /// 是否可用
    func ctrl_enabled(_ enabled: Bool) -> Self {
        self.isEnabled = enabled
        return self
    }
}
