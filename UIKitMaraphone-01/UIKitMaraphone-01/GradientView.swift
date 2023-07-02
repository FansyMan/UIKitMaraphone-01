//
//  GradientView.swift
//  UIKitMaraphone-01
//
//  Created by Surgeont on 02.07.2023.
//

import UIKit

class GradientView: UIView {
    
    var topColor: UIColor = .blue {
        didSet {
            setNeedsLayout()
        }
    }
    
    var bottomColor: UIColor = .red {
        didSet {
            setNeedsLayout()
        }
    }
    
    override func draw(_ rect: CGRect) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = bounds
        gradientLayer.cornerRadius = 10
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
