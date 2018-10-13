//
//  ExerciseViewController.swift
//  Serial
//
//  Created by Anthony Lee on 10/13/18.
//  Copyright © 2018 Balancing Rock. All rights reserved.
//

import UIKit

class ExerciseViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func finish(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
