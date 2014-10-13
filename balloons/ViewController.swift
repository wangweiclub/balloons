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
    @IBOutlet weak var LableName: UILabel!
    
    var balloons:[Balloon]=[]
    var lion:[Lion]=[]
    
    var currentindex=0
    var currentboth=(species:"Balloon",index:0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.ballooncount()
        self.mylion()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ButtonBalloons(sender: UIBarButtonItem) {
        update()
        updatedisplay()
        
//        let balloons=self.balloons[currentindex]
//        
//        LableBallons.text=("\(balloons.number)Girl")
//        ImageBalloons.image=balloons.image
//        LableName.text=("\(balloons.name)")
//        
//        currentindex+=1
    }

    func ballooncount(){
            for var ballooncount=0;ballooncount<=99;++ballooncount{
            //for ballooncount in 0..<100{
                
            var balloons=Balloon()
            balloons.number=ballooncount
            
            
            
            let random=Int(arc4random_uniform(UInt32(6)))
            
            switch random{
            case 1:
                balloons.image=UIImage(named: "1.jpg")
                balloons.name="1 times"
            case 2:
                balloons.image=UIImage(named: "2.jpg")
                balloons.name="2 times"
            case 3:
                balloons.image=UIImage(named: "3.jpg")
                balloons.name="3 times"
            case 4:
                balloons.image=UIImage(named: "4.jpg")
                balloons.name="4 times"
            case 5:
                balloons.image=UIImage(named: "5.jpg")
                balloons.name="5 times"
            default :
                balloons.image=UIImage(named: "6.jpg")
                balloons.name="6 times"
            }
            self.balloons.append(balloons)
        }
    }
    
    func mylion(){
        for var mylion=0;mylion<=99;++mylion{
            //for ballooncount in 0..<100{
            
            var lion=Lion()
            lion.number=mylion
            
            let random=Int(arc4random_uniform(UInt32(5)))
            
            switch random{
            case 1:
                lion.image=UIImage(named: "11.jpg")
                lion.name="11 times"
            case 2:
                lion.image=UIImage(named: "12.jpg")
                lion.name="12 times"
            case 3:
                lion.image=UIImage(named: "13.jpg")
                lion.name="13 times"
            case 4:
                lion.image=UIImage(named: "14.jpg")
                lion.name="14 times"
            default :
                lion.image=UIImage(named: "15.jpg")
                lion.name="15 times"
            }
            self.lion.append(lion)
//            var mylion1=Lion()
//            mylion1.name="no1"
//            mylion1.number=1
//            mylion1.image=UIImage(named: "11.JPG")
//        
//            var mylion2=Lion()
//            mylion2.name="no2"
//            mylion2.number=2
//            mylion2.image=UIImage(named: "12.JPG")
//        
//            lion.append(mylion1)
//            lion.append(mylion2)
       }
    }
    
    func update(){
        switch currentboth{
        case ("Balloon", _):
            let randoxindex=Int(arc4random_uniform(UInt32(lion.count)))
            currentboth=("Lion",randoxindex)
            
        default:
            let randoxindex=Int(arc4random_uniform(UInt32(balloons.count)))
            currentboth=("Balloon",randoxindex)
        }
        }
    
    func updatedisplay(){
            UIView.transitionWithView(self.view, duration: 1, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
                
                if self.currentboth.species=="Balloon"{
                let balloons=self.balloons[self.currentboth.index]
                    self.LableBallons.text=("\(balloons.number)Girl")
                    self.ImageBalloons.image=balloons.image
                    self.LableName.text=("\(balloons.name)")
                }
                else if self.currentboth.species=="Lion"{
                let lion=self.lion[self.currentboth.index]
                    self.LableBallons.text=("\(lion.number)beautiful girl")
                    self.ImageBalloons.image=lion.image
                    self.LableName.text=("\(lion.name)")
                }
                
                }, completion: {
                    (finished:Bool)->()in
            })
        
        }
}

