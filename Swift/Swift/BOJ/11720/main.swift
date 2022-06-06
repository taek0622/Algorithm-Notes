//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/06/06.
//

// 메모리: 69100KB, 시간: 8ms, 코드 길이: 93B
let input = Int(readLine()!)!

print(Array(readLine()!).map{ Int(String($0))! }.reduce(0, +))

/*
메모리: 69100KB, 시간: 12ms, 코드 길이: 162B
let input = Int(readLine()!)!

let intString = Array(readLine()!).map{ Int(String($0))! }

var sum = 0

for i in 0..<input {
    sum += intString[i]
}

print(sum)
 */
