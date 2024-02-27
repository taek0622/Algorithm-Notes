//
//  7510.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/27/24.
//

//  문제 링크: https://www.acmicpc.net/problem/7287
//  알고리즘 분류: 수학, 기하학, 피타고라스 정리

class BOJ7510: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 240B
        let n = Int(readLine()!)!

        for idx in 1...n {
            let input = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
            print("Scenario #\(idx):\n\(input[2] * input[2] == input[0] * input[0] + input[1] * input[1] ? "yes" : "no")\n")
        }
    }
}
