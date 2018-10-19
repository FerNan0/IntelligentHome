//
//  CustomCell.swift
//  IntelligentHome
//
//  Created by Fernando F Duarte on 10/10/18.
//  Copyright © 2018 Fernando F Duarte. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var lblTitle: UILabel!
    
    func configuraCell(text: String) {
        lblTitle.text = text
    }
}
