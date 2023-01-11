//
//  1037.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/12.
//

// 문제: https://www.acmicpc.net/problem/1037

class BOJ1037: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 153B
    private func solution1() {
        let N = Int(readLine()!)!
        var divisor = readLine()!.split(separator: " ").map { Int(String($0))! }

        divisor.sort()

        print(divisor.first! * divisor.last!)
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 138B
    private func solution2() {
        let N = Int(readLine()!)!
        var divisor = readLine()!.split(separator: " ").map { Int(String($0))! }

        print(divisor.max()! * divisor.min()!)
    }
}
