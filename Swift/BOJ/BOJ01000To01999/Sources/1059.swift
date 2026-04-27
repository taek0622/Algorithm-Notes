//
//  1059.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/07/27.
//

// 문제: https://www.acmicpc.net/problem/1059

import Shared

public struct BOJ1059: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 585B
        let L = Int(readLine()!)!
        let S = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
        let n = Int(readLine()!)!
        var numbers = [Int]()
        var count = 0

        for idx in 0..<S.count - 1 {
            if S[idx]...S[idx + 1] ~= n {
                numbers = Array(S[idx]...S[idx + 1])
                break
            }
        }

        if numbers.isEmpty {
            numbers = Array(1..<S[0])
        } else {
            numbers.removeFirst()
            numbers.removeLast()
        }


        for start in numbers.indices {
            for end in start+1..<numbers.count {
                if numbers[start]...numbers[end] ~= n {
                    count += 1
                }
            }
        }

        print(count)
    }
}
