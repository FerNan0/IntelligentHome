//
//  MainViewController.swift
//  IntelligentHome
//
//  Created by Fernando F Duarte on 10/10/18.
//  Copyright © 2018 Fernando F Duarte. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var tbvMenu: UITableView!
    var array: Array<String> = ["Quarto 1","Quarto 2","Cozinha","Sala","Banheiro","Garagem"]
    
    override func viewDidLoad() {
        tbvMenu.dataSource = self
        tbvMenu.delegate = self
        tbvMenu.tableFooterView = UIView()
    }
}

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CustomCell
        cell.configuraCell(text: array[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "segue_comodo", sender: nil)
    }
    
}
