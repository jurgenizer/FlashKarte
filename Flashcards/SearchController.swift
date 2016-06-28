//
//  SearchController.swift
//  FlashKarte
//
//  Created by Jurgen Geitner on 2016/01/23.
//

/*
 
 This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
 4.0 International License, by Yong Bakos and Jurgen Geitner.
 
 */

import UIKit

class SearchController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    var flashcard: Flashcard?
    let baseSearchURL = "https://google.com/search?q=apple developer"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let card = flashcard,
            escapedURLString = searchURLString(baseSearchURL, term: card.term),
            url = NSURL(string: escapedURLString) {
                webView.loadRequest(NSURLRequest(URL: url))
        }
    }
    
    private func searchURLString(base: String, term: String) -> String? {
        return "\(baseSearchURL) \(term)"
            .stringByAddingPercentEncodingWithAllowedCharacters(.URLQueryAllowedCharacterSet())
    }

}
