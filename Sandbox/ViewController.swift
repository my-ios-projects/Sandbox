//
//  ViewController.swift
//  Sandbox
//
//  Created by Taha Magdy on 8/28/18.
//  Copyright © 2018 Taha Magdy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // * Prepare the path.
        let fileManager = FileManager.default
        let urls = fileManager.urls(for: .documentDirectory, in: .userDomainMask)
        let url = urls.last?.appendingPathComponent("file.txt")
        
        
        
        // * Writting a file
        do {
        // Writring in our new url/path
        try "Hi There!".write(to: url!, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            print("error")
        }
        
        
        
        // * Reading a file
        do {
           let fileContent = try String(contentsOf: url!, encoding: String.Encoding.utf8)
            print(fileContent)
        } catch {
            print("error")
        }
        

    }



}

