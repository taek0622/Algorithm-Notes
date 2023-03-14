//
//  1373.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/03/14.
//

// 문제: https://www.acmicpc.net/problem/1373

class BOJ1373: Solvable {
    func run() {
        // 메모리: 92544KB, 시간: 200ms, 코드 길이: 274B
        var binary = Array(readLine()!).map { Int(String($0))! }

        while binary.count % 3 != 0 {
            binary.insert(0, at: 0)
        }

        for idx in stride(from: 0, through: binary.count - 1, by: 3) {
            print(String(binary[idx] * 4 + binary[idx + 1] * 2 + binary[idx + 2]), terminator: "")
        }
    }
}
