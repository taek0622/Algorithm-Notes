//
//  2751.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/04.
//

// 문제: https://www.acmicpc.net/problem/2751

class BOJ2751: Solvable {
    func run() {
        // 메모리: 89152KB, 시간: 1364ms, 코드 길이: 149B
        let N = Int(readLine()!)!
        var numbers = [Int]()

        for _ in 0..<N {
            numbers.append(Int(readLine()!)!)
        }

        numbers.sorted().forEach {
            print($0)
        }
    }
}
