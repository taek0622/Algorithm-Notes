//
//  10886.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/16.
//

// 문제: https://www.acmicpc.net/problem/10886

class BOJ10886: Solvable {
    func run() {
        solution3()
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 251B
    private func solution1() {
        let N = Int(readLine()!)!
        var countCute = 0
        var countNotCute = 0

        for _ in 0..<N {
            if Int(readLine()!)! == 1 {
                countCute += 1
            } else {
                countNotCute += 1
            }
        }

        print("Junhee is\(countCute > countNotCute ? "" : " not") cute!")
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 211B
    private func solution2() {
        let N = Int(readLine()!)!
        var inputs = [Int]()

        for _ in 0..<N {
            inputs.append(Int(readLine()!)!)
        }

        print("Junhee is\(inputs.filter { $0 == 1 }.count > inputs.filter { $0 == 0 }.count ? "" : " not") cute!")
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 145B
    private func solution3() {
        let N = Int(readLine()!)!
        var sum = 0

        for _ in 0..<N {
            sum += Int(readLine()!)!
        }

        print("Junhee is\(sum >= N / 2 + 1 ? "" : " not") cute!")
    }
}
