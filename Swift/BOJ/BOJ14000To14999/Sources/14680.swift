//
//  14680.swift
//  BOJ14000To14999
//
//  Created by 김이안 on 3/19/26.
//

//  문제 링크: https://www.acmicpc.net/problem/14680
//  알고리즘 분류: 수학, 구현, 선형대수학

import Shared

public struct BOJ14680: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 136ms, 코드 길이: 1264B
        let N = Int(readLine()!)!
        var prevMatrix = [[Int]]()
        var isAvailable = true
        var sum = 0

        for idx in 0..<N {
            let XY = readLine()!.split(separator: " ").map { Int($0)! }
            var curMatrix = Array(repeating: Array(repeating: 0, count: XY[1]), count: XY[0])

            for row in 0..<XY[0] {
                curMatrix[row] = readLine()!.split(separator: " ").map { Int($0)! }
            }

            if idx == 0 {
                prevMatrix = curMatrix
            } else if idx > 0 && isAvailable {
                if prevMatrix[0].count != curMatrix.count {
                    isAvailable = false
                    continue
                }

                let targetCount = (row: prevMatrix.count, col: curMatrix[0].count)
                var matrixMul = Array(repeating: Array(repeating: 0, count: targetCount.col), count: targetCount.row)

                for row in 0..<targetCount.row {
                    for col in 0..<targetCount.col {
                        for num in 0..<curMatrix.count {
                            matrixMul[row][col] = (prevMatrix[row][num] * curMatrix[num][col] + matrixMul[row][col]) % 1000000007
                        }
                    }
                }

                prevMatrix = matrixMul
            }
        }

        for row in prevMatrix.indices {
            for col in prevMatrix[0].indices {
                sum = (prevMatrix[row][col] + sum) % 1000000007
            }
        }

        print(isAvailable ? sum : -1)
    }
}
