//
//  main.swift
//  Swift
//
//  Created by 김민택 on 2022/05/19.
//

// 메모리: 69104KB, 시간: 8ms, 코드 길이: 132B
while let input = readLine(), input != "0 0" {
    print(input.split(separator: " ").compactMap { Int(String($0))! }.reduce(0, +))
}

/*
 메모리: 69104KB, 시간: 8ms, 코드 길이: 284B
 var sum: [Int] = []

 while true {
     var input = readLine()!.split(separator: " ").compactMap { Int(String($0))! }
     
     if input[0] == 0 && input[1] == 0 {
         break
     }
     
     sum.append(input[0] + input[1])
 }

 print(sum.compactMap { String($0) }.joined(separator: " "))
 */
