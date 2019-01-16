//
//  ViewController.swift
//  Twittermenti
//
//  Created by Angela Yu on 17/07/2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import UIKit
import SwifteriOS

class ViewController: UIViewController {
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var sentimentLabel: UILabel!
    
    let swifter = Swifter(consumerKey: "CYixxCxnAR0N3uB4GUqkk1r4r", consumerSecret: "FoZFYvkHIiLnCVhMBT10oO8byRAKgnsvTzTZeoPhRe9dnZRdk0")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        swifter.searchTweet(using: "@Apple", success: { (results, metadata) in
            print(results)
        }) { (error) in
            print("There was an error with Twitter API request, \(error)")
        }
    }

    @IBAction func predictPressed(_ sender: Any) {
    
    }
    
    
    
}

