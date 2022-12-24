//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/05/16.
//

// 메모리: 70092KB, 시간: 32ms, 코드 길이: 99B
var input = Int(readLine()!)!

var str = ""

for i in 1...input {
    str += "\(i)\n"
}

print(str)

/*
 메모리: 69100KB, 시간: 60ms, 코드 길이: 71B
 var input = Int(readLine()!)!

 for i in 1...input {
     print("\(i)")
 }
 */

/*
 메모리: 69100KB, 시간: 88ms, 코드 길이: 66B
 var input = Int(readLine()!)!

 for i in 1...input {
     print(i)
 }
 */
