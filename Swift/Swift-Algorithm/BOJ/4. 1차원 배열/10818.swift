//
//  10818.swift
//  Swift
//
//  Created by 김민택 on 2022/05/25.
//

// 문제: https://www.acmicpc.net/problem/10818

import Foundation

class BOJ10818: Solvable {
    func run() {
        solution1()
    }

    // 메모리: 133696KB, 시간: 452ms, 코드 길이: 259B
    private func solution1() {
        let n = Int(readLine()!)!
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }

        var min = input[0]
        var max = input[0]

        for i in input {
            if i <= min {
                min = i
            }
            if i >= max {
                max = i
            }
        }

        print("\(min) \(max)")
    }

    // 메모리: 93592KB, 시간: 108ms, 코드 길이: 679B
    // 출처: https://www.acmicpc.net/source/34160561
    private func solution2() {
        let b: [UInt8] = Array(try! FileHandle.standardInput.readToEnd()!)
        var max = 0, min = 0, n = 0
        var isN = false
        for (i, value) in b.enumerated() {
            if i > 1 {
                if value == 45 {
                    isN = true
                } else if value == 32 ||  value == 10 {
                    if isN {
                        n = -n
                    }
                    if (max,min) == (0,0) { max = n; min = n}
                    if n > max {
                        max = n
                    } else if min == 0 || min > n {
                        min = n
                    }
                    n = 0
                    isN = false
                } else {
                    let v = Int(value-48)
                    n = n * 10 + v
                }
            }
        }
        print("\(min) \(max)")
    }
}
