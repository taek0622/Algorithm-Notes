//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/05/11.
//

var input = readLine()!.split(separator: " ").map {
    Int($0)!
}

let a = input[0]
let b = input[1]
let c = input[2]

print((a + b) % c)
print(((a % c) + (b + c)) % c)
print((a * b) % c)
print(((a % c) * (b % c)) % c)
