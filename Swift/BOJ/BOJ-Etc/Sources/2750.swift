//
//  2750.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/01/02.
//

// 문제: https://www.acmicpc.net/problem/2750

class BOJ2750: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 12ms, 코드 길이: 149B
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
