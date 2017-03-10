//
//  StringExtension.swift
//  Panagram
//
//  Created by Rodney Sampson on 3/9/17.
//  Copyright © 2017 com.rsampdev. All rights reserved.
//

import Foundation

extension String {
    
    func isAnagram(of string: String) -> Bool {
        let lowerSelf = self.lowercased().replacingOccurrences(of: " ", with: "")
        let lowerOther = string.lowercased().replacingOccurrences(of: " ", with: "")
        let isAnagram = lowerSelf.characters.sorted() == lowerOther.characters.sorted()
        return isAnagram
    }
    
    func isPalindrome() -> Bool {
        let forward = self.lowercased().replacingOccurrences(of: " ", with: "")
        let reverse =  String(forward.characters.reversed())
        return forward == reverse
    }

}
