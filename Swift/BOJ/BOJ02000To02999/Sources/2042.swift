//
//  2042.swift
//  BOJ02000To02999
//
//  Created by 김이안 on 3/26/26.
//

//  문제 링크: https://www.acmicpc.net/problem/2042
//  알고리즘 분류: 자료 구조, 세그먼트 트리

import Shared

public struct BOJ2042: Solvable {
    public init() {}

    public func run() {
        // 메모리: 108176KB, 시간: 572ms, 코드 길이: 1765B
        let NMK = readLine()!.split(separator: " ").map { Int($0)! }
        var nums = Array(repeating: 0, count: NMK[0])
        var tree = Array(repeating: 0, count: NMK[0]*4+1)

        for idx in 0..<NMK[0] {
            nums[idx] = Int(readLine()!)!
        }

        _ = initNodeValue(1, 0, NMK[0]-1)

        for _ in 0..<NMK[1]+NMK[2] {
            let abc = readLine()!.split(separator: " ").map { Int($0)! }

            if abc[0] == 1 {
                nums[abc[1] - 1] = abc[2]
                _ = updateNodeValue(1, 0, NMK[0]-1, abc[1]-1)
            } else {
                print(getNodeValue(1, 0, NMK[0]-1, abc[1]-1, abc[2]-1))
            }
        }

        func initNodeValue(_ nodeIdx: Int, _ start: Int, _ end: Int) -> Int {
            if start == end {
                tree[nodeIdx] = nums[start]
            } else {
                let mid = (start + end) / 2
                tree[nodeIdx] = initNodeValue(nodeIdx * 2, start, mid) + initNodeValue(nodeIdx * 2 + 1, mid + 1, end)
            }

            return tree[nodeIdx]
        }

        func updateNodeValue(_ nodeIdx: Int, _ start: Int, _ end: Int, _ target: Int) -> Int {
            if start == end && start == target {
                tree[nodeIdx] = nums[target]
            } else if start...end ~= target {
                let mid = (start + end) / 2
                tree[nodeIdx] = updateNodeValue(nodeIdx * 2, start, mid, target) + updateNodeValue(nodeIdx * 2 + 1, mid + 1, end, target)
            }

            return tree[nodeIdx]
        }

        func getNodeValue(_ nodeIdx: Int, _ start: Int, _ end: Int, _ fStart: Int, _ fEnd: Int) -> Int {
            if fStart...fEnd ~= start && fStart...fEnd ~= end {
                return tree[nodeIdx]
            } else if fStart...fEnd ~= start || fStart...fEnd ~= end || (start...end ~= fStart && start...end ~= fEnd) {
                let mid = (start + end) / 2
                return getNodeValue(nodeIdx * 2, start, mid, fStart, fEnd) + getNodeValue(nodeIdx * 2 + 1, mid + 1, end, fStart, fEnd)
            } else {
                return 0
            }
        }
    }
}
