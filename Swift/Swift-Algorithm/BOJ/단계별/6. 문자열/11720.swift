//
//  11720.swift
//  Swift
//
//  Created by 김민택 on 2022/06/06.
//

// 문제: https://www.acmicpc.net/problem/11720

class BOJ11720: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 12ms, 코드 길이: 162B
    private func solution1() {
        let input = Int(readLine()!)!

        let intString = Array(readLine()!).map{ Int(String($0))! }

        var sum = 0

        for i in 0..<input {
            sum += intString[i]
        }

        print(sum)
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 86B
    private func solution2() {
        let input = Int(readLine()!)!

        print(readLine()!.map{ Int(String($0))! }.reduce(0, +))
    }
}
