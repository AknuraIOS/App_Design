//
//  HomeViewController.swift
//  AppDesign
//
//  Created by Акнур on 1/18/21.
//  Copyright © 2021 Акнур. All rights reserved.


import UIKit

    let imageView : UIImageView = {
        let img = UIImageView(image:#imageLiteral(resourceName: "Image").withRenderingMode(.alwaysOriginal))
        img.contentMode = .scaleAspectFit
        img.translatesAutoresizingMaskIntoConstraints = false
        img.layer.cornerRadius = img.frame.height/2
        return img
    }()
let nameLabel: UILabel = {
      let label = UILabel()
      label.text = "Arla for the health"
      label.font = UIFont.boldSystemFont(ofSize: 26)
      label.textAlignment = .center
      return label
  }()
let itemsSoldLabel: UILabel = {
       let label = UILabel()
       label.text = "Every day new products"
       label.textColor = .lightGray
       label.font = UIFont.systemFont(ofSize: 13)
       label.textAlignment = .center
       return label
   }()
//  let tableViewShop: UITableView = {
//        let tb = UITableView(frame: .zero, style: .grouped)
//        tb.isScrollEnabled = false
//        return tb
//    }()
let settingsTitles = ["Favorites","Payment Settings", "Parameters", "Business Information","Shipping Information"]

   let shopSettingsId = "shopSettingsId"
   
class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
       setupViews()
        navigationItem.title = "Settings"
//        setupNavigation()
    }
    func setupViews(){
        view.addSubview(imageView)
        imageView.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 100, left: 15, bottom: 0, right: 15), size: .init(width: 100, height: 80))
        view.addSubview(nameLabel)
        nameLabel.anchor(top: imageView.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 6, left: 0, bottom: 0, right: 0))
        view.addSubview(itemsSoldLabel)
        itemsSoldLabel.anchor(top: nameLabel.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 6, left: 0, bottom: 0, right: 0))
//        view.addSubview(tableViewShop)
//        tableViewShop.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor, padding: .init(top: 270, left: 0, bottom: 0, right: 0))
//        tableViewShop.delegate = self
//        tableViewShop.dataSource = self
//        tableViewShop.register(SettingsCell.self, forCellReuseIdentifier: shopSettingsId)
    }
//    func setupNavigation(){
//          navigationItem.title = "Settings"
//      }
   

}
