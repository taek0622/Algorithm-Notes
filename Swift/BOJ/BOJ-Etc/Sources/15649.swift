//
//  15649.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/21.
//

// 문제: https://www.acmicpc.net/problem/15649

class BOJ15649: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 100ms, 코드 길이: 488B
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        var usedNumber = Array(repeating: false, count: input[0] + 1)

        findCombination(0, [])

        func findCombination(_ count: Int, _ stack: [String]) {
            if count == input[1] {
                print(stack.joined(separator: " "))
                return
            }

            for idx in 1...input[0] where !usedNumber[idx] {
                usedNumber[idx] = true
                findCombination(count + 1, stack + [String(idx)])
                usedNumber[idx] = false
            }
        }
    }
}
