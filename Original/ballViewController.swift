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
    
    @IBOutlet var tanoshiball1: UIImageView!
    @IBOutlet var tanoshiball2: UIImageView!
    @IBOutlet var tanoshiball3: UIImageView!
    @IBOutlet var tanoshiball4: UIImageView!
    @IBOutlet var shiawaseball1: UIImageView!
    @IBOutlet var shiawaseball2: UIImageView!
    @IBOutlet var shiawaseball3: UIImageView!
    @IBOutlet var shiawaseball4: UIImageView!
    @IBOutlet var ikariball1: UIImageView!
    @IBOutlet var ikariball2: UIImageView!
    @IBOutlet var ikariball3: UIImageView!
    @IBOutlet var ikariball4: UIImageView!
    @IBOutlet var fuanball1: UIImageView!
    @IBOutlet var fuanball2: UIImageView!
    @IBOutlet var fuanball3: UIImageView!
    @IBOutlet var fuanball4: UIImageView!
    @IBOutlet var kokaiball1: UIImageView!
    @IBOutlet var kokaiball2: UIImageView!
    @IBOutlet var kokaiball3: UIImageView!
    @IBOutlet var kokaiball4: UIImageView!
    @IBOutlet var turaiball1: UIImageView!
    @IBOutlet var turaiball2: UIImageView!
    @IBOutlet var turaiball3: UIImageView!
    @IBOutlet var turaiball4: UIImageView!
    
    let saveData: UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    
        var tanoshicount = saveData.object(forKey: "tanoshi")
        var shiawasecount = saveData.object(forKey: "shiawase")
        var ikaricountn = saveData.object(forKey: "ikari")
        var fuancount = saveData.object(forKey: "fuan")
        var kokai = saveData.object(forKey: "kokai")
        var turai = saveData.object(forKey: "turai")
        
        
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
