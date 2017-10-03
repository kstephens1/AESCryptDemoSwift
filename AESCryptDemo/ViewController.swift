//
//  ViewController.swift
//  AESCryptDemo
//
//  Created by Keith Stephens on 03/10/2017.
//  Copyright © 2017 Keith Stephens. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
 
        let plainText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        let key = "simplekey"
        let iv = "1234123412341234"
        
        let cryptoLib = CryptLib();
        
        let encryptedString = cryptoLib.encryptPlainText(with: plainText, key: key, iv: iv)
        print("encryptedString \(encryptedString! as String)")
        
        let decryptedString = cryptoLib.decryptCipherText(with: encryptedString, key: key, iv: iv)
        print("decryptedString \(decryptedString! as String)")
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

