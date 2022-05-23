//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/05/12.
//

// 메모리: 69104KB, 시간: 8ms, 코드 길이: 171B
var input = readLine()!.split(separator: " ").map {
    Int(String($0))!
}

var time = (input[0] * 60 + input[1] - 45) + 24 * 60

print("\((time / 60) % 24) \(time % 60)")

/*
 메모리: 69104KB, 시간: 8ms, 코드 길이: 245B
 var input = readLine()!.split(separator: " ").map {
     Int(String($0))!
 }

 var h = input[0]
 var m = input[1]

 if m >= 45 {
     print("\(h) \(m - 45)")
 }
 else if h > 0 {
     print("\(h - 1) \(m + 15)")
 }
 else {
     print("\(h + 23) \(m + 15)")
 }
 */
