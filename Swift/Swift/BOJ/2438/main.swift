//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/05/17.
//

// 메모리: 69100KB, 시간: 8ms, 코드 길이: 78B
for i in 1...Int(readLine()!)! {
    print(String(repeating: "*", count: i))
}

/*
 메모리: 69100KB, 시간: 8ms, 코드 길이: 97B
 var input = Int(readLine()!)!

 for i in 1...input {
     print(String(repeating: "*", count: i))
 }
 */

/*
 메모리: 69100KB, 시간: 12ms, 코드 길이: 129B
 var input = Int(readLine()!)!

 for i in 1...input {
     for _ in 1...i {
         print("*", terminator: "")
     }
     print("")
 }
 */
