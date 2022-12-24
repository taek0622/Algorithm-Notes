//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/05/16.
//

var input = Int(readLine()!)!

var str = ""

for i in stride(from: input, to: 0, by: -1) {
    str += "\(i)\n"
}

print(str)
