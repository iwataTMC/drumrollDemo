//
//  ViewController.swift
//  drumrollDemo
//
//  Created by kai on 2021/12/17.
//
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var drumrollPicker: UIPickerView!
    
    
    let datalist: [String] = ["2"]
//    let datalist: [String] = ["1", "2", "3", "4", "5", "6", "7", "8"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // ピッカー設定
        drumrollPicker.delegate = self
        drumrollPicker.dataSource = self
        

        // デフォルト設定
        drumrollPicker.selectRow(0, inComponent: 0, animated: false)
        
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return datalist.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return datalist[row]
    }

    
}

