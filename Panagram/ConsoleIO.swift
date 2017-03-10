//
//  ConsoleIO.swift
//  Panagram
//
//  Created by Rodney Sampson on 3/9/17.
//  Copyright © 2017 com.rsampdev. All rights reserved.
//

import Foundation

enum OutputType {
    case error
    case standard
}

enum OptionType: String {
    case palindrome = "p"
    case anagram = "a"
    case help = "h"
    case unknown
    
    init(value: String) {
        switch value {
        case OptionType.palindrome.rawValue: self = .palindrome
        case OptionType.anagram.rawValue: self = .anagram
        case OptionType.help.rawValue: self = .help
        default: self = .unknown
        }
    }
    
}

class ConsoleIO {
    
    class func printUsage() {
        let executableName = (CommandLine.arguments[0] as NSString).lastPathComponent
        
        print("usage:")
        print("\(executableName) -a string1 string2")
        print("or")
        print("\(executableName) -p string")
        print("or")
        print("\(executableName) -h to show usage information")
        print("Type \(executableName) without an option to enter interactive mode.")
    }
    
    func getOption(_ option: String) -> (option: OptionType, value: String) {
        return (OptionType(value: option), option)
    }
    
    func write(_ message: String, to: OutputType = .standard) {
        switch to {
        case .standard: print("\u{001B}[;m\(message)")
        case .error: fputs("\u{001B}[0;31m\(message)\n", stderr)
        }
    }
    
}
