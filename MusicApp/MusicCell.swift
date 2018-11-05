//
//  MusicCell.swift
//  MusicApp
//
//  Created by Admin on 06.11.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation
import UIKit

class MusicCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!

    func updateWithModel(_ viewModel: MusicViewModel) {
        titleLabel.text = viewModel.title
    }
}
