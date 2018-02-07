//
//  ViewController.swift
//  xcodetableview
//
//  Created by Nosferatu on 17/1/18.
//  Copyright © 2018 luissancar. All rights reserved.
//   6

import UIKit

class ViewController: UIViewController,UITableViewDataSource {

    let data:[[String]] = [["cell a","cell b","cell c"],
                           ["cell 1","cell 2","cell 3"]]
    let subt:[[String]] = [["sub a","sub b","sub c"],
                           ["sub 1","sub 2","sub 3"]]
    let headers:[String] = ["Letras", "Números"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // DispatchQueue.main.async {self.aa() }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCellTableViewCell //indexPath i minúscula
        cell.label.text = data[indexPath.section][indexPath.row]
       // cell.detailTextLabel?.text = subt[indexPath.section][indexPath.row]
        if (indexPath.row == 0) {
            cell.imageView?.image = UIImage(named: "uno")
        }
        if (indexPath.row == 1) {
            cell.imageView?.image = UIImage(named: "dos")
        }
        if (indexPath.row == 2) {
            cell.imageView?.image = UIImage(named: "tres")
        }
        
        return cell
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return headers[section]
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func  aa(){
        return
    }


}

