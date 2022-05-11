//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/05/11.
//

var input1 = Int(readLine()!)!
var input2 = Int(readLine()!)!

print(input1 * (input2 % 10))
print(input1 * (input2 % 100 / 10))
print(input1 * (input2 / 100))
print(input1 * input2)
