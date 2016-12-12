//
//  ViewController.swift
//  MiraclePills
//
//  Created by Ratchsit.Amo on 12/11/2559 BE.
//  Copyright © 2559 HFLandNSea. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    
    
    @IBOutlet weak var stateBtn: UIButton!
    
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var countryLabel: UILabel!
    
    @IBOutlet weak var countryField: UITextField!
    
    @IBOutlet weak var zipCodeLabel: UILabel!
    
    @IBOutlet weak var zipCodeField: UITextField!
    
    @IBOutlet weak var buyBtn: UIButton!
    
    @IBOutlet weak var successImg: UIImageView!
    
    let states = ["BKK", "LA", "MHS", "CHA", "CHR", "PTT"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        countryField.isHidden = true
        zipCodeLabel.isHidden = true
        zipCodeField.isHidden = true
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        stateBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryField.isHidden = false
        zipCodeLabel.isHidden = false
        zipCodeField.isHidden = false
    }
    
    @IBAction func buyBtnPressed(_ sender: Any) {
        for view in self.view.subviews{
            view.isHidden = true
        }
        successImg.isHidden = false
    }
    
    

}

