//
//  Panagram.swift
//  Panagram
//
//  Created by Rodney Sampson on 3/9/17.
//  Copyright © 2017 com.rsampdev. All rights reserved.
//

import Foundation

class Panagram {
    
    let consoleIO = ConsoleIO()

    func staticMode() {
        let argCount = CommandLine.argc
        let argument = CommandLine.arguments[1]
        let (option, value) = self.consoleIO.getOption(argument.substring(from: argument.characters.index(argument.startIndex, offsetBy: 1)))
        print("Argument count: \(argCount) Option: \(option) value: \(value)")
    }
    
}
