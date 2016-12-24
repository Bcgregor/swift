//
//  SecondVC.swift
//  SubmitValue-Back
//
//  Created by 이재백 on 2016. 12. 17..
//  Copyright © 2016년 JaeBaek Lee. All rights reserved.
//

import UIKit

class FormViewController : UIViewController {
    
    @IBOutlet var email: UITextField!
    @IBOutlet var isUpdate: UISwitch!
    @IBOutlet var interval: UIStepper!
    @IBOutlet var isUpdateText: UILabel!
    @IBOutlet var intervalText: UILabel!
    
    @IBAction func onSwitch(_ sender: UISwitch) {
        if (sender.isOn == true) {
            self.isUpdateText.text = "갱신함"
        } else {
            self.isUpdateText.text = "갱신하지 않음"
        }
    }
    
    @IBAction func onStepper(_ sender: UIStepper) {
        let value = Int(sender.value)
        self.intervalText.text = "\(value)분 마다"
    }
    
    
    @IBAction func obSubmit(_ sender: Any) {
        /*
        let preVC = self.presentingViewController
        // 리턴 타입은 UIViewController 이지만 실제로는 ViewController, 따라서 다운 캐스팅해서 사용하면 된다.
        guard let vc = preVC as? ViewController else {
            return
        }
        
        vc.paramEmail = self.email.text
        vc.paramUpdate = self.isUpdate.isOn
        vc.paramInterval = self.interval.value
        */
        
        
        
        /*
        // AppDelegate 객체의 인스턴스를 가져온다
        let ad = UIApplication.shared.delegate as? AppDelegate
        // AppDelegate는 앱 전체르 통틀어 하나의 인스턴스만 존재하도록. iOS 시스템에 의해
        
        ad?.paramEmail = self.email.text
        ad?.paramUpdate = self.isUpdate.isOn
        ad?.paramInterval = self.interval.value
        
        self.presentingViewController?.dismiss(animated: true)
        */
        
        // UserDefaults 객체의 인스턴스를 가져온다
        let ud = UserDefaults.standard
        
        // 값을 저장한다
        ud.set(self.email.text, forKey: "email")
        ud.set(self.isUpdate.isOn, forKey: "isUpdate")
        ud.set(self.interval.value, forKey: "interval")
        
        // 이전 화면으로 복귀한다
        self.presentingViewController?.dismiss(animated: true)
    }
    
    
}
