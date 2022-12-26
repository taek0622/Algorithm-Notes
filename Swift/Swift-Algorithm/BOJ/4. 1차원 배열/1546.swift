//
//  1546.swift
//  Swift
//
//  Created by 김민택 on 2022/05/26.
//

// 문제: https://www.acmicpc.net/problem/1546

class BOJ1546: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 218B
    private func solution1() {
        let count = Int(readLine()!)!
        let number = readLine()!.split(separator: " ").map { Int(String($0))! }

        var sum = 0.0

        for i in number {
            sum += (Double(i) / Double(number.max()!) * 100)
        }

        print(sum / Double(count))
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 163B
    private func solution2() {
        let count = Float(readLine()!)!
        let number = readLine()!.split(separator: " ").map { Float(String($0))! }

        print(number.reduce(0, +) / number.max()! * 100 / count)
    }
}
