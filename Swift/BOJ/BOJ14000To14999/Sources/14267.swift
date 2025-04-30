//
//  14267.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/6/24.
//

//  문제 링크: https://www.acmicpc.net/problem/14267
//  알고리즘 분류: 다이나믹 프로그래밍, 그래프 이론, 그래프 탐색, 트리, 깊이 우선 탐색, 트리에서의 다이나믹 프로그래밍

class BOJ14267: Solvable {
    func run() {
        // 메모리: 76884KB, 시간: 152ms, 코드 길이: 408B
        let nm = readLine()!.split(separator: " ").map { Int($0)! }
        let superior = readLine()!.split(separator: " ").map { Int($0)! }
        var dp = Array(repeating: 0, count: nm[0])

        for _ in 0..<nm[1] {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            dp[input[0] - 1] += input[1]
        }

        for idx in 1..<nm[0] {
            dp[idx] += dp[superior[idx] - 1]
        }

        print(dp.map { String($0) }.joined(separator: " "))
    }
}
