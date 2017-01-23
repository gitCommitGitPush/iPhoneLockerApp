//
//  ViewController.swift
//  iPhoneLockerApp
//
//  Created by paul on 1/22/17.
//  Copyright © 2017 paul. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var first = 0;
    var second = 4;
    var third = 5;
    
    //  Create function to check if code matches 404
    func checkCode (k1: Int, k2: Int, k3: Int) -> Void{
        if ( k1 == 4 && k2 == 0 && k3 == 4 ) {
            print("Matches Code");
            self.locker.image = UIImage(named: "opened.png");
        }
        else {
            print("Does Not Match Code");
            print("k1: \(k1)");
            print("k2: \(k2)");
            print("k3: \(k3)");
        }
    }
    
    // Create function that takes in last code entered and moves along the next
    func updateSequence (knew: Int, k1: inout Int, k2: inout Int, k3: inout Int) -> Void{
        k3 = k2;
        k2 = k1;
        k1 = knew;
    }
    

    @IBAction func one(_ sender: Any) {
        updateSequence (knew: 1, k1: &first, k2: &second, k3: &third)
        checkCode(k1: first, k2: second, k3: third)
    }

    @IBAction func two(_ sender: Any) {
        updateSequence (knew: 2, k1: &first, k2: &second, k3: &third)
        checkCode(k1: first, k2: second, k3: third)
    }
    @IBAction func lock(_ sender: Any) {
        self.locker.image = UIImage(named: "closed.png");
    }
    @IBAction func three(_ sender: Any) {
        updateSequence (knew: 3, k1: &first, k2: &second, k3: &third)
        checkCode(k1: first, k2: second, k3: third)
    }
    @IBAction func four(_ sender: Any) {
        updateSequence (knew: 4, k1: &first, k2: &second, k3: &third)
        checkCode(k1: first, k2: second, k3: third)
    }
    @IBAction func six(_ sender: Any) {
        updateSequence (knew: 0, k1: &first, k2: &second, k3: &third)
        checkCode(k1: first, k2: second, k3: third)
    }

    @IBAction func five(_ sender: Any) {
        updateSequence (knew: 5, k1: &first, k2: &second, k3: &third)
        checkCode(k1: first, k2: second, k3: third)
    }

    @IBOutlet weak var locker: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.locker.image = UIImage(named: "closed.png");
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

