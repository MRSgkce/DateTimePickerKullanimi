//
//  ViewController.swift
//  DateTimePickerKullanimi
//
//  Created by Mürşide Gökçe on 9.10.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tarih: UITextField!
    @IBOutlet weak var saat: UITextField!
    
    var datePicker : UIDatePicker!
    var timePicker : UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        datePicker=UIDatePicker()
        datePicker.datePickerMode = .date
        tarih.inputView=datePicker
        
        timePicker=UIDatePicker()
        timePicker.datePickerMode = .time
        saat.inputView=timePicker
    }


}

