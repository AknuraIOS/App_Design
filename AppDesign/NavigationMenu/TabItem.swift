////
////  TabItem.swift
////  AppDesign
////
////  Created by Акнур on 1/22/21.
////  Copyright © 2021 Акнур. All rights reserved.
////
//
//import Foundation
//import UIKit
//
//enum TabItem: String, CaseIterable {
//    case home = "home"
//    case calender = "calender"
//    case friends = "friends"
//    case profile = "profile"
//    
//    
//    var viewController: UIViewController {
//        switch self {
//        case .home:
//            return ProfileViewController()
//        case .calender:
//            return HelpViewController()
//        case .friends:
//            return ViewController()
//        case .profile:
//            return NewsViewController()
//        }
//    }
//    
//    var icon: UIImage? {
//        switch self {
//        case .home:
//            return UIImage(named: "image-8")!
//        case .calender:
//            return UIImage(named: "image-6")!
//        case .friends:
//            return UIImage(named: "image-7")!
//        case .profile:
//            return UIImage(named: "image-5")!
//        }
//    }
//    
//    var displayTitle: String {
//        return self.rawValue.capitalized(with: nil)
//    }
//}
