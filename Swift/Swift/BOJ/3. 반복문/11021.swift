//
//  11021.swift
//  Swift
//
//  Created by 김민택 on 2022/05/16.
//

// 문제: https://www.acmicpc.net/problem/11021

class BOJ11021 {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 175B
        let input = Int(readLine()!)!

        for i in 0..<input {
            let num = readLine()!.split(separator: " ").map { Int(String($0))! }.reduce(0, +)
            print("Case #\(i + 1): \(num)")
        }

        /*
         메모리: 69104KB, 시간: 12ms, 코드 길이: 153B
         let input = Int(readLine()!)!

         for i in 1...input {
             print("Case #\(i): \(readLine()!.split(separator: " ").map { Int(String($0))! }.reduce(0, +))")
         }
         */

        /*
         메모리: 69104KB, 시간: 12ms, 코드 길이: 174B
         let input = Int(readLine()!)!

         for i in 0..<input {
             let num = readLine()!.split(separator: " ").map { Int(String($0))! }
             print("Case #\(i + 1): \(num[0] + num[1])")
         }
         */
    }
}
