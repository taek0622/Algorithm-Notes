//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/05/22.
//

// 메모리: 69014KB, 시간: 8ms, 코드 길이: 108B
while let input = readLine() {
    print(input.split(separator: " ").map{ Int(String($0))! }.reduce(0, +))
}

/*
 메모리: 69104KB, 시간: 12ms, 코드 길이: 110B
 while let input = readLine()?.split(separator: " ").map { Int(String($0))! }.reduce(0, +) {
     print(input)
 }
 */

/*
 메모리: 69104KB, 시간: 8ms, 코드 길이: 144B
 while let input = readLine() {
     let num = input.split(separator: " ").map { Int(String($0))! }
     let sum = num[0] + num[1]
     print(sum)
 }
 */
