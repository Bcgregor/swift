//
//  ViewController.swift
//  Scene-ManualSegue
//
//  Created by 이재백 on 2016. 12. 13..
//  Copyright © 2016년 JaeBaek Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func wind(_ sender: Any) {
        
        // 매뉴얼 세그웨이 (뷰 컨트롤러 - 뷰 컨트롤러)
        // 실행 코드 작성
        self.performSegue(withIdentifier: "ManualWind", sender: self)
    }

}

