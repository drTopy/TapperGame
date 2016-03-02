//
//  ViewController.swift
//  TapperGame
//
//  Created by Thiago Costa on 2/27/16.
//  Copyright © 2016 Thiago Costa. All rights reserved.
//Graphics atrributed to Freepik.com

import UIKit

class ViewController: UIViewController {
    
    //Properties
    var maxTaps = 0
    var currentTaps = 0
    
    
    //Outlets
    @IBOutlet weak var logoIm: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func onCoinTapped(sender: UIButton!){
        
        currentTaps++
       updateTapsLbl()
        
        if isGameOver(){
            restartGame()
        }

    }
    
 
    
    @IBAction func onPlayBtnPressed(sender: UIButton!){
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
          
            logoIm.hidden = true
            playBtn.hidden = true
            howManyTapsTxt.hidden = true
            
            tapsLbl.hidden = false
            tapBtn.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLbl()
        }
    }
    
    func updateTapsLbl() {
         tapsLbl.text = "\(currentTaps) Taps"
    }
    
    func isGameOver() -> Bool{
        
        if currentTaps >= maxTaps{
            return true
        }else {
            return false
        }
    }
    
    func restartGame() {
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoIm.hidden = false
        playBtn.hidden = false
        howManyTapsTxt.hidden = false
        
        tapsLbl.hidden = true
        tapBtn.hidden = true
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    
    
    
    
    
    
    
}

