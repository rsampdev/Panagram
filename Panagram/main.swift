//
//  main.swift
//  Panagram
//
//  Created by Rodney Sampson on 3/9/17.
//  Copyright © 2017 com.rsampdev. All rights reserved.
//

import Foundation

let panagram = Panagram()

if CommandLine.argc < 2 {
    panagram.interactiveMode()
} else {
    panagram.staticMode()
}
