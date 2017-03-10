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
        
        switch option {
        case .anagram:
            if argCount != 4 {
                if argCount > 4 {
                    print("Too many arguments for option :\(option.rawValue)")
                } else {
                    print("Too few arguments for option :\(option.rawValue)")
                }
                
                ConsoleIO.printUsage()
            } else {
                let first = CommandLine.arguments[2]
                let second = CommandLine.arguments[3]
                
                if first.isAnagram(of: second) {
                    print("\(second) is an anagram of \(first)")
                } else {
                    print("\(second) is not an anagram of \(first)")
                }
            }
        case .palindrome:
            if argCount != 3 {
                if argCount > 3 {
                    print("Too many arguments for option: -\(option.rawValue)")
                } else {
                    print("Too few arguments for option: -\(option.rawValue)")
                }
            } else {
                let string = CommandLine.arguments[2]
                let isPalindrome = string.isPalindrome()
                let variable = isPalindrome ? "" : "not "
                print("\(string) is \(variable) a palindrome")
            }
        case .help:
            ConsoleIO.printUsage()
        case .unknown:
            print("Unknown option: -\(value)")
            ConsoleIO.printUsage()
        }
    }
    
}
