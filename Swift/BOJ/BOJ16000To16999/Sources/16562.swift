//
//  16562.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/28/24.
//

//  문제 링크: https://www.acmicpc.net/problem/16562
//  알고리즘 분류: 자료 구조, 그래프 이론, 그래프 탐색, 분리 집합

import Shared

public struct BOJ16562: Solvable {
    public init() {}

    public func run() {
        // 메모리: 70016KB, 시간: 28ms, 코드 길이: 814B
        let NMk = readLine()!.split(separator: " ").map { Int($0)! }
        let A = readLine()!.split(separator: " ").map { Int($0)! }
        var relation = Array(0..<NMk[0])
        var price = 0

        for _ in 0..<NMk[1] {
            let input = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            union(input[0], input[1])
        }

        for student in 0..<NMk[0] where relation[student] == student {
            price += A[student]
        }

        print(price > NMk[2] ? "Oh no" : price)

        func find(_ number: Int) -> Int {
            if relation[number] != number {
                relation[number] = find(relation[number])
            }

            return relation[number]
        }

        func union(_ student1: Int, _ student2: Int) {
            let group1 = find(student1)
            let group2 = find(student2)

            if A[group1] < A[group2] {
                relation[group2] = group1
            } else {
                relation[group1] = group2
            }
        }
    }
}
