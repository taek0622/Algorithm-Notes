//
//  17404.swift
//  BOJ17000To17999
//
//  Created by 김이안 on 4/5/26.
//

//  문제 링크: https://www.acmicpc.net/problem/17404
//  알고리즘 분류: 다이나믹 프로그래밍

import Shared

public struct BOJ17404: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69240KB, 시간: 8ms, 코드 길이: 946B
        let N = Int(readLine()!)!
        var redStartDp = Array(repeating: Array(repeating: 1001, count: 3), count: N)
        var greenStartDp = redStartDp
        var blueStartDp = redStartDp

        for house in 0..<N {
            let cost = readLine()!.split(separator: " ").map { Int($0)! }

            if house == 0 {
                redStartDp[0][0] = cost[0]
                greenStartDp[0][1] = cost[1]
                blueStartDp[0][2] = cost[2]
                continue
            }

            for color in 0..<3 {
                redStartDp[house][color] = cost[color] + min(redStartDp[house-1][(color+1)%3], redStartDp[house-1][(color+2)%3])
                greenStartDp[house][color] = cost[color] + min(greenStartDp[house-1][(color+1)%3], greenStartDp[house-1][(color+2)%3])
                blueStartDp[house][color] = cost[color] + min(blueStartDp[house-1][(color+1)%3], blueStartDp[house-1][(color+2)%3])
            }
        }

        print(min(redStartDp[N-1][1], redStartDp[N-1][2], greenStartDp[N-1][0], greenStartDp[N-1][2], blueStartDp[N-1][0], blueStartDp[N-1][1]))
    }
}
