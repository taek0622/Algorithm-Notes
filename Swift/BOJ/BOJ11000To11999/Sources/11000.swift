//
//  11000.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/29/24.
//

//  문제 링크: https://www.acmicpc.net/problem/11000
//  알고리즘 분류: 자료 구조, 그리디 알고리즘, 정렬, 우선순위 큐

import Shared

public struct BOJ11000: Solvable {
    public init() {}

    public func run() {
        // 메모리: 81596KB, 시간: 312ms, 코드 길이: 497B
        let N = Int(readLine()!)!
        var lectures = [(Int, Bool)]()
        var count = 0
        var result = 0

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            lectures.append((input[0], true))
            lectures.append((input[1], false))
        }

        lectures.sort {
            if $0.0 == $1.0 {
                return !$0.1
            }

            return $0.0 < $1.0
        }

        for lecture in lectures {
            if lecture.1 {
                count += 1
                result = max(count, result)
            } else {
                count -= 1
            }
        }

        print(result)
    }
}
