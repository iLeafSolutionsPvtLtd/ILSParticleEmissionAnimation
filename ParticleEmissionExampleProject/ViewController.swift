//
//  ViewController.swift
//  ParticleEmissionExampleProject
//
//  Created by Rupesh on 5/22/18.
//  Copyright © 2018 Sharon. All rights reserved.
//

import UIKit
import ILSParticleEmissionAnimation

class ViewController: UIViewController {
var animate = ParticleEmissionAnimationView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        animate.images = [#imageLiteral(resourceName: "semiCircle"),#imageLiteral(resourceName: "flower"),#imageLiteral(resourceName: "polygon"),#imageLiteral(resourceName: "heart")]
        
        animate.colors = [UIColor.cyan,UIColor.green,UIColor.yellow,UIColor.brown]
         animate.showAnimation(aboveVC: self, withSuccesAnimation: true)
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4), execute: {
            // Put your code which should be executed with a delay here
            self.animate.stopAnimation()
        })
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    //IBOutlet
    @IBAction func startAnimationAction(_ sender: Any) {
        animate.showAnimation(aboveVC: self, withSuccesAnimation: false)
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4), execute: {
            // Put your code which should be executed with a delay here
            self.animate.stopAnimation()
        })
        
    }
    
    @IBAction func showSucessAnimationAction(_ sender: Any) {
        animate.showAnimation(aboveVC: self, withSuccesAnimation: true)
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4), execute: {
            // Put your code which should be executed with a delay here
            self.animate.stopAnimation()
        })
    }
    
   
}

