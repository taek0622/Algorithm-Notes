//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/05/11.
//

// 메모리: 69104KB, 시간: 8ms, 코드 길이: 142B
var input = readLine()!.split(separator: " ").map {
    Int($0)!
}

var a = input[0]
var b = input[1]

print(a > b ? ">" : a < b ? "<" : "==")

/*
 메모리: 69104KB, 시간: 8ms, 코드 길이: 191B
 var input = readLine()!.split(separator: " ").map {
     Int($0)!
 }

 var a = input[0]
 var b = input[1]

 if a > b {
     print(">")
 }

 if a < b {
     print("<")
 }

 if a == b {
     print("==")
 }
 */
