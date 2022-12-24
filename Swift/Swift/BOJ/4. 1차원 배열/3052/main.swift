//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/05/26.
//

// 메모리: 69104KB, 시간: 8ms, 코드 길이: 61B
print(Set((0...9).map { _ in Int(readLine()!)! % 42 }).count)

/*
 메모리: 69100KB, 시간: 8ms, 코드 길이: 124B
 var set: Set = Set<Int>()

 for _ in 0...9 {
     let input = Int(readLine()!)!
     set.insert(input % 42)
 }

 print(set.count)
 */
