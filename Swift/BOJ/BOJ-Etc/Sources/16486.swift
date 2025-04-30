//
//  16486.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/25.
//

// 문제: https://www.acmicpc.net/problem/16486

class BOJ16486: Solvable {
    func run() {
        // 메모리: 69096KB, 시간: 8ms, 코드 길이: 93B
        let (d1, d2) = (Double(readLine()!)!, Double(readLine()!)!)
        print(d1 * 2 + d2 * 2 * 3.141592)
    }
}
