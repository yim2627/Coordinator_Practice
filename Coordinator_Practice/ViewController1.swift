//
//  ViewController.swift
//  Coordinator_Practice
//
//  Created by 임지성 on 2022/07/29.
//

import UIKit

final class ViewController1: UIViewController {
    weak var coordinator: VC1Coordinator?
    
    private lazy var pushVC2Button: UIButton = {
        let button = UIButton()
        button.setTitle("PushVC2", for: .normal)
        button.setTitleColor(UIColor.green, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(didTapPushVC2Button), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        view.addSubview(pushVC2Button)
        NSLayoutConstraint.activate([
            pushVC2Button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            pushVC2Button.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 100),
            pushVC2Button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -100)
        ])
    }
    
    @objc private func didTapPushVC2Button() {
        coordinator?.pushVC2()
    }
}

