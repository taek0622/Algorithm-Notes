//
//  2212.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/2/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2212
//  알고리즘 분류: 그리디 알고리즘, 정렬

import Shared

public struct BOJ2212: Solvable {
    public init() {}

    public func run() {
        // 메모리: 70096KB, 시간: 16ms, 코드 길이: 322B
        let N = Int(readLine()!)!
        let K = Int(readLine()!)!
        let sensors = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
        var distances = [Int]()

        for idx in 1..<N {
            distances.append(sensors[idx] - sensors[idx-1])
        }

        distances.sort()

        for _ in 0..<K-1 {
            _ = distances.popLast()
        }

        print(distances.reduce(0, +))
    }
}
