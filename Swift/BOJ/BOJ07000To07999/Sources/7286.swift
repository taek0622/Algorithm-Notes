//
//  7286.swift
//  BOJ07000To07999
//
//  Created by 김민택 on 2/9/26.
//

//  문제 링크: https://www.acmicpc.net/problem/7286
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ7286: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 398B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let t = Int(readLine()!)!
            var times = Array(repeating: 0, count: 1001)

            for _ in 0..<t {
                let input = readLine()!.split(separator: " ").map { String($0) }

                for idx in Int(input[1])!..<Int(input[2])! {
                    times[idx] += 1
                }
            }

            print(times.map { $0 > 0 ? String(UnicodeScalar($0 + 64)!) : "" }.joined())
        }
    }
}
