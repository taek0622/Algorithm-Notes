//
//  2443.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/3/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2443
//  알고리즘 분류: 구현

class BOJ2443: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 138B
        let N = Int(readLine()!)!

        for idx in 0..<N {
            print(String(repeating: " ", count: idx) + String(repeating: "*", count: (N-idx)*2-1))
        }
    }
}
