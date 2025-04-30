//
//  10707.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/29.
//

// 문제: https://www.acmicpc.net/problem/10707

class BOJ10707: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 163B
        let (A, B, C, D, P) = (Int(readLine()!)!, Int(readLine()!)!, Int(readLine()!)!, Int(readLine()!)!, Int(readLine()!)!)
        print(min(A*P, P <= C ? B : B + (P - C) * D))
    }
}
