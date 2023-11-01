//
//  ViewController.swift
//  OneTwoThree
//
//  Created by Minh Toan on 01/11/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var imgComputerResult: UIImageView!
    @IBOutlet weak var imgMyResult: UIImageView!
    @IBOutlet weak var imgTwoChoose: UIImageView!
    @IBOutlet weak var imgThreeChoose: UIImageView!
    @IBOutlet weak var viewContainResult: UIView!
    @IBOutlet weak var imgOneChoose: UIImageView!
    var myChoose = 0
    var computerChoose = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        setImgChoose()
        //        print(Int.random(in: 1...100))
        viewContainResult.layer.opacity = 0
    }
    
    func setImgChoose (){
        imgOneChoose.layer.cornerRadius = 35
        imgTwoChoose.layer.cornerRadius = 35
        imgThreeChoose.layer.cornerRadius = 35
    }
    
    
    @IBAction func chooseOne(_ sender: Any) {
        computerChoose = getRandom()
        myChoose = 1
        displayResult()
        viewContainResult.layer.opacity = 1
    }
    
    @IBAction func chooseThree(_ sender: Any) {
        computerChoose = getRandom()
        myChoose = 2
        displayResult()
        viewContainResult.layer.opacity = 1
    }
    @IBAction func chooseTwo(_ sender: Any) {
        computerChoose = getRandom()
        myChoose = 3
        displayResult()
        viewContainResult.layer.opacity = 1
    }
    
    func displayResult(){
        labelResult.text = getLabelResult()
        setImgMyResult()
        setImgChoose()
        setImgComputerResult()
    }
    
    func setImgMyResult(){
        switch myChoose {
        case 1:
            imgMyResult.image = .iconsHandOne
        case 2:
            imgMyResult.image = .iconsHandTwo
        case 3:
            imgMyResult.image = .iconsHandThree
        default:
            break
        }
    }
    
    func setImgComputerResult(){
        switch computerChoose {
        case 1:
            imgComputerResult.image = .iconsHandOne
        case 2:
            imgComputerResult.image = .iconsHandTwo
        case 3:
            imgComputerResult.image = .iconsHandThree
        default:
            break
        }
    }
    
    func getLabelResult() -> String {
        switch myChoose {
        case 1:
            if computerChoose == 2 {
                return "WIN"
            }else if computerChoose == 3{
                return "LOSE"
            }else{
                return "DRAW"
            }
        case 2:
            if computerChoose == 2 {
                return "DRAW"
            }else if computerChoose == 3{
                return "WIN"
            }else{
                return "LOSE"
            }
        case 3:
            if computerChoose == 2 {
                return "LOSE"
            }else if computerChoose == 3{
                return "DRAW"
            }else{
                return "WIN"
            }
        default:
            return ""
        }
    }
    
    func getRandom() -> Int{
        return Int.random(in: 1...3)
    }
}

