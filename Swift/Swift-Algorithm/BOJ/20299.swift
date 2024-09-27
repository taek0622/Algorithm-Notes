//
//  20299.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/27/24.
//

//  문제 링크: https://www.acmicpc.net/problem/20299
//  알고리즘 분류: 구현

class BOJ20299: Solvable {
    func run() {
        // 메모리: 102380KB, 시간: 796ms, 코드 길이: 406B
        let NKL = readLine()!.split(separator: " ").map { Int($0)! }
        var rating = [Int]()
        var count = 0

        for _ in 0..<NKL[0] {
            let x = readLine()!.split(separator: " ").map { Int($0)! }

            if x.reduce(0, +) >= NKL[1] && x[0] >= NKL[2] && x[1] >= NKL[2] && x[2] >= NKL[2] {
                rating.append(contentsOf: x)
                count += 1
            }
        }

        print("\(count)\n\(rating.map { String($0) }.joined(separator: " "))")
    }
}
