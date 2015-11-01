//
//  ViewController.swift
//  TableViewExploration
//
//  Created by Heather Connery on 2015-11-01.
//  Copyright © 2015 HConnery. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    enum TableViewCellIdentifiers: String {
        case FirstCell = "Cell1"
        case SecondCell = "Cell2"
    }
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        //Because UITableView is ! can access it without if let BUT - if nil, it won't build
        //tableView.reloadData()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //If we want the hieghts of the cells to be different at run time:
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        //default height of 44, but if it is an even cell it is 66
        var height: CGFloat = 44
        if indexPath.row % 2 == 0 {
            height = 66
        }
        return height
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let appDelegate = UIApplication.sharedApplication().delegate as? AppDelegate {
            //count number of models we have created in AppDelegate and * 2 b/c we have 2 cell types
             return appDelegate.cell1ModelController.modelCache.count * 2
        }
        return 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //Usually people will create a function within this one that styles the cell - factory class???
        
        //we use our enum to access the string type cell identifiers => we need the enum's raw value:
        var cell = UITableViewCell()
        
        if indexPath.row % 2 == 0 {
            cell = tableView.dequeueReusableCellWithIdentifier(TableViewCellIdentifiers.FirstCell.rawValue, forIndexPath: indexPath)
            //temporary cast to subclass to access other properties
            if let cellSubclass = cell as? Cell1TableViewCell {
                
//                cellSubclass.cellSubtitle.text = "You really aught to love this"
//                cellSubclass.cellTitle.text = "Isn't this great?"
                if let appDelegate = UIApplication.sharedApplication().delegate as? AppDelegate {
                    let index = indexPath.row / 2
                    cellSubclass.cellTitle.text = appDelegate.cell1ModelController.modelCache[index].title
                    cellSubclass.cellSubtitle.text = appDelegate.cell1ModelController.modelCache[index].subTitle
                }
                
            }
            
        } else {
            cell = tableView.dequeueReusableCellWithIdentifier(TableViewCellIdentifiers.SecondCell.rawValue, forIndexPath: indexPath)
        }
        return cell
    }
    
    //passing info
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == TableViewCellIdentifiers.FirstCell.rawValue {
//           //This implimentation doesn't work b/c cellTitle and detailViewTitle havent been set yet. 
//            if let detailViewController = segue.destinationViewController as? Cell1DetailViewController {
//                detailViewController.cellTitle.text = "This is super great"
//            }
//            
//        } else if segue.identifier == TableViewCellIdentifiers.SecondCell.rawValue {
//            
//            if let detailViewController = segue.destinationViewController as? Cell2DetailViewController {
//                detailViewController.detailViewTitle.text = "This is also super great"
//            }
            //Instead we use an intermediary var that is initialized outside of the detailViewControllers viewDidLoad method:
            //This implimentation doesn't work b/c cellTitle and detailViewTitle havent been set yet.
            if let detailViewController = segue.destinationViewController as? Cell1DetailViewController {
                detailViewController.titleString = "This is super great"
            }
            
        } else if segue.identifier == TableViewCellIdentifiers.SecondCell.rawValue {
            
            if let detailViewController = segue.destinationViewController as? Cell2DetailViewController {
                detailViewController.titleString = "This is also super great"
            }

        }
    }


}

