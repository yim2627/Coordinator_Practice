//
//  AppCoordinator.swift
//  Coordinator_Practice
//
//  Created by 임지성 on 2022/07/30.
//

import UIKit

final class AppCoordinator: Coordinator {
    var navigationController: UINavigationController
    var childCoordinators: [Coordinator] = []
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        pushViewController1()
    }
    
    func pushViewController1() {
        let vc1Coordinator = VC1Coordinator(
//            parentCoordinator: self,
            navigationController: navigationController
        )
        childCoordinators.append(vc1Coordinator)
        vc1Coordinator.start()
    }
}
