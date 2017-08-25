//
//  ViewController.swift
//  MiraclePills
//
//  Created by BhupinderJit Bais on 2017-07-28.
//  Copyright © 2017 BhupinderJit Bais. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var countryTf: UITextField!
    @IBOutlet weak var zipcodeLbl: UILabel!
    @IBOutlet weak var zipcodeTf: UITextField!
    
    @IBOutlet weak var buynowBtn: UIButton!
    
    @IBOutlet weak var successImage: UIImageView!
    
    let states = ["Ontario","Alberta", "B.C.","Quebec","Saskatchwan","Yukon"]
    
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

    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        countryLbl.isHidden = true
        countryTf.isHidden = true
        zipcodeLbl.isHidden = true
        zipcodeTf.isHidden = true
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLbl.isHidden = false
        countryTf.isHidden = false
        zipcodeLbl.isHidden = false
        zipcodeTf.isHidden = false
    }
    
    
    @IBAction func buynowBtnPressed(_ sender: Any) {
        for view in self.view.subviews as [UIView]
        {
            view.isHidden = true
        }
     successImage.isHidden = false
 }
}

