//
//  FirstViewController.swift
//  Todo App Tutorial
//
//  Created by Waheduzzaman on Aug/21/17.
//  Copyright © 2017 Waheduzzaman. All rights reserved.
//

import UIKit

var rowList = ["riashad","wahed","etc"];

class FirstViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    

    @IBOutlet weak var mTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //we must say: how to handle each cell /define and return each cell
    // return the row number it should work on

    
    //returns the cell number..
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowList.count;
    }
    
    //returns the cell to the table view for each row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: UITableViewCellStyle.default,reuseIdentifier: "myCell");
        cell.textLabel?.text = rowList[indexPath.row];
        return cell;
    }
    
    //delegate to use swipe guester
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if(editingStyle == UITableViewCellEditingStyle.delete){
            rowList.remove(at: indexPath.row);
            mTableView.reloadData();
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
         mTableView.reloadData();
    }

}

