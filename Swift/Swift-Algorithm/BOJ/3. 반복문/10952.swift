//
//  10952.swift
//  Swift
//
//  Created by 김민택 on 2022/05/19.
//

// 문제: https://www.acmicpc.net/problem/10952

class BOJ10952 {
    func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 284B
    private func solution1() {
        var sum: [Int] = []

        while true {
            let input = readLine()!.split(separator: " ").compactMap { Int(String($0))! }
            
            if input[0] == 0 && input[1] == 0 {
                break
            }
            
            sum.append(input[0] + input[1])
        }

        print(sum.compactMap { String($0) }.joined(separator: " "))
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 132B
    private func solution2() {
        while let input = readLine(), input != "0 0" {
            print(input.split(separator: " ").compactMap { Int(String($0))! }.reduce(0, +))
        }
    }
}
