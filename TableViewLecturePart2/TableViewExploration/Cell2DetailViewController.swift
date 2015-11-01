//
//  Cell2DetailViewController.swift
//  TableViewExploration
//
//  Created by Heather Connery on 2015-11-01.
//  Copyright © 2015 HConnery. All rights reserved.
//

import UIKit

class Cell2DetailViewController: UIViewController {
    
    
    @IBOutlet weak var detailViewTitle: UILabel!
    //We declare this var here so that we have access to it in prepareForSeque b/c this is initialized before prepareForSeque. The viewDidLoad method here has not finished yet during prepareForSeque
    //The viewController is instantiated right away, but the viewDidLoad method isn't called until something calls it (seque)
    var titleString: String?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let actualTitleString = titleString {
            detailViewTitle.text = actualTitleString
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
