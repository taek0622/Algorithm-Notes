//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/05/17.
//

// 메모리: 70012KB, 시간: 16ms, 코드 길이: 225B
var input = readLine()!.split(separator: " ").compactMap { Int(String($0))! }[1]

print(readLine()!.split(separator: " ").compactMap { Int(String($0))! }.filter { $0 < input }.compactMap { String($0) }.joined(separator: " "))

/*
 메모리: 70012KB, 시간: 20ms, 코드 길이: 281B
 var input = readLine()!.split(separator: " ").compactMap {
     Int(String($0))!
 }

 var intArray = readLine()!.split(separator: " ").compactMap {
     Int(String($0))!
 }

 for i in 0..<input[0] {
     if input[1] > intArray[i] {
         print("\(intArray[i])", terminator: " ")
     }
 }
 */
