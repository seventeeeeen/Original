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
    
    let saveData: UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapTanoshiButton(button: UIButton) {
        let currentNumber = saveData.object(forKey: "tanoshi") as? Int ?? 0
        saveData.set(currentNumber + 1 , forKey: "tanoshi")
    }
    @IBAction func tapShiawaseButton(button: UIButton) {
           let currentNumber = saveData.object(forKey: "shiawase") as? Int ?? 0
           saveData.set(currentNumber + 1 , forKey: "shiawase")
       }
    @IBAction func tapIkariButton(button: UIButton) {
           let currentNumber = saveData.object(forKey: "ikari") as? Int ?? 0
           saveData.set(currentNumber + 1 , forKey: "ikari")
       }
    @IBAction func tapFuanButton(button: UIButton) {
           let currentNumber = saveData.object(forKey: "fuan") as? Int ?? 0
           saveData.set(currentNumber + 1 , forKey: "fuan")
       }
    @IBAction func tapKokaiButton(button: UIButton) {
           let currentNumber = saveData.object(forKey: "kokai") as? Int ?? 0
           saveData.set(currentNumber + 1 , forKey: "kokai")
       }
    @IBAction func tapTuraiiButton(button: UIButton) {
           let currentNumber = saveData.object(forKey: "turai") as? Int ?? 0
           saveData.set(currentNumber + 1 , forKey: "turai")
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
