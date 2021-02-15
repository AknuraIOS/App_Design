//
//  MainTabBarController.swift
//  AppDesign
//
//  Created by Акнур on 1/17/21.
//  Copyright © 2021 Акнур. All rights reserved.
//
//
//import UIKit
//
//class MainTabBarController: UITabBarController, UITabBarControllerDelegate {
//    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
//        return true
//    }
//    let coustmeTabBarView:UIView = {
//        
//        //  daclare coustmeTabBarView as view
//        let view = UIView(frame: .zero)
//        
//        // to make the cornerRadius of coustmeTabBarView
//        view.backgroundColor = .white
//        view.layer.cornerRadius = 30
//        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
//        view.clipsToBounds = true
//        
//        // to make the shadow of coustmeTabBarView
//        view.layer.masksToBounds = false
//        view.layer.shadowColor = UIColor.black.cgColor
//        view.layer.shadowOffset = CGSize(width: 0, height: -8.0)
//        view.layer.shadowOpacity = 0.12
//        view.layer.shadowRadius = 10.0
//        return view
//    }()
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setupViewControllers()
//        modalPresentationStyle = .fullScreen
//
//        tabBar.tintColor = .cyan
//        addcoustmeTabBarView()
//        hideTabBarBorder()
//        
//        delegate = self
//    }
//    override func viewDidLayoutSubviews() {
//             super.viewDidLayoutSubviews()
//            coustmeTabBarView.frame = tabBar.frame
//         }
//       
//       override func viewDidAppear(_ animated: Bool) {
//           var newSafeArea = UIEdgeInsets()
//
//           // Adjust the safe area to the height of the bottom views.
//           newSafeArea.bottom += coustmeTabBarView.bounds.size.height
//
//           // Adjust the safe area insets of the
//           //  embedded child view controller.
//           self.children.forEach({$0.additionalSafeAreaInsets = newSafeArea})
//       }
//       private func addcoustmeTabBarView() {
//           //
//          coustmeTabBarView.frame = tabBar.frame
//           view.addSubview(coustmeTabBarView)
//           view.bringSubviewToFront(self.tabBar)
//       }
//       
//       
//       func hideTabBarBorder()  {
//           let tabBar = self.tabBar
//           tabBar.backgroundImage = UIImage.from(color: .clear)
//           tabBar.shadowImage = UIImage()
//           tabBar.clipsToBounds = true
//
//       }
//       func setupViewControllers() {
//       //        let first = AnimatingPageViewController()
//       //        first.tabBarItem.image = #imageLiteral(resourceName: "ShopIcon")
//       //        first.tabBarItem.title = "First"
//       //        let first = templateNavController(rootViewController: MainShopPageVC(), image: #imageLiteral(resourceName: "ShopIcon"), title: "Shop")
//               let item = templateNavController(rootViewController: HomeViewController(), image: #imageLiteral(resourceName: "home"), title: "Home")
//        let second = templateNavController(rootViewController: NewsViewController(), image: #imageLiteral(resourceName: "news"), title: "News")
////               let middle = templateNavController(rootViewController: PostViewController(), image: #imageLiteral(resourceName: "post"), title: "Post")
//               let third = templateNavController(rootViewController: HelpViewController(), image: #imageLiteral(resourceName: "help"), title: "Help")
//               let fourth = templateNavController(rootViewController: ProfileViewController(), image: #imageLiteral(resourceName: "profile"), title: "Profile")
//               
//               viewControllers = [item, second, middle, third, fourth]
//               
//           }
//
//       }
//
//       func templateNavController(rootViewController: UIViewController, image: UIImage, title: String) -> UINavigationController{
//           let navController = UINavigationController(rootViewController: rootViewController)
//           navController.tabBarItem.image = image
//           navController.tabBarItem.title = title
//           return navController
//       }
//
//       extension UIImage {
//           static func from(color: UIColor) -> UIImage {
//               let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
//               UIGraphicsBeginImageContext(rect.size)
//               let context = UIGraphicsGetCurrentContext()
//               context!.setFillColor(color.cgColor)
//               context!.fill(rect)
//               let img = UIGraphicsGetImageFromCurrentImageContext()
//               UIGraphicsEndImageContext()
//               return img!
//           }
//}
