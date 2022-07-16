//
//  VerificationVC.swift
//  Tygo
//
//  Created by Azzam AL-Rashed on 13/12/1443 AH.
//

import UIKit

class VerificationVC: UIViewController {

    @IBOutlet weak var codeTF: PinCodeTextField!
    @IBOutlet weak var timerLabel: UILabel!
    var timer = Timer()
    var secondsCounter = 120
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        codeTF.keyboardType = UIKeyboardType.numberPad
        
        self.view.bindToKeyBoard()
        self.hideKeyboardWhenTappedAround()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimerLabel), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimerLabel() {
        secondsCounter -= 1
        var timerString = ""
        timerString += String(format: "%02i", secondsCounter / 60)
        timerString += ":"
        timerString += String(format: "%02i", secondsCounter % 60)
        timerLabel.text = timerString
    }
    

}
