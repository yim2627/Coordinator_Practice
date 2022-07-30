//
//  VC2Coordinator.swift
//  Coordinator_Practice
//
//  Created by 임지성 on 2022/07/30.
//

import UIKit

final class VC2Coordinator: Coordinator {
    private weak var parentCoordinator: Coordinator?
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(
        parentCoordinator: Coordinator,
        navigationController: UINavigationController
    ) {
        self.parentCoordinator = parentCoordinator
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController2()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }

    func popVC2() {
        parentCoordinator?.removeChildCoordinator(self)
    }
}
