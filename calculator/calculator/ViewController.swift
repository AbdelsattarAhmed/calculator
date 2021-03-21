//
//  ViewController.swift
//  calculator
//
//  Created by Abdel Sattar on 9/25/20.
//  Copyright © 2020 Abdel Sattar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var firstno: Float?
    var operation: Int!
    
    
    @IBOutlet var calcbtn: [UIButton]!
    
    {
        didSet {
            for btn in calcbtn {
                
                btn.layer.cornerRadius = btn.frame.height/1.5
                               }
               }
    }
  
    @IBOutlet weak var resultlbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    
    @IBAction func btnpressed(_ sender: UIButton) {
        
        
        let num = sender.tag
       
          
        
        switch num{
            
        
        
        
        case 0...9:
        
               
                removeZero()
            
        
               resultlbl.text = resultlbl.text! + "\(num)"
       
        
        case 10:
             
            
            
            if resultlbl.text!.contains((".")) {
                
                
                break;
                
            
                                               }
             resultlbl.text = resultlbl.text! + "."
            
            
        case 17 :
            
            
            if resultlbl.text!.contains("-") {
            
                resultlbl.text!.removeFirst()
                
                
                resultlbl.text =  "\( resultlbl.text! )"
                
                                             }
            else{
            
                resultlbl.text = "-\(  resultlbl.text! )"
                  
                }
            
            
        case 18:
            
                    clearresult()
       
            
        case 12...16:
            
            
            firstno = Float(resultlbl.text!)
            
            operation = num
           
            clearresult()
        
            
        case 11:
            
            guard let Fn = firstno else {return}
        
            
            getresult(FIRSTNO: Fn , SN: Float(resultlbl.text!)!, operation:  operation)
        
                default:
           
                        break;
               }
        
        
        
        
    }
    //MARK: - IBACTION
    //MARK: - HELPER FUNCTIONS
    
    
    
    func clearresult() {
      
        resultlbl.text = "0"
        
        
                       }
    
    func removeZero() {
      
        
            if   resultlbl.text == "0"    {

                resultlbl.text = ""
        
                                           }
        
                      }
   
    func getresult(FIRSTNO:Float,SN:Float,operation:Int) {
        
        switch operation {
       
        
        case 12:
        
            resultlbl.text = "\(FIRSTNO+SN)"
           
            
        case 13:

            resultlbl.text = "\(FIRSTNO-SN)"
            
            
        case 14:
       
            resultlbl.text = "\(FIRSTNO*SN)"
            
            
        case 15:
        
            resultlbl.text = "\(FIRSTNO/SN)"
            
            
            
        case 16:


            resultlbl.text = "\(Int (FIRSTNO) % Int (SN))"
       
                      
                      
        default:
                break;
                        }
        
        
        
        
        
                                                         }
    
                        }
    
    
    
    
    
    
    



