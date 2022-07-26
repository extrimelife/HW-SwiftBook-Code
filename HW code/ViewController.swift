//
//  ViewController.swift
//  HW code
//
//  Created by roman Khilchenko on 26.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray3
        setupLayout()
    }
    
    private let firstView: UIView = {
        let viewFirst = UIView()
        viewFirst.translatesAutoresizingMaskIntoConstraints = false
        viewFirst.backgroundColor = .red
        return viewFirst
    }()
    
    private let secondView: UIView = {
        let viewSecond = UIView()
        viewSecond.translatesAutoresizingMaskIntoConstraints = false
        viewSecond.backgroundColor = .black
        return viewSecond
    }()
    
    private func setupLayout() {
        [firstView, secondView].forEach { view.addSubview($0)  }
        
        NSLayoutConstraint.activate([
            
            //MARK: Констрейнты для firsView
            firstView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            firstView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            firstView.bottomAnchor.constraint(equalTo: secondView.topAnchor, constant: -16),
            firstView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
           
            
            //MARK: Констрейнты для secondView
            secondView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            secondView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            secondView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            secondView.heightAnchor.constraint(equalTo: firstView.heightAnchor)
            
            
        ])
    }
    
}

