//
//  ViewController.swift
//  WidgetsTest
//
//  Created by tamukake on 2019/12/08.
//  Copyright © 2019 tamukake. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Button: UIButton!
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var TextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func Buttonevent(_ sender: Any) {
        let s = TextField.text ;
        if  s != "" {
            print(TextField.text!)
            Label.text = s
            TextField.text = nil
        }else{
            let alert = UIAlertController(title: "test", message: "none your text", preferredStyle: UIAlertController.Style.alert)
            let okayButton = UIAlertAction(title: "ok", style: UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(okayButton)
            present(alert, animated: true, completion: nil)
            Label.text = "none field"
        }
    }
}

