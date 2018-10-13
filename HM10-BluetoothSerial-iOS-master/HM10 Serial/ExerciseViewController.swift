//
//  ExerciseViewController.swift
//  Serial
//
//  Created by Anthony Lee on 10/13/18.
//  Copyright © 2018 Balancing Rock. All rights reserved.
//

import UIKit
import CoreBluetooth

class ExerciseViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var titleLabel:UILabel!
    @IBOutlet weak var timerLabel:UILabel!
    var titleString:String?
    
    var seconds = 0
    var timer = Timer()
    var isTimerRunning = false
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        runtimer()
        titleLabel.text = titleString
        
        //Set timer
    }
    func runtimer(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ExerciseViewController.updateTimer)), userInfo: nil, repeats: true)
    }
    
    func updateTimer() {
        seconds += 1     //This will decrement(count down)the seconds.
        timerLabel.text = timeString(time: TimeInterval(seconds))
        //This will update the label.
    }
    
    func timeString(time:TimeInterval) -> String {
        let hours = Int(time) / 3600
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format:"%02i:%02i:%02i", hours, minutes, seconds)
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

extension ExerciseViewController:BluetoothSerialDelegate{
    func serialDidChangeState() {
        
    }
    
    func serialDidDisconnect(_ peripheral: CBPeripheral, error: NSError?) {
        
    }
    
    func serialDidReceiveString(_ message: String) {
        
    }
    
    
}
