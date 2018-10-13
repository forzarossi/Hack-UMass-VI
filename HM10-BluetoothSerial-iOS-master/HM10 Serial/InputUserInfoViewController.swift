//
//  InputUserInfoViewController.swift
//  FlexCore
//
//  Created by Anthony Lee on 10/13/18.
//  Copyright © 2018 anthony. All rights reserved.
//

import UIKit

class InputUserInfoViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var confirmButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func confirmed(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "BluetoothConnectNavigation")
        present(vc!, animated: true,completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
