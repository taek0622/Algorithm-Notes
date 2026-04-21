//
//  2666.swift
//  BOJ02000To02999
//
//  Created by 김이안 on 4/21/26.
//

//  문제 링크: https://www.acmicpc.net/problem/2666
//  알고리즘 분류: 다이나믹 프로그래밍, 브루트포스 알고리즘

import Shared

public struct BOJ2666: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69116KB, 시간: 8ms, 코드 길이: 2079B
        let closetCount = Int(readLine()!)!
        let openedCloset = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
        let usingCount = Int(readLine()!)!
        var usingCloset = Array(repeating: 0, count: usingCount)
        var move = Array(repeating: Array(repeating: Array(repeating: Int.max, count: closetCount+1), count: closetCount+1), count: usingCount+1)
        var minMove = Int.max

        for idx in 0..<usingCount {
            usingCloset[idx] = Int(readLine()!)!
        }

        move[0][openedCloset[0]][openedCloset[1]] = 0

        var queue = [(0, openedCloset[0], openedCloset[1])]
        var idx = 0

        while idx < queue.count {
            let (step, open1, open2) = queue[idx]
            idx += 1

            if step == usingCount {
                minMove = min(minMove, move[step][open1][open2])
                continue
            }

            let target = usingCloset[step]

            if open1 == target || open2 == target {
                if move[step+1][open1][open2] == Int.max {
                    queue.append((step+1, open1, open2))
                }

                move[step+1][open1][open2] = min(move[step+1][open1][open2], move[step][open1][open2])
            } else if open1 < target && target < open2 {
                if move[step+1][open1][target] == Int.max {
                    queue.append((step+1, open1, target))
                }

                if move[step+1][target][open2] == Int.max {
                    queue.append((step+1, target, open2))
                }

                move[step+1][open1][target] = min(move[step+1][open1][target], move[step][open1][open2] + (open2 - target))
                move[step+1][target][open2] = min(move[step+1][target][open2], move[step][open1][open2] + (target - open1))
            } else if open2 < target {
                if move[step+1][open1][target] == Int.max {
                    queue.append((step+1, open1, target))
                }

                move[step+1][open1][target] = min(move[step+1][open1][target], move[step][open1][open2] + (target - open2))
            } else if target < open1 {
                if move[step+1][target][open2] == Int.max {
                    queue.append((step+1, target, open2))
                }

                move[step+1][target][open2] = min(move[step+1][target][open2], move[step][open1][open2] + (open1 - target))
            }
        }

        print(minMove)
    }
}
