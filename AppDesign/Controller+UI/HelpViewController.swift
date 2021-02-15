//
//  HelpViewController.swift
//  AppDesign
//
//  Created by Акнур on 1/17/21.
//  Copyright © 2021 Акнур. All rights reserved.
//

import UIKit
var values : [Results] = []
class HelpViewController: UIViewController {
  let nameLabell: UILabel = {
      let label = UILabel()
      
      label.font = UIFont.boldSystemFont(ofSize: 26)
      label.textAlignment = .center
      return label
  }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
       setupSubviews()
    }
//
//    @objc fileprivate func tothenextPage(){
//        let vc2 = ViewController()
//        self.navigationController?.pushViewController(vc2, animated: true)
//    }
    func setupSubviews(){
        view.addSubview(nameLabell)
        
        nameLabell.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 100, left: 15, bottom: 0, right: 15))
       }
    func generateCell(_ values: Results){
          nameLabell.text = values.title
      }

}
