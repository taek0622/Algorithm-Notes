//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/05/17.
//

var input = readLine()!.split(separator: " ").compactMap {
    Int(String($0))!
}

var intArray = readLine()!.split(separator: " ").compactMap {
    Int(String($0))!
}

for i in 0..<input[0] {
    if input[1] > intArray[i] {
        print("\(intArray[i])", terminator: " ")
    }
}
