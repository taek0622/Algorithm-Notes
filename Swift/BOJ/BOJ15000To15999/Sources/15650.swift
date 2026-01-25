//
//  15650.swift
//  BOJ15000To15999
//
//  Created by 김민택 on 1/25/26.
//

//  문제 링크: https://www.acmicpc.net/problem/15650
//  알고리즘 분류: 백트래킹

import Shared

public struct BOJ15650: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 292B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        (dfs(0, 0, ""))

        func dfs(_ num: Int, _ seq: Int, _ res: String) {
            if seq == NM[1] { print(res) }

            for idx in stride(from: num+1, through: NM[0], by: 1) {
                dfs(idx, seq+1, res + "\(num == 0 ? "" : " ")\(idx)")
            }
        }
    }
}
