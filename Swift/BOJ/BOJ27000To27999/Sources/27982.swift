//
//  27982.swift
//  BOJ27000To27999
//
//  Created by 김민택 on 12/9/25.
//

//  문제 링크: https://www.acmicpc.net/problem/27982
//  알고리즘 분류: 구현

import Shared

public struct BOJ27982: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 790B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        let (N, M) = (NM[0], NM[1])
        var space = Array(repeating: Array(repeating: Array(repeating: false, count: N+1), count: N+1), count: N+1)
        var coords = Array(repeating: (0, 0, 0), count: M)
        var count = 0

        for idx in 0..<M {
            let coord = readLine()!.split(separator: " ").map { Int($0)! }
            space[coord[0]][coord[1]][coord[2]] = true
            coords[idx] = (coord[0], coord[1], coord[2])
        }

        for coord in coords where 1..<N ~= coord.0 && 1..<N ~= coord.1 && 1..<N ~= coord.2 && space[coord.0-1][coord.1][coord.2] && space[coord.0+1][coord.1][coord.2] && space[coord.0][coord.1-1][coord.2] && space[coord.0][coord.1+1][coord.2] && space[coord.0][coord.1][coord.2-1] && space[coord.0][coord.1][coord.2+1] {
            count += 1
        }

        print(count)
    }
}
