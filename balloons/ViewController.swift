//
//  ViewController.swift
//  balloons
//
//  Created by ob_club on 14-10-7.
//  Copyright (c) 2014年 wangweiclub. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Just test github
    
    @IBOutlet weak var LableBallons: UILabel!
    @IBOutlet weak var ImageBalloons: UIImageView!
    
    var balloons:[Balloon]=[]
    
    var currentindex=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.ballooncount()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ButtonBalloons(sender: UIBarButtonItem) {
        
        let balloons=self.balloons[currentindex]
        
        LableBallons.text=("\(balloons.number)Girl")
        ImageBalloons.image=balloons.image
        
        currentindex+=1
        
        
    }

    func ballooncount(){
        for var ballooncount=0;ballooncount<=99;++ballooncount{
            var balloons=Balloon()
            balloons.number=ballooncount
            
            let random=Int(arc4random_uniform(UInt32(6)))
            
            switch random{
            case 1:
                balloons.image=UIImage(named: "1.jpg")
            case 2:
                balloons.image=UIImage(named: "2.jpg")
            case 3:
                balloons.image=UIImage(named: "3.jpg")
            case 4:
                balloons.image=UIImage(named: "4.jpg")
            case 5:
                balloons.image=UIImage(named: "5.jpg")
            default :
                balloons.image=UIImage(named: "6.jpg")
            }
            self.balloons.append(balloons)
        }
    }
}

