//
//  2845.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/16.
//

// 문제: https://www.acmicpc.net/problem/2845

class BOJ2845: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 228B
    private func solution1() {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let personnels = readLine()!.split(separator: " ").map { Int(String($0))! }

        for personnel in personnels {
            print("\(personnel - input[0] * input[1])", terminator: " ")
        }
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 197B
    private func solution2() {
        let personnel = readLine()!.split(separator: " ").map { Int(String($0))! }.reduce(1, *)

        print(readLine()!.split(separator: " ").map { String(Int(String($0))! - personnel) }.joined(separator: " "))
    }
}
