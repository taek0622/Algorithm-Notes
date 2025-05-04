//
//  12919.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/19/24.
//

//  문제 링크: https://www.acmicpc.net/problem/12919
//  알고리즘 분류: 구현, 브루트포스 알고리즘, 재귀

import Shared

public struct BOJ12919: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 472B
        let S = readLine()!
        let T = readLine()!
        var isAvailable = false

        dfs(T)

        print(isAvailable ? 1 : 0)

        func dfs(_ t: String) {
            if isAvailable {
                return
            }

            if S.count == t.count {
                if S == t {
                    isAvailable = true
                }

                return
            }

            if t.last == "A" {
                var t = t
                t.removeLast()
                dfs(t)
            }

            if t.first == "B" {
                var t = String(t.reversed())
                t.removeLast()
                dfs(t)
            }
        }
    }
}
