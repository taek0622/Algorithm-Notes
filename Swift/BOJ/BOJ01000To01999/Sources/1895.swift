//
//  1895.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/09.
//

//  문제 링크: https://www.acmicpc.net/problem/1895
//  알고리즘 분류: 구현, 브루트포스 알고리즘, 정렬

import Shared

public struct BOJ1895: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 12ms, 코드 길이: 524B
        let RC = readLine()!.split(separator: " ").map { Int(String($0))! }
        var I = [[Int]]()
        var count = 0

        for _ in 0..<RC[0] {
            I.append(readLine()!.split(separator: " ").map { Int(String($0))! })
        }

        let T = Int(readLine()!)!

        for row in 0..<RC[0]-2 {
            for col in 0..<RC[1]-2 {
                var temp = [Int]()

                for r in row...row+2 {
                    for c in col...col+2 {
                        temp.append(I[r][c])
                    }
                }

                if temp.sorted()[4] >= T {
                    count += 1
                }
            }
        }

        print(count)
    }
}
