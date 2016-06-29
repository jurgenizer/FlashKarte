//
//  InfoViewController.swift
//  FlashKarte
//
//  Created by Jurgen Geitner on 2016/06/28.
//  Copyright © 2016 Jurgen Geitner. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController, UITableViewDelegate {
    
    //array for cell content
    var cellContent = ["Jurgen", "Natalie"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
         return cellContent.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "myCell")
        
        cell.textLabel?.text = cellContent[indexPath.row]
        
        return cell
        
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
