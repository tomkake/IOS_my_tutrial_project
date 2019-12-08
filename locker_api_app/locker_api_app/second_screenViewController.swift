//
//  second_screenViewController.swift
//  locker_api_app
//
//  Created by tamukake on 2019/05/16.
//  Copyright © 2019 tamukake. All rights reserved.
//

import UIKit

class second_screenViewController: UIViewController {

    @IBOutlet weak var result: UITextField!
    @IBOutlet weak var second: UILabel!
    var sendText:String = ""
    var parameters: String = ""
    var textVC2:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        second.text = textVC2
        // Do any additional setup after loading the view.
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
