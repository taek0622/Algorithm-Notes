//
//  2470.swift
//  BOJ02000To02999
//
//  Created by 김이안 on 3/24/26.
//

//  문제 링크: https://www.acmicpc.net/problem/2470
//  알고리즘 분류: 정렬, 이분 탐색, 두 포인터

import Shared

public struct BOJ2470: Solvable {
    public init() {}

    public func run() {
        // 메모리: 78352KB, 시간: 60ms, 코드 길이: 579B
        let N = Int(readLine()!)!
        let liquids = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
        var fIdx = 0
        var bIdx = N-1
        var material = (liquids[0], liquids[N-1])
        var materialSum = abs(material.0 + material.1)

        while fIdx < bIdx {
            let curSum = liquids[fIdx] + liquids[bIdx]
            let curAbs = abs(curSum)

            if curAbs < materialSum {
                material = (liquids[fIdx], liquids[bIdx])
                materialSum = curAbs
            }

            if curSum < 0 {
                fIdx += 1
            } else if curSum > 0 {
                bIdx -= 1
            } else {
                break
            }
        }

        print(material.0, material.1)
    }
}
