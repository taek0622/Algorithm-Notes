//
//  3985.swift
//  BOJ03000To03999
//
//  Created by 김민택 on 6/25/25.
//

//  문제 링크: https://www.acmicpc.net/problem/3985
//  알고리즘 분류: 구현, 시뮬레이션

import Shared

public struct BOJ3985: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 509B
        let L = Int(readLine()!)!
        var set = Set(1...L)
        let N = Int(readLine()!)!
        var expect = (0, 0)
        var result = (0, 0)

        for idx in 1...N {
            let PK = readLine()!.split(separator: " ").map { Int($0)! }
            let diff = PK[1] - PK[0]
            var count = 0

            if diff > expect.0 {
                expect = (diff, idx)
            }

            for num in PK[0]...PK[1] where set.contains(num) {
                count += 1
                set.remove(num)
            }

            if count > result.0 {
                result = (count, idx)
            }
        }

        print("\(expect.1)\n\(result.1)")
    }
}
