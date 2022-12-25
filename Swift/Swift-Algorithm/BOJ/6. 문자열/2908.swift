//
//  2908.swift
//  Swift
//
//  Created by 김민택 on 2022/06/12.
//

// 문제: https://www.acmicpc.net/problem/2908

class BOJ2908 {
    func run() {
        solution4()
    }

    // 메모리: 69104KB, 시간: 12ms, 코드 길이: 231B
    private func solution1() {
        let input = readLine()!.split(separator: " ").map { String($0) }

        let num1 = Int(String(Array(input[0]).reversed()))!
        let num2 = Int(String(Array(input[1]).reversed()))!

        if num1 >= num2 {
            print(num1)
        }
        else {
            print(num2)
        }
    }

    // 메모리: 69104KB, 시간: 12ms, 코드 길이: 117B
    private func solution2() {
        let input = readLine()!.split(separator: " ").map { Int(String(Array(String($0)).reversed()))! }

        print(input.max()!)
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 98B
    private func solution3() {
        print(readLine()!.split(separator: " ").map { Int(String(Array(String($0)).reversed()))! }.max()!)
    }

    // 메모리: 69104KB, 시간: 8ms, 코드: 83B
    private func solution4() {
        print(readLine()!.split(separator: " ").map { Int(String($0.reversed()))! }.max()!)
    }
}
