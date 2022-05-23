//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/05/10.
//

var input = readLine()!.split(separator: " ").map {
    Int($0)!
}

print(input[0] + input[1])
print(input[0] - input[1])
print(input[0] * input[1])
print(input[0] / input[1])
print(input[0] % input[1])
