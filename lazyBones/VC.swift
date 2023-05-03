//
//  Test.swift
//  lazyBones
//
//  Created by Dmitry on 03.05.2023.
//

import UIKit

class ViewController: UIViewController {
    

    let gradientLayer = CAGradientLayer()
    
    let mainView = UIView()
    let subView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        viewStyle()
        styleAndLayout()
        
    }
    

    private func viewStyle() {
        view.backgroundColor = .systemGray
        
        
        mainView.backgroundColor = .clear
        mainView.layer.cornerRadius = 15
        mainView.layer.shadowColor = UIColor.darkGray.cgColor
        mainView.layer.shadowOpacity = 0.8
        mainView.layer.shadowOffset = CGSize(width: 0, height: 10)
        mainView.layer.shadowRadius = 5
       

        subView.backgroundColor = .white
        subView.layer.cornerRadius = 15
        subView.layer.masksToBounds = true
       
        
        gradientLayer.colors = [UIColor.systemOrange.cgColor, UIColor.blue.cgColor]
        gradientLayer.frame = subView.bounds
        subView.layer.insertSublayer(gradientLayer, at: 0)
    }

    
    
    
    
    private func styleAndLayout() {
        
        view.addSubview(mainView)
        mainView.addSubview(subView)
        
        mainView.translatesAutoresizingMaskIntoConstraints = false
        subView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            mainView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            mainView.widthAnchor.constraint(equalToConstant: 100),
            mainView.heightAnchor.constraint(equalTo: mainView.widthAnchor),
            
            
            subView.topAnchor.constraint(equalTo: mainView.topAnchor),
            subView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor),
            subView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor),
            subView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor)
            
        ])
        
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        gradientLayer.frame = mainView.bounds
    }
}
