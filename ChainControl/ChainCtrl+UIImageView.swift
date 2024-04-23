//
//  ChainCtrl+UIImageView.swift
//  ChainControl
//
//  Created by 李雪阳 on 2024/4/23.
//

import Foundation

public extension UIImageView {
    /// 图片
    func ctrl_image(_ image: UIImage?) -> Self {
        self.image = image
        return self
    }
    
    /// 高亮图片
    func ctrl_highlightedImage(_ highlightedImage: UIImage?) -> Self {
        self.highlightedImage = highlightedImage
        return self
    }
    
    /// 图片动画数组 多图组成动画
    func ctrl_animationImages(_ animationImages: [UIImage]?) -> Self {
        self.animationImages = animationImages
        return self
    }
    
    /// 图片动画数组完成一次的时间 默认30帧
    func ctrl_animationDuration(_ animationDuration: TimeInterval) -> Self {
        self.animationDuration = animationDuration
        return self
    }
    
    /// 图片动画重复次数  默认0 无限循环
    func ctrl_animationRepeatCount(_ animationRepeatCount: Int) -> Self {
        self.animationRepeatCount = animationRepeatCount
        return self
    }
}
