//
//  ViewController.swift
//  TableViewSwift
//
//  Created by Rama kuppa on 12/04/17.
//  Copyright © 2017 sample. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {

    
    var names : [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        names = ["asfdsfwqre","e56etewtrew","rtewyewyuewrwtrwe","oeurieortuoewt","ejrtoewuotruewtiu"]
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return names.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "CellIdentifer")
        
        if cell == nil {
            
            cell = UITableViewCell(style: .default, reuseIdentifier: "CellIdentifer")
        }
        
        
        
        
        let value = names[indexPath.row]
        
        cell?.textLabel?.text = value
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        
        return 100;
    }

    

    
    
}

