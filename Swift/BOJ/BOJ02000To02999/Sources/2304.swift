//
//  2304.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/20/25.
//

//  문제 링크: https://www.acmicpc.net/problem/2304
//  알고리즘 분류: 구현, 자료 구조, 브루트포스 알고리즘

import Shared

public struct BOJ2304: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 883B
        let N = Int(readLine()!)!
        var pillars = [(Int, Int)]()
        var area = 0

        for _ in 0..<N {
            let LH = readLine()!.split(separator: " ").map { Int($0)! }
            pillars.append((LH[0], LH[1]))
        }

        pillars.sort { $0.0 < $1.0 }
        let maxHeight = pillars.max { $0.1 < $1.1 }!.1
        let (firstMax, lastMax) = (pillars.firstIndex(where: { $0.1 == maxHeight })!, pillars.lastIndex(where: { $0.1 == maxHeight })!)

        for idx in 0..<firstMax {
            area += (pillars[idx+1].0 - pillars[idx].0) * pillars[idx].1

            if pillars[idx+1].1 < pillars[idx].1 {
                pillars[idx+1].1 = pillars[idx].1
            }
        }

        for idx in stride(from: pillars.count - 1, to: lastMax, by: -1) {
            area += (pillars[idx].0 - pillars[idx-1].0) * pillars[idx].1

            if pillars[idx-1].1 < pillars[idx].1 {
                pillars[idx-1].1 = pillars[idx].1
            }
        }

        area += (pillars[lastMax].0 - pillars[firstMax].0 + 1) * maxHeight
        print(area)
    }
}
