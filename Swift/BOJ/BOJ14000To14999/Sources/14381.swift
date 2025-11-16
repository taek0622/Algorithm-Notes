//
//  14381.swift
//  BOJ14000To14999
//
//  Created by 김민택 on 11/16/25.
//

//  문제 링크: https://www.acmicpc.net/problem/14381
//  알고리즘 분류: 구현, 브루트포스 알고리즘, 시뮬레이션

import Shared

public struct BOJ14381: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 356B
        let T = Int(readLine()!)!

        for c in 1...T {
            let N = Int(readLine()!)!
            var num = N
            var set = Set<Character>()

            if N == 0 {
                print("Case #\(c): INSOMNIA")
                continue
            }

            while set.count < 10 {
                for n in String(num) {
                    set.insert(n)
                }

                num += N
            }

            print("Case #\(c): \(num - N)")
        }
    }
}
