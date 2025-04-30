//
//  2442.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 6/2/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2442
//  알고리즘 분류: 구현

class BOJ2442: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 136B
        let N = Int(readLine()!)!

        for idx in 1...N {
            print(String(repeating: " ", count: N-idx) + String(repeating: "*", count: idx*2-1))
        }
    }
}
