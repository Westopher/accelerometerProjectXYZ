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

    @IBOutlet weak var xLabel: UILabel!
    @IBOutlet weak var yLabel: UILabel!
    @IBOutlet weak var zLabel: UILabel!
    
    var motionManager: CMMotionManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        motionManager = CMMotionManager()
        motionManager.startAccelerometerUpdates(to: .main, withHandler: updateLabels)
        
    }

    func updateLabels(data: CMAccelerometerData?, error: Error?) {
        guard let accelerometerData = data else { return }
        
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 1
        formatter.maximumFractionDigits = 1
        
        let x = formatter.string(for: accelerometerData.acceleration.x)!
        let y = formatter.string(for: accelerometerData.acceleration.y)!
        let z = formatter.string(for: accelerometerData.acceleration.z)!
        
        xLabel.text = "x: \(x)"
        yLabel.text = "y: \(y)"
        zLabel.text = "z: \(z)"
        
    }
    
    
}

