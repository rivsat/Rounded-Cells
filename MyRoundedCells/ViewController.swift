//
//  ViewController.swift
//  MyRoundedCells
//
//  Created by Tasvir H Rohila on 13/08/16.
//  Copyright © 2016 Tasvir H Rohila. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var theTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        theTableView.delegate = self
        theTableView.dataSource = self
        theTableView.reloadData()
        self.view.backgroundColor =  UIColor.blackColor()
        self.theTableView.backgroundColor = UIColor.grayColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell =  UITableViewCell(style: .Subtitle, reuseIdentifier: "CellId")
        
        cell.textLabel?.text = "Title \(indexPath.row)"
        cell.detailTextLabel?.text = "Subtitle \(indexPath.row)"
        
        cell.textLabel?.textColor = UIColor.whiteColor()
        cell.detailTextLabel?.textColor = UIColor.whiteColor()
        
        cell.backgroundColor = UIColor.blackColor()
        
        cell.layer.cornerRadius = 12
        cell.layer.masksToBounds = false
        
        cell.layer.borderColor = UIColor.grayColor().CGColor
        cell.layer.borderWidth = 5

//        cell.contentView.layer.cornerRadius = 12
//        cell.contentView.layer.masksToBounds = true
        
        return cell
    }

}

