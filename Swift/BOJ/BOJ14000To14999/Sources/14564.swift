//
//  14564.swift
//  BOJ14000To14999
//
//  Created by 김민택 on 12/15/25.
//

//  문제 링크: https://www.acmicpc.net/problem/14564
//  알고리즘 분류: 수학, 구현, 시뮬레이션

import Shared

public struct BOJ14564: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 16ms, 코드 길이: 466B
        let NMA = readLine()!.split(separator: " ").map { Int($0)! }
        let mo = NMA[1] / 2 + 1
        var cur = NMA[2]

        for _ in 0..<10000 {
            let next = Int(readLine()!)!

            if next > mo {
                cur += next - mo

                if cur > NMA[0] {
                    cur -= NMA[0]
                }

                print(cur)
            } else if next < mo {
                cur -= mo - next

                if cur <= 0 {
                    cur += NMA[0]
                }

                print(cur)
            } else {
                print(0)
                break
            }
        }
    }
}
