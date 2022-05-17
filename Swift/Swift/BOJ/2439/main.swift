//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/05/17.
//

// 메모리: 69100KB, 시간: 12ms, 코드 길이: 145B
var input = Int(readLine()!)!

for i in 1...input {
    print("\(String(repeating: " ", count: input - i))\(String(repeating: "*", count: i))")
}

/*
 메모리: 69100KB, 시간: 12ms, 코드 길이: 165B
 var input = Int(readLine()!)!

 for i in 1...input {
     print(String(repeating: " ", count: input - i), terminator: "")
     print(String(repeating: "*", count: i))
 }
 */
