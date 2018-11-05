//
//  ViewController.swift
//  MusicApp
//
//  Created by Admin on 06.11.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "MusicCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "MusicCell")
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MusicCell", for: indexPath) as? MusicCell else { fatalError() }
        cell.updateWithModel(MusicViewModel(title: String(indexPath.row)))
        return cell
    }
    
}

