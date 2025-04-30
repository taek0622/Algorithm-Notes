//
//  2056.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/16/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2056
//  알고리즘 분류: 다이나믹 프로그래밍, 그래프 이론, 위상 정렬, 방향 비순환 그래프

class BOJ2056: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 160ms, 코드 길이: 289B
        let N = Int(readLine()!)!
        var time = Array(repeating: 0, count: N+1)

        for idx in 1...N {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            time[idx] = input[0]

            if input[1] != 0 {
                time[idx] += input[2...].map { time[$0] }.max()!
            }
        }

        print(time.max()!)
    }
}
