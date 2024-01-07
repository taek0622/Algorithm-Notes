//
//  13335.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/7/24.
//

//  문제 링크: https://www.acmicpc.net/problem/13335
//  알고리즘 분류: 구현, 자료 구조, 시뮬레이션, 큐

class BOJ13335: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 16ms, 코드 길이: 400B
        let nwL = readLine()!.split(separator: " ").map { Int($0)! }
        let a = readLine()!.split(separator: " ").map { Int($0)! }
        var bridge = Array(repeating: 0, count: nwL[1])
        var second = 0
        var idx = 0

        while idx < a.count {
            second += 1

            bridge = bridge[1...] + [0]

            if bridge.reduce(0, +) + a[idx] <= nwL[2] {
                bridge[nwL[1] - 1] = a[idx]
                idx += 1
            }
        }

        print(second + nwL[1])
    }
}
