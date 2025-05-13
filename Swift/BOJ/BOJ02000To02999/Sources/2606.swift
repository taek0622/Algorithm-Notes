//
//  2606.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2606
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

import Shared

public struct BOJ2606: Solvable {
    public init() {}

    public func run() {
        solution2()
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 563B
    private func solution1() {
        let _ = Int(readLine()!)!
        let numberOfVertex = Int(readLine()!)!
        var computer = [Int: [Int]]()

        for _ in 0..<numberOfVertex {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            computer[input[0], default: []].append(input[1])
            computer[input[1], default: []].append(input[0])
        }

        var visited = [Int]()
        var queue = [1]

        while !queue.isEmpty {
            let number = queue.popLast()!

            if !visited.contains(number) {
                queue.append(contentsOf: computer[number] ?? [])
                visited.append(number)
            }
        }

        print(visited.count - 1)
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 542B
    private func solution2() {
        let _ = Int(readLine()!)!
        let numberOfVertex = Int(readLine()!)!
        var computer = [Int: [Int]]()

        for _ in 0..<numberOfVertex {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            computer[input[0], default: []].append(input[1])
            computer[input[1], default: []].append(input[0])
        }

        var visited = [Int]()
        dfs(1)

        print(visited.count - 1)

        func dfs(_ number: Int) {
            if visited.contains(number) {
                return
            }

            visited.append(number)
            computer[number, default: []].forEach {
                dfs($0)
            }
        }
    }
}
