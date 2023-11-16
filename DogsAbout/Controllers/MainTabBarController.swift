//
//  ViewController.swift
//  DogsAbout
//
//  Created by Diyorbek Xikmatullayev on 14/10/23.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        
        generateTabBar()
        setTabBarAppearance()

    }
    
    private func generateTabBar() {
        viewControllers = [
            generateVC(viewController: DogsViewController(), title: "Dog", image: UIImage(named: "dog")),
            generateVC(viewController: QuizViewController(), title: "Quiz", image: UIImage(named: "brain")),
            generateVC(viewController: AboutViewController(), title: "About", image: UIImage(named: "about")),
           
        ]
    }
    
    private func generateVC(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        
        return viewController
    }
    
    private func setTabBarAppearance() {
        let positionOnY: CGFloat = 10
        let width = tabBar.bounds.width
        let height = tabBar.bounds.height + positionOnY*2
        
        let roundLayer = CAShapeLayer()
        
        let bezierPath = UIBezierPath( roundedRect: CGRect(x: 0,
                                                           y: tabBar.bounds.minY - positionOnY, width: width,
                                                           height: height + 25),
                                       cornerRadius: height/3)
        
        roundLayer.path = bezierPath.cgPath
        
        tabBar.layer.insertSublayer(roundLayer, at: 0)
        
        tabBar.itemWidth = width/5
        tabBar.itemPositioning = .fill
        
        roundLayer.fillColor = UIColor.mainWhite.cgColor
        
        tabBar.tintColor = .taBarItemAccent
        tabBar.unselectedItemTintColor = .tabBaritemLight
        
    }

}

extension MainTabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        return true
    }
}
