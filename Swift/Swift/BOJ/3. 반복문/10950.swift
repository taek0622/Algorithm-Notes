//
//  10950.swift
//  Swift
//
//  Created by 김민택 on 2022/05/13.
//

// 문제: https://www.acmicpc.net/problem/10950

class BOJ10950 {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 123B
        let cnt = Int(readLine()!)!

        for _ in 0..<cnt {
            print(readLine()!.split(separator: " ").map{ Int($0)! }.reduce(0, +))
        }

        /*
         메모리: 69104KB, 시간: 8ms, 코드 길이: 237B
         let cnt = Int(readLine()!)!

         var number: Array<Int> = Array()

         for _ in 0..<cnt {
             let input = readLine()!.split(separator: " ").map { Int($0)! }
             number.append(input[0] + input[1])
         }

         for i in 0..<cnt {
             print("\(number[i])")
         }
         */
    }
}
