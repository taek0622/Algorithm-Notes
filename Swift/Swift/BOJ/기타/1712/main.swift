//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/06/17.
//

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

let A = input[0]
let B = input[1]
let C = input[2]

var i = 0

// A + B * i < C * i => i

while A >= (C - B) * i {
    i += 1
}

print(i)
