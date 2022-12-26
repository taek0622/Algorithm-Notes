//
//  2438.swift
//  Swift
//
//  Created by 김민택 on 2022/05/17.
//

// 문제: https://www.acmicpc.net/problem/2438

class BOJ2438: Solvable {
    func run() {
        solution3()
    }

    // 메모리: 69100KB, 시간: 12ms, 코드 길이: 129B
    private func solution1() {
        let input = Int(readLine()!)!

        for i in 1...input {
            for _ in 1...i {
                print("*", terminator: "")
            }
            print("")
        }
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 97B
    private func solution2() {
        let input = Int(readLine()!)!

        for i in 1...input {
            print(String(repeating: "*", count: i))
        }
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 78B
    private func solution3() {
        for i in 1...Int(readLine()!)! {
            print(String(repeating: "*", count: i))
        }
    }
}
