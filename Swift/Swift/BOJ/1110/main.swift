//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/05/22.
//

// 메모리: 69100KB, 시간: 8ms, 코드 길이: 220B
var input = Int(readLine()!)!
var temp = input
var cnt = 0
repeat {
    let tempTen = temp / 10
    let tempOne = temp % 10
    temp = tempOne * 10 + (tempTen + tempOne) % 10
    cnt += 1
} while input != temp
print(cnt)

/*
 메모리: 69100KB, 시간: 8ms, 코드 길이: 280B
 var input = Int(readLine()!)!
 var tempTen = 0
 var tempOne = 0
 var temp = input
 var cnt = 0

 while true {
     tempTen = temp / 10
     tempOne = temp % 10
     temp = tempOne * 10 + (tempTen + tempOne) % 10
     cnt += 1
     if input == temp {
         print(cnt)
         break
     }
 }
 */
