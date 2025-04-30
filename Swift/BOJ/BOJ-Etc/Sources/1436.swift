//
//  1436.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/07.
//

// 문제: https://www.acmicpc.net/problem/1436

class BOJ1436: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 36ms, 코드 길이: 305B
        let N = Int(readLine()!)!
        var count = 0

        for numRange in 666...10000000 {
            var number = numRange

            while number >= 666 {
                if number % 1000 == 666 {
                    count += 1
                    break
                }
                number /= 10
            }

            if count == N {
                print(numRange)
                break
            }
        }
    }
}
