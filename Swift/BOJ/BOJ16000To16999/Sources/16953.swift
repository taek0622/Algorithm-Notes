//
//  16953.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/26/23.
//

//  문제 링크: https://www.acmicpc.net/problem/16953
//  알고리즘 분류: 그래프 이론, 그리디 알고리즘, 그래프 탐색, 너비 우선 탐색

import Shared

public struct BOJ16953: Solvable {
    public init() {}

    public func run() {
        solution1()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 339B
    private func solution1() {
        let AB = readLine()!.split(separator: " ").map { Int(String($0))! }
        var result = -1

        bfs(AB[0], 1)

        print(result)

        func bfs(_ number: Int, _ count: Int) {
            if number == AB[1] {
                result = count
                return
            }

            if number > AB[1] {
                return
            }

            bfs(number * 2, count + 1)
            bfs(number * 10 + 1, count + 1)
        }
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 286B
    private func solution2() {
        var AB = readLine()!.split(separator: " ").map { Int(String($0))! }
        var count = 1

        while AB[0] < AB[1] {
            if AB[1] % 2 == 0 {
                AB[1] /= 2
            } else if AB[1] % 10 == 1 {
                AB[1] /= 10
            } else {
                break
            }

            count += 1
        }

        print(AB[0] == AB[1] ? count : -1)
    }
}
