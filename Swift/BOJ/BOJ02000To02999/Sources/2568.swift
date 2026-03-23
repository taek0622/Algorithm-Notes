//
//  2568.swift
//  BOJ02000To02999
//
//  Created by 김이안 on 3/23/26.
//

//  문제 링크: https://www.acmicpc.net/problem/2568
//  알고리즘 분류: 역추적, 가장 긴 증가하는 부분 수열 문제

import Shared

public struct BOJ2568: Solvable {
    public init() {}

    public func run() {
        // 메모리: 72940KB, 시간: 188ms, 코드 길이: 1171B
        let N = Int(readLine()!)!
        var lines = [(a: Int, b: Int)]()
        var lis = [0]
        var maxSeq = Array(repeating: 0, count: N)
        var normalLines = [Int]()

        for _ in 0..<N {
            let AB = readLine()!.split(separator: " ").map { Int($0)! }
            lines.append((AB[0], AB[1]))
        }

        lines.sort { $0.a < $1.a }

        for idx in 0..<N {
            if lines[idx].b > lis.last! {
                maxSeq[idx] = lis.count
                lis.append(lines[idx].b)
                continue
            }

            var left = 1
            var right = lis.count - 1

            while left < right {
                let mid = (left + right) >> 1

                if lis[mid] < lines[idx].b {
                    left = mid + 1
                } else {
                    right = mid
                }
            }

            lis[right] = lines[idx].b
            maxSeq[idx] = right
        }

        var findIdx = lis.count - 1

        for idx in stride(from: N-1, through: 0, by: -1) where maxSeq[idx] == findIdx && (normalLines.isEmpty || lines[idx].a < normalLines.last!) {
            normalLines.append(lines[idx].a)
            findIdx -= 1
        }

        print(N - (lis.count - 1))

        var normalIdx = normalLines.count - 1

        for idx in 0..<N {
            if normalIdx >= 0 && lines[idx].a == normalLines[normalIdx] {
                normalIdx -= 1
            } else {
                print(lines[idx].a)
            }
        }
    }
}
