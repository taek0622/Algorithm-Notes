//
//  1931.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/27.
//

//  문제 링크: https://www.acmicpc.net/problem/1931
//  알고리즘 분류: 그리디 알고리즘, 정렬

import Shared

public struct BOJ1931: Solvable {
    public init() {}

    public func run() {
        // 메모리: 72236KB, 시간: 156ms, 코드 길이: 403B
        let N = Int(readLine()!)!
        var meetings = [(Int, Int)]()
        var current = -1
        var count = 0

        for _ in 0..<N {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            meetings.append((input[0], input[1]))
        }

        meetings.sort {
            return $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1
        }

        for meeting in meetings where meeting.0 >= current {
            current = meeting.1
            count += 1
        }

        print(count)
    }
}
