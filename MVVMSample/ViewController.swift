//
//  ViewController.swift
//  MVVMSample
//
//  Created by RD-WilleyLo on 2018/12/14.
//  Copyright © 2018 RD-WilleyLo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var viewModel: ViewModel!
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // init
        viewModel = ViewModel()
        configureViewModel()
        viewModel.testUpdateLoading()
    }
    
    func configureViewModel() -> Void {
        NSLog("MVVM: Register updateLoading")
        viewModel.updateLoading = {
            [weak self] (isLoading: Bool) in
            if isLoading {
                self?.indicator.startAnimating()
            } else {
                NSLog("MVVM: indicator.stopAnimating()")
                self?.indicator.stopAnimating()
            }
        }
    }
}

