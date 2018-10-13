//
//  ViewController.swift
//  FlexCore
//
//  Created by Anthony Lee on 10/12/18.
//  Copyright © 2018 anthony. All rights reserved.
//

import UIKit
import CoreBluetooth

class ActivitiesViewController: UIViewController {
    @IBOutlet weak var headerTextView: UITextView!
    

    @IBOutlet weak var activitiesCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        serial.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ActivitiesViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ActivitiesCollectionViewCell", for: indexPath) as! ActivitiesCollectionViewCell
        cell.layer.cornerRadius = 30
        return cell
    }
}

extension ActivitiesViewController: BluetoothSerialDelegate{
    func serialDidChangeState() {
        
    }
    
    func serialDidDisconnect(_ peripheral: CBPeripheral, error: NSError?) {
        
    }
    
    func serialDidReceiveString(_ message: String) {
        headerTextView.text = headerTextView.text + message
    }
}
