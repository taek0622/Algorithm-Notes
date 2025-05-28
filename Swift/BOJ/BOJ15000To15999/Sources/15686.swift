//
//  15686.swift
//  BOJ15000To15999
//
//  Created by 김민택 on 5/28/25.
//

//  문제 링크: https://www.acmicpc.net/problem/15686
//  알고리즘 분류: 구현, 브루트포스 알고리즘, 백트래킹

import Shared

public struct BOJ15686: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 1486B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var houses = [(Int, Int)]()
        var chickens = [(Int, Int)]()
        var minDistance = Int.max

        for row in 0..<NM[0] {
            let input = readLine()!.split(separator: " ").map { String($0) }

            for col in 0..<NM[0] {
                if input[col] == "1" {
                    houses.append((row, col))
                } else if input[col] == "2" {
                    chickens.append((row, col))
                }
            }
        }

        var distances = Array(repeating: Array(repeating: 0, count: chickens.count), count: houses.count)

        for hIdx in houses.indices {
            for cIdx in chickens.indices {
                let (rowDiff, colDiff) = (chickens[cIdx].0 - houses[hIdx].0, chickens[cIdx].1 - houses[hIdx].1)
                distances[hIdx][cIdx] = (rowDiff > 0 ? rowDiff : -rowDiff) + (colDiff > 0 ? colDiff : -colDiff)
            }
        }

        for idx in 0...chickens.count - NM[1] {
            minDistance = min(minDistance, selectDistance([idx]))
        }

        print(minDistance)

        func selectDistance(_ selected: [Int]) -> Int {
            if selected.count == NM[1] {
                var sum = 0

                for hIdx in houses.indices {
                    var distance = Int.max

                    for select in selected {
                        distance = min(distance, distances[hIdx][select])
                    }

                    sum += distance
                }

                return sum
            }

            var minDistance = Int.max

            for idx in chickens.indices where idx > selected.last! {
                minDistance = min(minDistance, selectDistance(selected + [idx]))
            }

            return minDistance
        }
    }
}
