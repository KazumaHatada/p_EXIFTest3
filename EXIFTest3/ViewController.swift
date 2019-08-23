//
//  ViewController.swift
//  EXIFTest3
//
//  Created by Kazuma Hatada on 2019/08/19.
//  Copyright © 2019 Kazuma Hatada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        print("aaa")
        let url = Bundle.main.url(forResource: "MitakaEkimae", withExtension: "JPG")
        
        print("bbb")
        if let imageSource = CGImageSourceCreateWithURL(url! as CFURL, nil) {
            
            print("ccc")
            if let imageProperties = CGImageSourceCopyPropertiesAtIndex(imageSource, 0, nil) {
                
                print("ddd")
                if let dict = imageProperties as? [String: Any] {
                    print(dict)
                }
                
            } else {
                print("imageProperties is nil")
            }
            
        } else {
            print("imageSource is nil")
        }
        
    }

}

