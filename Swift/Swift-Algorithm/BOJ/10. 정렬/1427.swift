//
//  1427.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/04.
//

// 문제: https://www.acmicpc.net/problem/1427

class BOJ1427: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 132B
        let N = readLine()!.map { Int(String($0))! }
        var result = ""

        N.sorted().reversed().forEach {
            result += "\($0)"
        }

        print(result)
    }
}
