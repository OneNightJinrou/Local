//
//  RoleSettingCustomTableViewCell.swift
//  APP
//
//  Created by 西尾俊輝 on 2018/06/25.
//  Copyright © 2018年 myname. All rights reserved.
//

import UIKit

class RoleSettingCustomTableViewCell: UITableViewCell {

    @IBOutlet weak var roleImageView: UIImageView!
    @IBOutlet weak var roleNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
