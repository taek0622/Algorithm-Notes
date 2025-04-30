//
//  14623.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/21/24.
//

//  문제 링크: https://www.acmicpc.net/problem/14623
//  알고리즘 분류: 수학, 구현

class BOJ14623: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 108B
        let B1 = Int(readLine()!, radix: 2)!
        let B2 = Int(readLine()!, radix: 2)!
        print(String((B1 * B2), radix: 2))
    }
}
