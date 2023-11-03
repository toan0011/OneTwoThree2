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
        myChoose = 3
        displayResult()
        viewContainResult.layer.opacity = 1
    }
    @IBAction func chooseTwo(_ sender: Any) {
        computerChoose = getRandom()
        myChoose = 2
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
            imgMyResult.image = UIImage(named: "iconsHandOne")
        case 2:
            imgMyResult.image = UIImage(named: "iconsHandTwo")
        case 3:
            imgMyResult.image = UIImage(named: "iconsHandThree")
        default:
            break
        }
        imgMyResult.transform = CGAffineTransform(rotationAngle: 90 * .pi/180)
    }
    
    func setImgComputerResult(){
        switch computerChoose {
        case 1:
            imgComputerResult.image = UIImage(named: "iconsHandOne")
        case 2:
            imgComputerResult.image = UIImage(named: "iconsHandTwo")
        case 3:
            imgComputerResult.image = UIImage(named: "iconsHandThree")
        default:
            break
        }
        imgComputerResult.transform = CGAffineTransform(rotationAngle: 270 * .pi/180).concatenating(CGAffineTransform(scaleX: 1, y: -1))
    }
    
    func getLabelResult() -> String {
        if myChoose == computerChoose {
            return "DRAW"
        }
        if myChoose == 1 && computerChoose == 3{
            return "LOSE"
        }
        
        if myChoose == 3 && computerChoose == 1{
            return "WIN"
        }
        
        if myChoose < computerChoose {
            return "WIN"
        }
        return "LOSE"
    }
    
    func getRandom() -> Int{
        return Int.random(in: 1...3)
    }
}

