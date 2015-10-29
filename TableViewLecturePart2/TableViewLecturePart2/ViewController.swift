//
//  ViewController.swift
//  TableViewLecturePart2
//
//  Created by Heather Connery on 2015-10-29.
//  Copyright © 2015 HConnery. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    enum TableViewCellIdentifiers: String {
        case FirstCell = "Cell1"
        case SecondCell = "Cell2"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell()
        
        if indexPath.row % 2 == 0 {
            cell = tableView.dequeueReusableCellWithIdentifier(TableViewCellIdentifiers.FirstCell.rawValue, forIndexPath: indexPath)
        } else {
            cell = tableView.dequeueReusableCellWithIdentifier(TableViewCellIdentifiers.SecondCell.rawValue, forIndexPath: indexPath)
        }
        return cell
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    

}

