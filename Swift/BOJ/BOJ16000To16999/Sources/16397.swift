//
//  16397.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/8/24.
//

//  문제 링크: https://www.acmicpc.net/problem/16397
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색

import Shared

public struct BOJ16397: Solvable {
    public init() {}

    public func run() {
        // 메모리: 74324KB, 시간: 28ms, 코드 길이: 754B
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let (N, T, G) = (input[0], input[1], input[2])
        var queue = [(N, 0)]
        var idx = 0
        var visited = Set([N])
        var result = "ANG"

        while idx < queue.count {
            let (now, count) = queue[idx]
            idx += 1

            if count > T {
                break
            }

            if now == G {
                result = "\(count)"
                break
            }

            if now+1 <= 99999 && visited.insert(now+1).inserted {
                queue.append((now+1, count+1))
            }

            if now*2 <= 99999 {
                var maxNum = 1

                while (now*2) % maxNum != (now*2) {
                    maxNum *= 10
                }

                maxNum /= 10

                if visited.insert(now*2-maxNum).inserted {
                    queue.append((now*2-maxNum, count+1))
                }
            }
        }

        print(result)
    }
}
