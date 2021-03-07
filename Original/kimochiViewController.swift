//
//  kimochiViewController.swift
//  Original
//
//  Created by 河本珠奈 on 2021/02/07.
//  Copyright © 2021 Kawamoto Juna. All rights reserved.
//

import UIKit

class kimochiViewController: UIViewController {
    
    @IBOutlet var tanoshibutton: UIButton!
    @IBOutlet var shiawasebutton: UIButton!
    @IBOutlet var ikaributton: UIButton!
    @IBOutlet var fuanbutton: UIButton!
    @IBOutlet var kokaibutton: UIButton!
    @IBOutlet var turaibutton: UIButton!
    @IBOutlet var sentakuimage: UIImageView!
    
    let saveData: UserDefaults = UserDefaults.standard
    var number : Int!
    var sentakuArray:[String] = ["tanoshiball.png", "happy.png", "angry.png", "fuan.png", "nervous.png", "sad.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapTanoshiButton(button: UIButton) {
        let currentNumber = saveData.object(forKey: "tanoshi") as? Int ?? 0
        saveData.set(currentNumber + 1 , forKey: "tanoshi")
        timer()
        number = 0
        tapButton()
    }
    @IBAction func tapShiawaseButton(button: UIButton) {
        let currentNumber = saveData.object(forKey: "shiawase") as? Int ?? 0
        saveData.set(currentNumber + 1 , forKey: "shiawase")
        timer()
        number = 1
        tapButton()
    }
    @IBAction func tapIkariButton(button: UIButton) {
        let currentNumber = saveData.object(forKey: "ikari") as? Int ?? 0
        saveData.set(currentNumber + 1 , forKey: "ikari")
        timer()
        number = 2
        tapButton()
    }
    @IBAction func tapFuanButton(button: UIButton) {
        let currentNumber = saveData.object(forKey: "fuan") as? Int ?? 0
        saveData.set(currentNumber + 1 , forKey: "fuan")
        timer()
        number = 3
        tapButton()
    }
    @IBAction func tapKokaiButton(button: UIButton) {
        let currentNumber = saveData.object(forKey: "kokai") as? Int ?? 0
        saveData.set(currentNumber + 1 , forKey: "kokai")
        timer()
        number = 4
        tapButton()
    }
    @IBAction func tapTuraiiButton(button: UIButton) {
        let currentNumber = saveData.object(forKey: "turai") as? Int ?? 0
        saveData.set(currentNumber + 1 , forKey: "turai")
        timer()
        number = 5
        tapButton()
    }
    
    func tapButton() {
        //print(number)
        sentakuimage.image = UIImage(named: sentakuArray[number])
    }
    
    func timer(){
        sentakuimage.isHidden = false
        Timer.scheduledTimer(timeInterval: 1.5, target:self, selector: #selector(self.kesu), userInfo: nil, repeats: false)
    }
    
    @objc func kesu(){
        sentakuimage.isHidden = true
    }
 
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
