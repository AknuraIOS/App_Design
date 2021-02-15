//
//  SettingsCell.swift
//  AppDesign
//
//  Created by Акнур on 1/21/21.
//  Copyright © 2021 Акнур. All rights reserved.
//

import UIKit

class SettingsCell: UITableViewCell {

    let cellView: UIView = {
        let view = UIView()
        return view
    }()
        
    let titleLabel: UILabel = {
        let label = UILabel()
        return label
    }()
        
    override init(style: UITableViewCell.CellStyle = .default, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
        
    func setup(){
        addSubview(cellView)
        cellView.addSubview(titleLabel)
            
        
        cellView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 0, left: 8, bottom: 4, right: 8))
        titleLabel.anchor(top: nil, leading: cellView.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 0, left: 15, bottom: 0, right: 0), size: .init(width: 0, height: 40))
        titleLabel.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive = true
        }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
