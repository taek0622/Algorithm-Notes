//
//  3109.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/5/24.
//

//  문제 링크: https://www.acmicpc.net/problem/3109
//  알고리즘 분류: 그래프 이론, 그리디 알고리즘, 그래프 탐색, 깊이 우선 탐색

class BOJ3109: Solvable {
    func run() {
        // 메모리: 74508KB, 시간: 424ms, 코드 길이: 669B
        let RC = readLine()!.split(separator: " ").map { Int(String($0))! }
        var map = Array(repeating: Array(repeating: false, count: RC[1]), count: RC[0])
        var count = 0

        for row in 0..<RC[0] {
            map[row] = readLine()!.map { $0 == "." }
        }

        for row in 0..<RC[0] where dfs(row, 0) {
            count += 1
        }

        print(count)

        func dfs(_ row: Int, _ col: Int) -> Bool {
            if col == RC[1] - 1 {
                return true
            }

            for next in [(row-1, col+1), (row, col+1), (row+1, col+1)] where 0..<RC[0] ~= next.0 && 0..<RC[1] ~= next.1 && map[next.0][next.1] {
                map[next.0][next.1] = false

                if dfs(next.0, next.1) {
                    return true
                }
            }

            return false
        }
    }
}
