//
//  8980.swift
//  BOJ08000To08999
//
//  Created by 김이안 on 4/19/26.
//

//  문제 링크: https://www.acmicpc.net/problem/8980
//  알고리즘 분류: 그리디 알고리즘, 정렬

import Shared

public struct BOJ8980: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69488KB, 시간: 44ms, 코드 길이: 684B
        let NC = readLine()!.split(separator: " ").map { Int($0)! }
        let M = Int(readLine()!)!
        var box = Array(repeating: (0, 0, 0), count: M)
        var status = Array(repeating: 0, count: NC[0]+1)
        var maxCount = 0

        for idx in 0..<M {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            box[idx] = (input[0], input[1], input[2])
        }

        box.sort { $0.1 < $1.1 }

        for idx in box.indices {
            var minRemain = Int.max

            for vill in box[idx].0..<box[idx].1 {
                minRemain = min(NC[1] - status[vill], minRemain)
            }

            let carry = min(minRemain, box[idx].2)
            maxCount += carry

            for vill in box[idx].0..<box[idx].1 {
                status[vill] += carry
            }
        }

        print(maxCount)
    }
}
