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
        
        let dokundu = UITapGestureRecognizer(target: self, action: #selector(dokunmaAlgilamaMetod))
        view.addGestureRecognizer(dokundu)
        
        
        datePicker?.addTarget(self, action: #selector(tarihGoster(uiDatePicker:)), for: .valueChanged)
        
        timePicker?.addTarget(self, action: #selector(saatGoster(uiDatePicker:)), for: .valueChanged)
        
        if #available(iOS 13.4, *) {
            //daha çok kullanılan style
            datePicker.preferredDatePickerStyle = .wheels
            timePicker.preferredDatePickerStyle = .wheels
        }
    }
    //boş ekrana dokununca datrih ve saatin kapanması
    @objc func dokunmaAlgilamaMetod(){
        print("ekrana dokunuldu.")
        
        //sayfa üzerinden açılan herşeyi kapatır.
        view.endEditing(true)
        
        
    }
    
    @objc func tarihGoster(uiDatePicker:UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy"
        let tarihi = dateFormatter.string(from: uiDatePicker.date)
        tarih.text = tarihi
        
    }
    
    @objc func saatGoster(uiDatePicker:UIDatePicker){
        let Formatter = DateFormatter()
        Formatter.dateFormat = "HH:mm"
        let text = Formatter.string(from: uiDatePicker.date)
        saat.text = text
        
    }


}

