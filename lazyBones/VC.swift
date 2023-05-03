//
//  Test.swift
//  lazyBones
//
//  Created by Dmitry on 03.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let squareView = UIView()
    let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        styleAndLayout()
        viewStyle()
    }
    
    private func viewStyle() {
        
        view.backgroundColor = .systemGray
        gradientLayer.colors = [UIColor.systemOrange.cgColor, UIColor.blue.cgColor]
        squareView.layer.insertSublayer(gradientLayer, at: 0)
        
        squareView.layer.cornerRadius = 15
        squareView.layer.masksToBounds = true
        
        squareView.layer.shadowColor = UIColor.darkGray.cgColor
        squareView.layer.shadowOpacity = 0.2
        squareView.layer.shadowOffset = CGSize(width: 0, height: 5)
        squareView.layer.shadowRadius = 5
    }
    
    private func styleAndLayout() {
        squareView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(squareView)
        
        NSLayoutConstraint.activate([
            squareView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            squareView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            squareView.widthAnchor.constraint(equalToConstant: 100),
            squareView.heightAnchor.constraint(equalTo: squareView.widthAnchor)
        ])
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        gradientLayer.frame = squareView.bounds
    }
}
