//
//  9358.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/22/25.
//

//  문제 링크: https://www.acmicpc.net/problem/9358
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ9358: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 4ms, 코드 길이: 451B
        let T = Int(readLine()!)!

        for seq in 1...T {
            var N = Int(readLine()!)!
            var array = readLine()!.split(separator: " ").map { Int($0)! }

            while N > 2 {
                var newArray = Array(repeating: 0, count: (N-1)/2+1)

                for idx in 0..<(N-1)/2+1 {
                    newArray[idx] = array[idx] + array[N-idx-1]
                }

                array = newArray
                N = array.count
            }

            print("Case #\(seq): \(array[0] > array[1] ? "Alice" : "Bob")")
        }
    }
}
