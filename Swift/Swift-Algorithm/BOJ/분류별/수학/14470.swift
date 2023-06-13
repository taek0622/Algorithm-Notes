//
//  14470.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/13.
//

// 문제: https://www.acmicpc.net/problem/14470

class BOJ14470: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 164B
        let (A, B, C, D, E) = (Int(readLine()!)!, Int(readLine()!)!, Int(readLine()!)!, Int(readLine()!)!, Int(readLine()!)!)
        print(A > 0 ? (B - A) * E : B * E + D - A * C)
    }
}
