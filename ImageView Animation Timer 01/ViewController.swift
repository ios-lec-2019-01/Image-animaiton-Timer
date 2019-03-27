//
//  ViewController.swift
//  ImageView Animation Timer 01
//
//  Created by dit08 on 2019. 3. 27..
//  Copyright © 2019년 dit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alienImageView: UIImageView!
    @IBOutlet weak var countlavel: UILabel!
    var count = 1
    var isAnimation = false
    var myTimer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        alienImageView.image = UIImage(named: "Image1")
    }
    @IBAction func playBtnPressed(_ sender: Any) {
    print("play pressed")
    //Timer 호출
        myTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
    }
    
    @IBAction func PauseBtnPressed(_ sender: Any) {
        print("Pause pressed")
        myTimer.invalidate()
    }
    @IBAction func StopbtnPressed(_ sender: Any) {
        print("stop pressed")
        myTimer.invalidate()
        count = 0
        countlavel.text = String(count)
    }
    @objc func doAnimation (){
        if count == 5{
            count = 1
        }else {
            count+=1
        }
        alienImageView.image = UIImage(named: "Image\(count)")
        countlavel.text = String(count)
    }
}

