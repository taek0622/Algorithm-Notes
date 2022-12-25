//
//  2480.swift
//  Swift
//
//  Created by 김민택 on 2022/05/13.
//

// 문제: https://www.acmicpc.net/problem/2480

class BOJ2480 {
    func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 253B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
        let set = Set(input)

        if set.count == 1 {
            print(10000 + input[0] * 1000)
        }
        else if set.count == 2 {
            print(1000 + input[1] * 100)
        }
        else {
            print(input[2] * 100)
        }

        /*
         메모리: 69108KB, 시간: 8ms, 코드 길이: 299B
         let input = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

         if input[0] == input[1] && input[0] == input[2] {
             print("\(input[0] * 1000 + 10000)")
         }
         else if input[0] == input[1] || input[1] == input[2] {
             print("\(input[1] * 100 + 1000)")
         }
         else {
             print("\(input[2] * 100)")
         }
         */

    }
}
