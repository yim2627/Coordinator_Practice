//
//  VC1Coordinator.swift
//  Coordinator_Practice
//
//  Created by 임지성 on 2022/07/30.
//

import UIKit

final class VC1Coordinator: Coordinator {
//    private weak var parentCoordinator: Coordinator?
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(
//        parentCoordinator: Coordinator?,
        navigationController: UINavigationController
    ) {
//        self.parentCoordinator = parentCoordinator
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController1()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func pushVC2() {
        let vc2Coordinator = VC2Coordinator(
            parentCoordinator: self,
            navigationController: navigationController
        )
        
        childCoordinators.append(vc2Coordinator)
        vc2Coordinator.start()
    }
}
