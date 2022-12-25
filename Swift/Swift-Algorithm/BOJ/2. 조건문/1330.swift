//
//  1330.swift
//  Swift
//
//  Created by 김민택 on 2022/05/11.
//

// 문제: https://www.acmicpc.net/problem/1330

class BOJ1330 {
    func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 191B
    private func solution1() {
        let input = readLine()!.split(separator: " ").map {
            Int($0)!
        }

        let a = input[0]
        let b = input[1]

        if a > b {
            print(">")
        }

        if a < b {
            print("<")
        }

        if a == b {
            print("==")
        }
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 142B
    private func solution2() {
        let input = readLine()!.split(separator: " ").map {
            Int($0)!
        }

        let a = input[0]
        let b = input[1]

        print(a > b ? ">" : a < b ? "<" : "==")
    }
}
