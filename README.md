# ChainControl

[![CI Status](https://img.shields.io/travis/XueYangLee/ChainControl.svg?style=flat)](https://travis-ci.org/XueYangLee/ChainControl)
[![Version](https://img.shields.io/cocoapods/v/ChainControl.svg?style=flat)](https://cocoapods.org/pods/ChainControl)
[![License](https://img.shields.io/cocoapods/l/ChainControl.svg?style=flat)](https://cocoapods.org/pods/ChainControl)
[![Platform](https://img.shields.io/cocoapods/p/ChainControl.svg?style=flat)](https://cocoapods.org/pods/ChainControl)

## Swift基础控件UILabel、UIButton、UITextField、 UITextView、UIImageView、UIView链式写法，简化代码
利用链式编程方法使基础控件写法简易化，需要的属性向后拼接即可

## 安装使用

- pods导入

```
pod 'ChainControl'
```

- 手动导入
直接拖拽 `ChainControl`文件夹至你的项目

-----

#### 代码比对示例
- 原生示例
```
        let btn = UIButton(frame: CGRect(x: 10, y: 200, width: 50, height: 50))
        btn.setTitle("button", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.titleLabel?.font = .systemFont(ofSize: 16)
        btn.backgroundColor = .blue
        btn.layer.shadowColor = UIColor.gray.cgColor
        btn.layer.shadowOpacity = 1
        btn.layer.shadowOffset = CGSize(width: 1, height: 1)
        btn.layer.shadowRadius = 2
        self.view.addSubview(btn)
```

- ChainControl示例
```
        let btnExample = UIButton(frame: CGRect(x: 10, y: 100, width: 50, height: 50)).ctrl_title("button").ctrl_titleColor(.white).ctrl_font(.systemFont(ofSize: 16)).ctrl_backgroundColor(.blue).ctrl_shadow(color: .gray)
        self.view.addSubview(btnExample)
```

