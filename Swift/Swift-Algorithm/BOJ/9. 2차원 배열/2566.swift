//
//  2566.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/02.
//

// 문제: https://www.acmicpc.net/problem/2566

class BOJ2566: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 312B
        var maxNum = 0
        var maxIndex = (1, 1)

        for line in 1...9 {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }

            if input.max()! > maxNum {
                maxNum = input.max()!
                maxIndex = (line, input.firstIndex(of: maxNum)! + 1)
            }
        }

        print("\(maxNum)\n\(maxIndex.0) \(maxIndex.1)")
    }
}
