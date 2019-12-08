//
//  ViewController.swift
//  locker_api_app
//
//  Created by tamukake on 2019/05/16.
//  Copyright © 2019 tamukake. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    //MARK:init
    @IBOutlet weak var username_text: UITextField!
    @IBOutlet weak var password_text: UITextField!
    let url = URL(string: "https://2018-eduiot.iniad.org/api/v1/locker")!
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.username_text.delegate = self as? UITextFieldDelegate
        self.password_text.delegate = self as? UITextFieldDelegate
        // Do any additional setup after loading the view.
    }
    // Segue 準備
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toViewController2") && (sender is UIButton) {
            let vc2: second_screenViewController = (segue.destination as? second_screenViewController)!
            // ViewControllerのtextVC2にメッセージを設定
            vc2.textVC2 = "to VC2"
        }
    }
    let parameters = "hello"
    //MARK:submit button setting
    @IBAction func submit_button(_ sender: UIButton) {
        let right = username_text.text ?? ""
        let left = password_text.text ?? ""
        if right.isEmpty || left.isEmpty {
            
        }else{
        let credentialData = "\(right):\(left)".data(using: String.Encoding.utf8)!
        let base64Credentials = credentialData.base64EncodedString(options: [])
        let headers = ["Authorization": "Basic \(base64Credentials)"]
        let task = Alamofire.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: headers).responseJSON{ response in
            switch response.result {
            case .success:
                let json:JSON = JSON(response.result.value ?? kill)
                print(json)
                
            case .failure(let error):
                print(error)
            }
        }
        task.resume()
        }
        performSegue(withIdentifier: "toViewController2",sender: nil)
    }
}

