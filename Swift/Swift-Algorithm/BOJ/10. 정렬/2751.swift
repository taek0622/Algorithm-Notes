//
//  2751.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/04.
//

// 문제: https://www.acmicpc.net/problem/2751
import Foundation
class BOJ2751: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 89152KB, 시간: 1364ms, 코드 길이: 149B
    private func solution1() {
        let N = Int(readLine()!)!
        var numbers = [Int]()

        for _ in 0..<N {
            numbers.append(Int(readLine()!)!)
        }

        numbers.sorted().forEach {
            print($0)
        }
    }

    // 메모리: 106732KB, 시간: 780ms, 코드 길이: 173B
    private func solution2() {
        let N = Int(readLine()!)!
        var numbers = [Int]()

        for _ in 0..<N {
            numbers.append(Int(readLine()!)!)
        }

        print(numbers.sorted().map { String($0) }.joined(separator: "\n"))
    }
}
