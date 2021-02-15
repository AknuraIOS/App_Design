////
////  S.swift
////  AppDesign
////
////  Created by Акнур on 1/21/21.
////  Copyright © 2021 Акнур. All rights reserved.
////
//
//import UIKit
//
//extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 
//    }
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        
//        return settingsTitles.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        
//        
//        let cell = tableView.dequeueReusableCell(withIdentifier: shopSettingsId, for: indexPath) as! SettingsCell
//        cell.titleLabel.text = settingsTitles[indexPath.item]
//        
//        return cell
//    }
//    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//            let vc = ProfileViewController()
//            self.navigationController?.pushViewController(vc, animated: true)
//    }
//}
