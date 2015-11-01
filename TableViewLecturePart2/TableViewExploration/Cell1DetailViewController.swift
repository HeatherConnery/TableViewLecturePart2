//
//  Cell1DetailViewController.swift
//  TableViewExploration
//
//  Created by Heather Connery on 2015-11-01.
//  Copyright © 2015 HConnery. All rights reserved.
//

import UIKit

class Cell1DetailViewController: UIViewController {
    
    
    @IBOutlet weak var cellTitle: UILabel!
    
    var titleString: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let actualTitleString = titleString {
            cellTitle.text = actualTitleString
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
