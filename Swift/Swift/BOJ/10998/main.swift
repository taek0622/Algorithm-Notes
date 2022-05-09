//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/05/10.
//

var input = readLine()!.split(separator: " ").map {
    Int($0)!
}

var result = 1

for i in input {
    result *= i
}

print(result)
