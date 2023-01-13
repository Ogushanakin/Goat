//
//  MainTabBarController.swift
//  Goat
//
//  Created by AKIN on 13.01.2023.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = UINavigationController(rootViewController: PicksController())
        let vc2 = UINavigationController(rootViewController: RecordViewController())
        let vc3 = UINavigationController(rootViewController: OffersViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "sparkle")
        vc2.tabBarItem.image = UIImage(systemName: "chart.bar.xaxis")
        vc3.tabBarItem.image = UIImage(systemName: "fibrechannel")
        
        vc1.title = "Picks"
        vc2.title = "Record"
        vc3.title = "Offers"
        
        navigationController?.navigationBar.isHidden = true
        
        setViewControllers([vc1, vc2, vc3], animated: true)
    }

}
