//
//  5988.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/05/10.
//

// 문제: https://www.acmicpc.net/problem/5988
class BOJ5988: Solvable {
    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 128B
    func run() {
        let N = Int(readLine()!)!

        for _ in 0..<N {
            let K = readLine()!
            print(Int(String(K.last!))! % 2 == 0 ? "even" : "odd")
        }
    }
}
