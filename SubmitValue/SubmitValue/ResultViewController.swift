//
//  ResultViewController.swift
//  SubmitValue
//
//  Created by 이재백 on 2016. 12. 14..
//  Copyright © 2016년 JaeBaek Lee. All rights reserved.
//

import UIKit

class ResultViewController : UIViewController {
    
    @IBOutlet var resultEmail: UILabel!
    
    @IBOutlet var resultUpdate: UILabel!
    
    @IBOutlet var resultInterval: UILabel!
    
    // 아울렛 변수에 값을 바로 대입할 수 없다.
    // 외부 객체에서 직접 참조할 수 없도록 제한되어 있다.
    // 따라서 이전 뷰 컨트롤러에서 변수를 받아오기 위한 변수를 따로 선언해야 한다.
    var paramEmail: String = ""
    
    var paramUpdate: Bool = false
    
    var paramInterval: Double = 0
    
    
    override func viewDidLoad() {
        self.resultEmail.text = paramEmail
        self.resultUpdate.text = (self.paramUpdate == true ? "자동갱신" : "자동갱신 안함")
        self.resultInterval.text = "\(Int(paramInterval))분 마다 갱신"
    }
    
    @IBAction func onBack(_ sender: Any) {
         self.presentingViewController?.dismiss(animated: true)
        // self.navigationController?.popViewController(animated: true)
    }
    
}
