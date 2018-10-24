//
//  ViewController.swift
//  accelerometerProjectXYZ
//
//  Created by West Kraemer on 10/24/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    @IBOutlet weak var xLabel: UIStackView!
    @IBOutlet weak var yLabel: UIStackView!
    @IBOutlet weak var zLabel: UIStackView!
    
    var motionManager: CMMotionManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        motionManager = CMMotionManager()
        motionManager.startAccelerometerUpdates(to: .main, withHandler: updateLabels)
        
    }

    func updateLabels(data: CMAccelerometerData?, error: Error?) {
        guard let accelerometerData = data else { return }
        print(accelerometerData)
    }
}

