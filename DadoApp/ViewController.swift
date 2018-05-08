//
//  ViewController.swift
//  DadoApp
//
//  Created by juan hurtado on 28/01/18.
//  Copyright © 2018 Juan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ivDice1: UIImageView!
    @IBOutlet weak var ivDice2: UIImageView!
    
    var randomDiceValue1:Int=0
    var randomDiceValue2:Int=0
  
    let aNumberDice:[String]=["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //when load o view loaded
        
        //randomDiceValue1=Int(arc4random_uniform(6))
        //randomDiceValue2=Int(arc4random_uniform(6))
        
        //print("dice 1 is \(randomDiceValue1)")
        //print("dice 2 is \(randomDiceValue2)")
        
        //changeImageView(image: ivDice1,posArray: randomDiceValue1)
        //changeImageView(image: ivDice2,posArray: randomDiceValue2)
    
        changeImageView(image: ivDice1)
        changeImageView(image: ivDice2)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        //var number:Int=arc4random(6)
        randomDiceValue1=Int(arc4random_uniform(6))
        randomDiceValue2=Int(arc4random_uniform(6))
        
        print("dice 1 is \(randomDiceValue1)")
        print("dice 2 is \(randomDiceValue2)")
        
        /*
        switch randomDiceValue1 {
        case 0:
            self.ivDice1.image=UIImage.init(named: "dice1")
            //changeBackgroundDice(name: "dice1", imageDice: self.ivDice1.image!)
            //changeBackgroundDice(name: "dice", imageDice: <#T##UIImage#>)
            break
        case 1:
            self.ivDice1.image=UIImage.init(named: "dice2")
            break
        case 2:
            self.ivDice1.image=UIImage.init(named: "dice3")
            break
        case 3:
            self.ivDice1.image=UIImage.init(named: "dice4")
            break
        case 4:
            self.ivDice1.image=UIImage.init(named: "dice5")
            break
        case 5:
            self.ivDice1.image=UIImage.init(named: "dice6")
            break
        default:
            print("error 7")
            break
        }
        
        switch randomDiceValue2 {
        case 0:
            self.ivDice2.image=UIImage.init(named: "dice1")
            //changeBackgroundDice(name: "dice1", imageDice: self.ivDice1.image!)
            //changeBackgroundDice(name: "dice", imageDice: <#T##UIImage#>)
            break
        case 1:
            self.ivDice2.image=UIImage.init(named: "dice2")
            break
        case 2:
            self.ivDice2.image=UIImage.init(named: "dice3")
            break
        case 3:
            self.ivDice2.image=UIImage.init(named: "dice4")
            break
        case 4:
            self.ivDice2.image=UIImage.init(named: "dice5")
            break
        case 5:
            self.ivDice2.image=UIImage.init(named: "dice6")
            break
        default:
            print("error 7")
            break
        }*/
        
        //self.ivDice1.image=UIImage.init(named: changeBackgroundDice(randomValue: randomDiceValue1))
        //self.ivDice2.image=UIImage.init(named: changeBackgroundDice(randomValue: randomDiceValue2))
        
        //changeImageView(image: ivDice1,posArray: randomDiceValue1)
        //changeImageView(image: ivDice2,posArray: randomDiceValue2)
        
        changeImageView(image: self.ivDice1)
        changeImageView(image: self.ivDice2)
    }
    
    func changeBackgroundDice(randomValue:Int) -> String {
       return aNumberDice[randomValue]
    }
    
    func changeImageView(image:UIImageView){
        let ranValue=Int(arc4random_uniform(6))
        image.image=UIImage.init(named: changeBackgroundDice(randomValue: ranValue))
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion==UIEventSubtype.motionShake{
            changeImageView(image: self.ivDice1)
            changeImageView(image: self.ivDice2)
        }
    }
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        
    }
}

