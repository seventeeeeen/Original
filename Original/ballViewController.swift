//
//  ballViewController.swift
//  Original
//
//  Created by 河本珠奈 on 2021/02/07.
//  Copyright © 2021 Kawamoto Juna. All rights reserved.
//

import UIKit

class ballViewController: UIViewController {
    
    @IBOutlet var image: UIImageView!
    
    @IBOutlet var tanoshiBall: [UIImageView]!
    @IBOutlet var shiawaseBall: [UIImageView]!
    @IBOutlet var ikariBall: [UIImageView]!
    @IBOutlet var fuanBall: [UIImageView]!
    @IBOutlet var kokaiBall: [UIImageView]!
    @IBOutlet var turaiBall: [UIImageView]!
    
    let saveData: UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //それぞれのボタンが押された回数がここで用意した変数に入る
        let tanoshicount = saveData.object(forKey: "tanoshi") as? Int ?? 0
        let shiawasecount = saveData.object(forKey: "shiawase") as? Int ?? 0
        let ikaricount = saveData.object(forKey: "ikari") as? Int ?? 0
        let fuancount = saveData.object(forKey: "fuan") as? Int ?? 0
        let kokaicount = saveData.object(forKey: "kokai") as? Int ?? 0
        let turaicount = saveData.object(forKey: "turai") as? Int ?? 0
        
        if tanoshicount > 0 {
            //for文でtanoshicountの回数だけ繰り返してtanoshiBallっていうUIImageViewに画像を表示する
            for index in 0..<tanoshicount {
                tanoshiBall[index].image = UIImage(named: "")
            }
            for index in 0..<shiawasecount {
                shiawaseBall[index].image = UIImage(named: "")
            }
            for index in 0..<ikaricount {
                ikariBall[index].image = UIImage(named: "")
            }
            
            for index in 0..<fuancount {
                fuanBall[index].image = UIImage(named: "")
            }
            
            for index in 0..<kokaicount {
                kokaiBall[index].image = UIImage(named: "")
            }
            
            for index in 0..<turaicount {
                turaiBall[index].image = UIImage(named: "")
            }
        }
    }
    
}

/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destination.
 // Pass the selected object to the new view controller.
 }
 */
