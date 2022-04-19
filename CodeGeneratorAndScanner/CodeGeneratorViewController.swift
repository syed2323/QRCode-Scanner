//
//  CodeGeneratorViewController.swift
//  CodeGeneratorAndScanner
//
//  Created by Satyadev Chauhan on 10/12/18.
//  Copyright © 2018 Satyadev Chauhan. All rights reserved.
//

import UIKit


class CodeGeneratorViewController: UIViewController, DataEnteredDelegate {
    func userDidEnterInformation(info: String) {
        text.text = info
    }
    
    
   
    @IBOutlet weak var text: UILabel!
    
    let toolbar: UIToolbar = {
        let toolBar = UIToolbar()
        toolBar.barStyle = UIBarStyle.default
        toolBar.isTranslucent = true
        toolBar.sizeToFit()
        return toolBar
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let scanBarButton = UIBarButtonItem.init(image: UIImage.init(named: "scan"), style: .plain, target: self, action: #selector(scanButtonPressed(_:)))
        navigationItem.rightBarButtonItems = [scanBarButton]
    }
    
 
    
    @IBAction func scanButtonPressed(_ sender: Any) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "CodeScannerViewController") as! CodeScannerViewController
        vc.delegate = self
        vc.modalTransitionStyle = .crossDissolve
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
    
}







