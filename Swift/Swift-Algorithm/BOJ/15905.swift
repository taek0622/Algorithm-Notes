//
//  15905.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/13/25.
//

//  문제 링크: https://www.acmicpc.net/problem/15905
//  알고리즘 분류: 구현, 정렬

class BOJ15905: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 236B
        let N = Int(readLine()!)!
        var solves = [Int]()

        for _ in 0..<N {
            solves.append(readLine()!.split(separator: " ").map { Int($0)! }[0])
        }

        solves.sort(by: >)

        print(solves.count > 5 ? solves[5...].filter { $0 == solves[4] }.count : 0)
    }
}
