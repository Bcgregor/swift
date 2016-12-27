//
//  ViewController.swift
//  Msg-AlertController
//
//  Created by 이재백 on 2016. 12. 24..
//  Copyright © 2016년 JaeBaek Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // 뷰가 완전히 화면에 표현되고 난 다음에 호출!
    // 창이 뜨자마자 메시지 창을 띄우고 싶을 경우에
    // viewDidLoad가 아니라 viewDidApper에다 작성
    /*
    override func viewDidApper(_ animated: Bool) {
        super.viewDidAppear()
        // let alert = UIAlertController
    }
    */

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var result: UILabel!

    // 알림창 실행 메소드
    @IBAction func alert(_ sender: Any) {
        
        // 컨트롤러 초기화
        let alert = UIAlertController(title:"선택", message: "항목을 선택해주세요", preferredStyle: .alert)
        
        // 취소 버튼
        let cancel = UIAlertAction(title: "취소", style: .cancel) {
            (_) in
            self.result.text = "취소 버튼을 클릭했습니다"
        }
        
        // 확인 버튼
        let ok = UIAlertAction(title: "확인", style: .default) {
            (_) in
            self.result.text = "확인 버튼을 클릭했습니다"
        }
        
        // 실행 버튼
        let exec = UIAlertAction(title: "실행", style: .destructive) {
            (_) in
            self.result.text = "실행 버튼을 클릭했습니다"
        }
        
        // 중지 버튼
        let stop = UIAlertAction(title: "중지", style: UIAlertActionStyle.default) {
            (_) in
            self.result.text = "중지 버튼을 클릭했습니다"
        }
        
        // 버튼을 컨트롤러에 등록
        alert.addAction(cancel)
        alert.addAction(ok)
        alert.addAction(exec)
        alert.addAction(stop)
        
        
        // 메시지 창 실행
        self.present(alert, animated:false)
    }
    
    // 로그인 메소드
    @IBAction func login(_ sender: Any) {
        let title =  "iTunes Store에 로그인"
        let message = "사용자의 Apple ID baek2304@naver.com의 암호를 입력하십시오"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let cancel = UIAlertAction(title: "취소", style: UIAlertActionStyle.cancel)
        let ok = UIAlertAction(title: "확인", style: .default) {
            (_) in
            // 확인 버튼을 클릭했을 때 처리할 내용
        }
        
        alert.addAction(cancel)
        alert.addAction(ok)
        
        // 텍스트 필드 추가
        alert.addTextField(configurationHandler: { (tf) in
            // 텍스트 필드의 속성 설정
            tf.placeholder = "암호" // 안내 메시지
            tf.isSecureTextEntry = true // 비밀번호 처리
        })
        
        self.present(alert, animated:false)
    }
    
    // 사용자 인증 메소드
    @IBAction func auth(_ sender: Any) {
        let msg = "로그인"
        let alert = UIAlertController(title: nil, message: msg, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        let ok = UIAlertAction(title: "확인", style: .default) {
            (_) in
            // 확인 버튼을 클릭했을 때 처리할 내용
            let loginId = alert.textFields?[0].text
            let loginPw = alert.textFields?[1].text
            
            if loginId == "sqlpro" && loginPw == "1234" {
                self.result.text = "인증되었습니다"
            } else{
                self.result.text = "인증에 실패하였습니다"
            }
        }
        
        alert.addAction(cancel)
        alert.addAction(ok)
        
        // 텍스트 필드 추가 - 아이디
        alert.addTextField(configurationHandler: { (tf) in
            // 텍스트 필드의 속성 설정
            tf.placeholder = "아이디" // 안내 메시지
            tf.isSecureTextEntry = false // 비밀번호 처리 안함
        })
        
        alert.addTextField(configurationHandler: { (tf) in
            tf.placeholder = "비밀번호"
            tf.isSecureTextEntry = true
        })
        
        // 텍스트 필드 추가 - 비밀번호
        
        self.present(alert, animated: false)
    }
}

