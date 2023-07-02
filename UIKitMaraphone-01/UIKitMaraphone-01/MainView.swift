//
//  MainView.swift
//  UIKitMaraphone-01
//
//  Created by Surgeont on 02.07.2023.
//

import UIKit

final class MainView: UIView {
    private let gradientView = GradientView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension MainView {
    func setupUI() {
        backgroundColor = .white
        
        setupGradientView()
        addSubviews()
        setupConstraints()
    }
    
    func setupGradientView() {
        gradientView.translatesAutoresizingMaskIntoConstraints = false

        gradientView.layer.shadowColor = UIColor.black.cgColor
        gradientView.layer.shadowOffset = CGSize(width: 10, height: 10)
        gradientView.layer.shadowOpacity = 0.8
        gradientView.layer.shadowRadius = 10
        gradientView.layer.masksToBounds = false
    }
    
    func addSubviews() {
        addSubview(gradientView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            gradientView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            gradientView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 100),
            gradientView.widthAnchor.constraint(equalToConstant: 100),
            gradientView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}
