//
//  2864.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/04/02.
//

// 문제: https://www.acmicpc.net/problem/2864

import Foundation

class BOJ2864: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 79512KB, 시간: 12ms, 코드 길이: 401B
    private func solution1() {
        let input = readLine()!.split(separator: " ").map { String($0) }
        var minSum = 0
        var maxSum = 0

        minSum += Int(input[0].replacingOccurrences(of: "6", with: "5"))!
        minSum += Int(input[1].replacingOccurrences(of: "6", with: "5"))!
        maxSum += Int(input[0].replacingOccurrences(of: "5", with: "6"))!
        maxSum += Int(input[1].replacingOccurrences(of: "5", with: "6"))!

        print(minSum, maxSum)
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 352B
    private func solution2() {
        let input = readLine()!.split(separator: " ").map { String($0) }
        let minSum = Int(String(Array(input[0]).map { $0 == "6" ? "5" : $0 }))! + Int(String(Array(input[1]).map { $0 == "6" ? "5" : $0 }))!
        let maxSum = Int(String(Array(input[0]).map { $0 == "5" ? "6" : $0 }))! + Int(String(Array(input[1]).map { $0 == "5" ? "6" : $0 }))!
        print(minSum, maxSum)
    }
}
