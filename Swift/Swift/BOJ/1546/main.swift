//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/05/26.
//

// 메모리: 69104KB, 시간: 8ms, 코드 길이: 
var count = Int(readLine()!)!
var number = readLine()!.split(separator: " ").map { Int(String($0))! }

var sum = 0.0

for i in number {
    sum += (Double(i) / Double(number.max()!) * 100)
}

print(sum / Double(count))
