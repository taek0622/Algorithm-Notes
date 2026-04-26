//
//  1477.swift
//  BOJ01000To01999
//
//  Created by 김이안 on 4/26/26.
//

//  문제 링크: https://www.acmicpc.net/problem/1477
//  알고리즘 분류: 이분 탐색, 매개 변수 탐색

import Shared

public struct BOJ1477: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 4ms, 코드 길이: 550B
        let NML = readLine()!.split(separator: " ").map { Int($0)! }
        var restArea = [0, NML[2]]

        if NML[0] != 0 {
            restArea += readLine()!.split(separator: " ").map { Int($0)! }
        }

        restArea.sort()

        var left = 1
        var right = NML[2]

        while left < right {
            let mid = (left + right) / 2
            var needRest = 0

            for idx in 1...NML[0]+1 where restArea[idx] - restArea[idx-1] > mid {
                needRest += (restArea[idx] - restArea[idx-1] - 1) / mid
            }

            if needRest > NML[1] {
                left = mid + 1
            } else {
                right = mid
            }
        }

        print(left)
    }
}
