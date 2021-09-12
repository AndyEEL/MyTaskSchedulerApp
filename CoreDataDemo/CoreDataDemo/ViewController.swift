//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by 이동건 on 2021/09/12.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    }


}

