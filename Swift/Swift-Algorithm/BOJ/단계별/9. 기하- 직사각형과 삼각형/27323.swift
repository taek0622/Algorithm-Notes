//
//  27323.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/28.
//

// 문제: https://www.acmicpc.net/problem/27323

class BOJ27323: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 64B
    private func solution1() {
        let A = Int(readLine()!)!
        let B = Int(readLine()!)!
        print(A * B)
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 44B
    private func solution2() {
        print(Int(readLine()!)! * Int(readLine()!)!)
    }
}
