//
//  InfoSubViewController.swift
//  FlashKarte
//
//  Created by Jurgen Geitner on 2016/06/30.
//  Copyright © 2016 Jurgen Geitner. All rights reserved.
//

import UIKit

class InfoSubViewController: UIViewController {

    @IBOutlet weak var InfoSubViewTextView: UITextView!
    
    var blogName = String()
    
    override func viewWillAppear(animated: Bool) {
        InfoSubViewTextView.text = blogName
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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