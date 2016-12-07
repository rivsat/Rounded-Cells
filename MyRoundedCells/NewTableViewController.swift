//
//  NewTableViewController.swift
//  MyRoundedCells
//
//  Created by Tasvir H Rohila on 13/08/16.
//  Copyright © 2016 Tasvir H Rohila. All rights reserved.
//
import UIKit

let BlackColor = UIColor.blackColor()
let GrayColor = UIColor.grayColor()
private let CORNER_RADIUS: CGFloat = 10

private let SHADOW_OPACITY: Float = 0.5
private let SHADOW_OFFSET: CGSize = CGSize(width: 0, height: 3)
private let SHADOW_RADIUS: CGFloat = 3


class NewTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var theTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        theTableView.delegate = self
        theTableView.dataSource = self
        theTableView.reloadData()
        self.view.backgroundColor =  BlackColor
        self.theTableView.backgroundColor = GrayColor
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
        //let cell =  UITableViewCell(style: .Subtitle, reuseIdentifier: "CellId")
        let cell = tableView.dequeueReusableCellWithIdentifier("cellId") as! MyRoundedCell
        
        cell.thetitle?.text = "Title \(indexPath.row)"
        cell.theSubTitle?.text = "Subtitle \(indexPath.row)"
        
        cell.thetitle?.textColor = UIColor.whiteColor()
        cell.theSubTitle?.textColor = UIColor.whiteColor()
        
        cell.backgroundColor = GrayColor
        
        //Top View
        cell.mainBackground.layer.cornerRadius = CORNER_RADIUS
        cell.mainBackground.layer.shadowOpacity = SHADOW_OPACITY
        cell.mainBackground.layer.shadowOffset = SHADOW_OFFSET
        cell.mainBackground.layer.shadowRadius = SHADOW_RADIUS
        cell.mainBackground.backgroundColor = BlackColor

//        cell.mainBackground.layer.borderWidth = 5
//        cell.mainBackground.layer.borderColor = GrayColor.CGColor

        //Bottom View
        cell.shadowLayer.clipsToBounds = false
//        cell.shadowLayer.layer.cornerRadius = CORNER_RADIUS
//        cell.shadowLayer.layer.shadowOpacity = SHADOW_OPACITY
//        cell.shadowLayer.layer.shadowOffset = SHADOW_OFFSET
//        cell.shadowLayer.layer.shadowRadius = SHADOW_RADIUS
        cell.shadowLayer.backgroundColor = GrayColor
        
//        cell.shadowLayer.layer.masksToBounds = false
//        cell.shadowLayer.layer.shadowOffset = CGSizeMake(0, 4)
//        cell.shadowLayer.layer.shadowColor = GrayColor.CGColor
//        cell.shadowLayer.layer.shadowOpacity = 0.23
//        cell.shadowLayer.layer.shadowRadius = 4
        
//        cell.contentView.layer.borderColor = GrayColor.CGColor

        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
}

class MyRoundedCell: UITableViewCell {
    @IBOutlet weak var shadowLayer: UIView! //bottom
    @IBOutlet weak var mainBackground: UIView!
    @IBOutlet weak var thetitle: UILabel!
    @IBOutlet weak var theSubTitle: UILabel! //topmost
}

