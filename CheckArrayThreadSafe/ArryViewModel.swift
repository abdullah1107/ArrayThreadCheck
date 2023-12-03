//
//  ArryViewModel.swift
//  CheckArrayThreadSafe
//
//  Created by Muhammad Mamun on 2/12/23.
//

import Foundation

class ArryViewModel{
    
    var number:[Int] = []
    
    func appendElement(value: Int){
        self.number.append(value)
    }
    
    func readElement() -> Int{
        return self.number.count
    }
    
}

