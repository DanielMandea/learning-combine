//
//  ViewController.swift
//  DebuggingDemo
//
//  Created by Mohammad Azam on 10/20/19.
//  Copyright © 2019 Mohammad Azam. All rights reserved.
//

import UIKit
import Combine

class ViewController: UIViewController {

    private var cancellable: AnyCancellable?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let publisher = (1...10).publisher
        
        self.cancellable = publisher
            .breakpoint(receiveOutput: { value in
                return value > 9
            })
            .sink {
            print($0)
        }
        
    }


}

