//
//  8393.swift
//  Swift
//
//  Created by 김민택 on 2022/05/13.
//

// 문제: https://www.acmicpc.net/problem/8393

class BOJ8393 {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 66B
        let input = Int(readLine()!)!

        print("\(input * (input + 1) / 2)")

        /*
         메모리: 69100KB, 시간: 8ms, 코드 길이: 100B
         var input = Int(readLine()!)!

         var result = 0

         for i in 1...input {
             result += i
         }

         print(result)
         */
    }
}
