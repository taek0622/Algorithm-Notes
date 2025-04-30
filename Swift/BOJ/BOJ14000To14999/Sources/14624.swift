//
//  14624.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/29/24.
//

//  문제 링크: https://www.acmicpc.net/problem/14624
//  알고리즘 분류: 구현

class BOJ14624: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 4ms, 코드 길이: 319B
        let N = Int(readLine()!)!

        if N % 2 == 0 {
            print("I LOVE CBNU")
        } else {
            print(String(repeating: "*", count: N))
            print(String(repeating: " ", count: N/2) + "*")

            for idx in 1..<N/2+1 {
                print(String(repeating: " ", count: N/2-idx) + "*" + String(repeating: " ", count: (idx-1)*2+1) + "*")
            }
        }
    }
}
