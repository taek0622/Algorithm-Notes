//
//  26392.swift
//  BOJ26000To26999
//
//  Created by 김민택 on 2/20/26.
//

//  문제 링크: https://www.acmicpc.net/problem/26392
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ26392: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 304B
        let nrs = readLine()!.split(separator: " ").map { Int($0)! }

        for _ in 0..<nrs[0] {
            var (mini, maxi) = (50, 0)

            for row in 0..<nrs[1] where readLine()!.map { $0 == "#" }.contains(true) {
                mini = min(mini, nrs[1] - row)
                maxi = max(maxi, nrs[1] - row)
            }

            print(maxi - mini)
        }
    }
}
