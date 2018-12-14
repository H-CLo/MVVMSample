//
//  ViewModel.swift
//  MVVMSample
//
//  Created by RD-WilleyLo on 2018/12/14.
//  Copyright © 2018 RD-WilleyLo. All rights reserved.
//

import Foundation

class ViewModel {
    
    var updateLoading: ((_ isLoading: Bool) -> Void)?
    
    func testUpdateLoading() -> Void {
        NSLog("MVVM: start testUpdateLoading")
        DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
            [weak self] () in
            guard let item = self?.updateLoading else {return}
            NSLog("MVVM: updateLoading false")
            item(false)
        })
    }
}
