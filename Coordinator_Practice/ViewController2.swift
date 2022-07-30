//
//  ViewController2.swift
//  Coordinator_Practice
//
//  Created by 임지성 on 2022/07/29.
//

import UIKit

final class ViewController2: UIViewController {
    weak var coordinator: VC2Coordinator?

    deinit {
        coordinator?.popVC2()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}
