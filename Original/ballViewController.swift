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
                for var index in 0..<tanoshicount {
                    if index < 4 {
                        tanoshiBall[index].image = UIImage(named: "tanoshiball.png")
                    } else if index < 8 {
                        index = index % 4
                         tanoshiBall[index].image = UIImage(named: "tanoshi2.png")
                    } else {
                        index = index % 4
                        tanoshiBall[index].image = UIImage(named: "tanoshi3.png")
                    }
                }
            }
            if shiawasecount > 0 {
                for var index in 0..<shiawasecount {
                    if index < 4 {
                        shiawaseBall[index].image = UIImage(named: "happy.png")
                        //shiawaseBall[index].alpha = 0.3
                    } else if index < 8{
                        index = index % 4
                        shiawaseBall[index].image = UIImage(named: "happy2.png")
                        //shiawaseBall[index].alpha = 0.6
                    } else {
                        index = index % 4
                        shiawaseBall[index].image = UIImage(named: "happy3.png")
                        //shiawaseBall[index].alpha = 1
                    }
                }
            }
            if ikaricount > 0 {
                for var index in 0..<ikaricount {
                    if index < 4 {
                        ikariBall[index].image = UIImage(named: "angry.png")
                    } else if ikaricount < 8{
                        index = index % 4
                        ikariBall[index].image = UIImage(named: "angry2.png")
                    } else {
                        index = index % 4
                        ikariBall[index].image = UIImage(named: "angry3.png")
                    }
                }
            }
            
            if fuancount > 0 {
                for var index in 0..<fuancount {
                    if index < 4 {
                        fuanBall[index].image = UIImage(named: "fuan.png")
                    } else if index < 8{
                        index = index % 4
                        fuanBall[index].image = UIImage(named: "fuan2.png")
                    }else {
                        index = index % 4
                        fuanBall[index].image = UIImage(named: "fuanball3.png")
                    }
                }
            }
            
            if kokaicount > 0 {
                for var index in 0..<kokaicount {
                    if index < 4 {
                        kokaiBall[index].image = UIImage(named: "nervous.png")
                    } else if index < 8{
                        index = index % 4
                        kokaiBall[index].image = UIImage(named: "nervous2.png")
                    } else {
                        index = index % 4
                        kokaiBall[index].image = UIImage(named: "nervous3.png")
                    }
                }
            }
            
            if turaicount > 0 {
                for var index in 0..<turaicount {
                    if index < 4 {
                        turaiBall[index].image = UIImage(named: "sad.png")
                    } else if index < 8{
                        index = index % 4
                        turaiBall[index].image = UIImage(named: "sad2.png")
                    } else {
                        index = index % 4
                        turaiBall[index].image = UIImage(named: "sad3.png")
                    }
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
