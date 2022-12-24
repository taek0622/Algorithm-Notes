//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/05/25.
//

// 메모리: 69100KB, 시간: 8ms, 코드 길이: 205B
var max = 0
var indexOfMaxNumber = 0

for i in 1...9 {
    let input = Int(readLine()!)!
    if input >= max {
        max = input
        indexOfMaxNumber = i
    }
}

print("\(max)\n\(indexOfMaxNumber)")
