//
//  9613.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/13.
//

// 문제: https://www.acmicpc.net/problem/9613

class BOJ9613: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 467KB
        let n = Int(readLine()!)!

        for _ in 0..<n {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            var sum = 0

            for baseIdx in 1..<input.count {
                for compareIdx in baseIdx+1..<input.count {
                    sum += gcd(input[baseIdx], input[compareIdx])
                }
            }

            print(sum)
        }

        func gcd(_ baseNumber: Int, _ compareNumber: Int) -> Int {
            return baseNumber == 0 ? compareNumber : gcd(compareNumber % baseNumber, baseNumber)
        }
    }
}
