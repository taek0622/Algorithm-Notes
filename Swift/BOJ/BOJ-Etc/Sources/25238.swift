//
//  8437.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/06/08.
//

// 문제: https://www.acmicpc.net/problem/25238

class BOJ25238: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 128B
        let input = readLine()!.split(separator: " ").map { Double(String($0))! }
        print(input[0] / 100 * (100 - input[1]) < 100 ? 1 : 0)
    }
}
