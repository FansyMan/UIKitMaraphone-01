//
//  ViewController.swift
//  UIKitMaraphone-01
//
//  Created by Surgeont on 02.07.2023.
//

import UIKit

final class MainViewController: UIViewController {
    private lazy var mainView = MainView()
    
    override func loadView() {
        view = mainView
    }
}

