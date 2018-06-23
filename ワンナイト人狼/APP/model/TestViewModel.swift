//
//  TestViewModel.swift
//  APP
//
//  Created by 赤坂顕世 on 2018/06/23.
//  Copyright © 2018年 myname. All rights reserved.
//

import UIKit

class TestViewModel: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let image=UIImage(named:"rira")
        imageView.image = image
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onPre(_ sender: Any) {
        dispImageNo += 1
        displayImage()
    }
    var dispImageNo = 0
    
    func displayImage() {
        let imageNameArray = [
            "riraro",
            "purin",
            "fire",
            ]
        if dispImageNo < 0 {
            dispImageNo = 2
        }
        if dispImageNo > 2 {
            dispImageNo = 0
        }
        
        let name = imageNameArray[dispImageNo]
        let image = UIImage(named: name)
        
        imageView.image = image
    }
        
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
