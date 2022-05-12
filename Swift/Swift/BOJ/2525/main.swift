//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/05/12.
//

var input1 = readLine()!.split(separator: " ").map {
    Int($0)!
}
var input2 = Int(readLine()!)!

var time = input1[0] * 60 + input1[1] + input2

print("\((time / 60) % 24) \(time % 60)")
