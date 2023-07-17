//
//  2740.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/17.
//

// 문제: https://www.acmicpc.net/problem/2740

class BOJ2740: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69240KB, 시간: 28ms, 코드 길이: 796B
    private func solution1() {
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        var A = Array(repeating: Array(repeating: 0, count: NM[1]), count: NM[0])

        for idx in 0..<NM[0] {
            A[idx] = readLine()!.split(separator: " ").map { Int(String($0))! }
        }

        let MK = readLine()!.split(separator: " ").map { Int(String($0))! }
        var B = Array(repeating: Array(repeating: 0, count: MK[1]), count: MK[0])

        for idx in 0..<MK[0] {
            B[idx] = readLine()!.split(separator: " ").map { Int(String($0))! }
        }

        var result = Array(repeating: Array(repeating: 0, count: MK[1]), count: NM[0])

        for n in 0..<NM[0] {
            for k in 0..<MK[1] {
                for m in 0..<NM[1] {
                    result[n][k] += A[n][m] * B[m][k]
                }
            }
        }

        for idx in result.indices {
            print(result[idx].map { String($0) }.joined(separator: " "))
        }
    }

    // 메모리: 69108KB, 시간: 16ms, 코드 길이: 687B
    private func solution2() {
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        var A = Array(repeating: Array(repeating: 0, count: NM[1]), count: NM[0])

        for idx in 0..<NM[0] {
            A[idx] = readLine()!.split(separator: " ").map { Int(String($0))! }
        }

        let MK = readLine()!.split(separator: " ").map { Int(String($0))! }
        var B = Array(repeating: Array(repeating: 0, count: MK[1]), count: MK[0])

        for idx in 0..<MK[0] {
            B[idx] = readLine()!.split(separator: " ").map { Int(String($0))! }
        }

        for n in 0..<NM[0] {
            for k in 0..<MK[1] {
                var sum = 0

                for m in 0..<NM[1] {
                    sum += A[n][m] * B[m][k]
                }

                print("\(sum) ", terminator: "")
            }

            print()
        }
    }
}
