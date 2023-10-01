//
//  MainTabBarController.swift
//  PokemonApp
//
//  Created by Egor Dubovik on 30/09/2023.
//

import UIKit

final class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.updateAppearance()
    }
}

extension UITabBar {
    func updateAppearance() {}
}
