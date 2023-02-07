//
//  13458.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/07.
//

// 문제: https://www.acmicpc.net/problem/13458

class BOJ13458: Solvable {
    func run() {
        // 메모리: 134296KB, 시간: 468ms, 코드 길이: 317B
        let N = Int(readLine()!)!
        let A = readLine()!.split(separator: " ").map { Int(String($0))! }
        let BC = readLine()!.split(separator: " ").map { Int(String($0))! }
        var count = 0

        for a in A {
            var remain = max(a - BC[0], 0)

            count += (remain % BC[1] == 0 ? remain / BC[1] + 1 : remain / BC[1] + 2)
        }

        print(count)
    }
}
