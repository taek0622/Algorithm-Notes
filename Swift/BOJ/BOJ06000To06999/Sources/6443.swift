//
//  6443.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/23/24.
//

//  문제 링크: https://www.acmicpc.net/problem/6443
//  알고리즘 분류: 문자열, 백트래킹

import Foundation

import Shared

public struct BOJ6443: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69112KB, 시간: 488ms, 코드 길이: 637B
        let N = Int(readLine()!)!
        var string = [String]()
        var visited = [String: Int]()
        var result = [String]()

        for _ in 0..<N {
            string = readLine()!.map { String($0) }
            visited = [:]
            result = []

            for char in string {
                visited[char, default: 0] += 1
            }

            dfs(0)
        }

        func dfs(_ count: Int) {
            if count == string.count {
                print(result.joined())
                return
            }

            for char in visited.keys.sorted() where visited[char, default: 0] > 0 {
                visited[char, default: 0] -= 1
                result.append(char)

                dfs(count + 1)

                visited[char, default: 0] += 1
                result.removeLast()
            }
        }
    }
}
