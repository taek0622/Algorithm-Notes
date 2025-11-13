//
//  7513.swift
//  BOJ07000To07999
//
//  Created by 김민택 on 11/13/25.
//

//  문제 링크: https://www.acmicpc.net/problem/7287
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ7513: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 411B
        let T = Int(readLine()!)!

        for scene in 1...T {
            let m = Int(readLine()!)!
            var words = Array(repeating: "", count: m)

            for idx in 0..<m {
                words[idx] = readLine()!
            }

            let n = Int(readLine()!)!
            print("Scenario #\(scene):")

            for _ in 0..<n {
                let k = readLine()!.split(separator: " ").map { Int($0)! }
                print(k[1...].map { words[$0] }.joined())
            }

            print()
        }
    }
}
