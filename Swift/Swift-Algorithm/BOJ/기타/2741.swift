//
//  2741.swift
//  Swift
//
//  Created by 김민택 on 2022/05/16.
//

// 문제: https://www.acmicpc.net/problem/2741

class BOJ2741 {
    func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 88ms, 코드 길이: 66B
    private func solution1() {
        var input = Int(readLine()!)!

        for i in 1...input {
            print(i)
        }
    }

    // 메모리: 70092KB, 시간: 32ms, 코드 길이: 99B
    private func solution2() {
        let input = Int(readLine()!)!

        var str = ""

        for i in 1...input {
            str += "\(i)\n"
        }

        print(str)
    }

    // 메모리: 69100KB, 시간: 60ms, 코드 길이: 71B
    private func solution3() {
        var input = Int(readLine()!)!

        for i in 1...input {
            print("\(i)")
        }
    }
}
