//
//  ShowSplashScreen.swift
//  Tipper
//
//  Created by Gustavo Cordido on 10/4/19.
//  Copyright © 2019 Gustavo Cordido. All rights reserved.
//

import UIKit

class ShowSplashScreen: UIViewController {

    @objc func showNavControl(){
        performSegue(withIdentifier: "showSplashScreen", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        perform(Selector(("showNavControl")), with: nil, afterDelay: 1.5)
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
