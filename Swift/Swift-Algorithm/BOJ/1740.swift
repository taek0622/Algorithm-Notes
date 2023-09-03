//
//  1740.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/03.
//

//  문제 링크: https://www.acmicpc.net/problem/1740
//  알고리즘 분류: 수학, 비트마스킹

class BOJ1740: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 276B
    private func solution1() {
        let N = Int(readLine()!)!
        var result = 0
        var numbers = String(N, radix: 2).map { $0 == "1" ? true : false }
        numbers.reverse()

        for idx in numbers.indices where numbers[idx] {
            var temp = 1

            for _ in 0..<idx {
                temp *= 3
            }

            result += temp
        }

        print(result)
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 68B
    private func solution2() {
        let N = Int(readLine()!)!
        print(Int(String(N, radix: 2), radix: 3)!)
    }
}
