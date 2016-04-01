//
//  ViewController.swift
//  Multiples
//
//  Created by  on 2016-03-31.
//  Copyright © 2016. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //properties
    var currentMultiple = 0
    var runningSum = 0
    let maxSum = 50
    
    //outlets
    
    @IBOutlet weak var chalkboard: UIImageView!
    @IBOutlet weak var multiplesLogo:UIImageView!
    @IBOutlet weak var enterMultiple: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var addMultipleButton: UIButton!
    @IBOutlet weak var pressAddToAddLabel: UILabel!
   
    @IBOutlet weak var changingMultiplesLabel: UILabel!
   
   
    
    @IBAction func playButtonPressed(sender: AnyObject) {
        
        if enterMultiple.text != nil && enterMultiple.text != "" {
          
            chalkboard.hidden = false
            multiplesLogo.hidden = true
            enterMultiple.hidden = true
            playButton.hidden = true
            
            addMultipleButton.hidden = false
            pressAddToAddLabel.hidden = false
            
            changingMultiplesLabel.hidden = false
            
            currentMultiple = Int(enterMultiple.text!)!
            

        }
    
    }
     
        @IBAction func addToAddButtonPressed(sender: AnyObject) {
    
        let newSum = runningSum + currentMultiple
            updateLabel(runningSum, mul: currentMultiple, newSum: newSum)
            runningSum += currentMultiple
        
            
        
        chalkboard.hidden = false
        multiplesLogo.hidden = true
        enterMultiple.hidden = true
        playButton.hidden = true
        
        addMultipleButton.hidden = false
        pressAddToAddLabel.hidden = true
        
        changingMultiplesLabel.hidden = false
            
            if gameOver(){
                restartGame()
            }
        
        }
    func restartGame() {
        
        currentMultiple = 0
        enterMultiple.text = ""
        chalkboard.hidden = false
        multiplesLogo.hidden = false
        enterMultiple.hidden = false
        playButton.hidden = false
        
        addMultipleButton.hidden = true
        pressAddToAddLabel.hidden = true
        changingMultiplesLabel.hidden = true
        pressAddToAddLabel.text = "Press Add To Add!"
        changingMultiplesLabel.text = ""
    }
        
    func updateLabel(oldSum: Int, mul: Int, newSum: Int){
        
        changingMultiplesLabel.text = "\(oldSum) + \(mul) = \(newSum)"
    }
    func gameOver() -> Bool {
        if runningSum >= maxSum {
            return true
        }else {
        return false
        }
    }
    
    }


