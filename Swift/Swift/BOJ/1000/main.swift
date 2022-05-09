//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/05/09.
//

import Foundation

var input = readLine()!.split(separator: " ").map {
    Int(String($0))!
}

var result = 0

for i in input {
    result += i
}

print(result)

