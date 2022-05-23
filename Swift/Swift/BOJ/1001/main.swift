//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/05/09.
//

var input = readLine()!.split(separator: " ").map {
    Int(String($0))!
}

print(input[0] - input[1])

