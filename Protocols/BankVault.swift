//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

protocol ProvideAccess {
    
    func allowEntryWithPassword(_ password: [Int]) ->Bool
}

class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}

extension BankVault: ProvideAccess {
    func allowEntryWithPassword(_ password: [Int]) -> Bool {
        var validPassword: Bool = false
        if password.isEmpty || password.count > 10 { validPassword = false }
        else {
            var even = false
            for (index,item) in password.enumerated() {
                if index % 2 == 0 && item % 2 == 0 {
                    even = true
                
                }else{
                    even = false

                }
            }
            if even { validPassword = true }
        }
      return validPassword
    }
    
}







