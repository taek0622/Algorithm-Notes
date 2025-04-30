//
//  10655.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/26/25.
//

//  문제 링크: https://www.acmicpc.net/problem/10655
//  알고리즘 분류: 구현, 브루트포스 알고리즘, 기하학

class BOJ10655: Solvable {
    func run() {
        // 메모리: 72240KB, 시간: 120ms, 코드 길이: 1410B
        let N = Int(readLine()!)!
        var checkPoints = Array(repeating: (0, 0), count: N)
        var distance = Array(repeating: 0, count: N)
        var removeDistance = Array(repeating: 0, count: N)
        var maxDiff = (0, -2001)

        for idx in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            checkPoints[idx] = (input[0], input[1])

            if idx > 0 {
                let xDiff = checkPoints[idx].0 - checkPoints[idx-1].0 > 0 ? checkPoints[idx].0 - checkPoints[idx-1].0 : -(checkPoints[idx].0 - checkPoints[idx-1].0)
                let yDiff = checkPoints[idx].1 - checkPoints[idx-1].1 > 0 ? checkPoints[idx].1 - checkPoints[idx-1].1 : -(checkPoints[idx].1 - checkPoints[idx-1].1)
                distance[idx] = xDiff + yDiff

                if idx > 1 {
                    let removeXDiff = checkPoints[idx].0 - checkPoints[idx-2].0 > 0 ? checkPoints[idx].0 - checkPoints[idx-2].0 : -(checkPoints[idx].0 - checkPoints[idx-2].0)
                    let removeYDiff = checkPoints[idx].1 - checkPoints[idx-2].1 > 0 ? checkPoints[idx].1 - checkPoints[idx-2].1 : -(checkPoints[idx].1 - checkPoints[idx-2].1)
                    removeDistance[idx-1] = removeXDiff + removeYDiff
                    let diff = (distance[idx] + distance[idx-1]) - removeDistance[idx-1]

                    if maxDiff.1 < diff {
                        maxDiff = (idx-1, diff)
                    }
                }
            }
        }

        print(distance.reduce(0, +) - distance[maxDiff.0] - distance[maxDiff.0+1] + removeDistance[maxDiff.0])
    }
}
