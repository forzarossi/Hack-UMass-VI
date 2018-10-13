//
//  StatisticsViewController.swift
//  Serial
//
//  Created by Anthony Lee on 10/13/18.
//  Copyright © 2018 Balancing Rock. All rights reserved.
//

import UIKit

class StatisticsViewController: UIViewController {
    @IBOutlet weak var beginButton: UIButton!
    
    
    @IBOutlet weak var titleLabel: UILabel!
    var titleString:String?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        titleLabel.text = titleString
        beginButton.layer.cornerRadius = 5
        beginButton.clipsToBounds = true
    }
    
    @IBAction func begin(_ sender: Any) {
        
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ExerciseViewController
        vc.titleString = self.titleString
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
 

}
