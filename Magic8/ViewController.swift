//
//  ViewController.swift
//  Magic8
//
//  Created by Joshua Bernitt on 5/15/19.
//  Copyright © 2019 Joshua Bernitt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ballImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        shakeWatYoMamaGaveYa()
    }
    
    func shakeWatYoMamaGaveYa() {
        let random = Int.random(in: 1...5)
        ballImageView.image = UIImage(named: "ball\(random)")
    }

    @IBAction func askButtonClick(_ sender: Any) {
        shakeWatYoMamaGaveYa()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        shakeWatYoMamaGaveYa()
    }
    
}

