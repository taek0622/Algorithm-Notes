//
//  1992.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/27/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1992
//  알고리즘 분류: 분할 정복, 재귀

import Shared

public struct BOJ1992: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 12ms, 코드 길이: 731B
        let N = Int(readLine()!)!
        var image = [[String]]()

        for _ in 0..<N {
            image.append(readLine()!.map { String($0) })
        }

        print(quadTree(N, 0, 0))

        func quadTree(_ N: Int, _ rStart: Int, _ cStart: Int) -> String {
            if N == 1 {
                return image[rStart][cStart]
            }

            let queue = [quadTree(N/2, rStart, cStart), quadTree(N/2, rStart, cStart + N/2), quadTree(N/2, rStart + N/2, cStart), quadTree(N/2, rStart + N/2, cStart + N/2)]
            var isCompression = true
            var compression = "("

            for idx in queue.indices {
                compression += queue[idx]

                if queue[idx] != queue[0] || queue[idx].count != 1 {
                    isCompression = false
                }
            }

            return isCompression ? queue[0] : (compression + ")")
        }
    }
}
