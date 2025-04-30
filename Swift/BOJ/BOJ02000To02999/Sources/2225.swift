//
//  2225.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/6/23.
//

//  문제 링크: https://www.acmicpc.net/problem/2225
//  알고리즘 분류: 수학, 다이나믹 프로그래밍

class BOJ2225: Solvable {
    func run() {
        // 메모리: 69368KB, 시간: 12ms, 코드 길이: 344B
        let NK = readLine()!.split(separator: " ").map { Int(String($0))! }
        var count = Array(repeating: Array(repeating: 1, count: NK[0]), count: NK[1])

        for row in 1..<NK[1] {
            count[row][0] = row + 1

            for col in 1..<NK[0] {
                count[row][col] = (count[row-1][col] + count[row][col-1]) % 1000000000
            }
        }

        print(count[NK[1]-1][NK[0]-1])
    }
}
