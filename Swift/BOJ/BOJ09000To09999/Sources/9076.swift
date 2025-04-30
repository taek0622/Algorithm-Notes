//
//  9076.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/7/24.
//

//  문제 링크: https://www.acmicpc.net/problem/9076
//  알고리즘 분류: 구현, 정렬

class BOJ9076: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 177B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let N = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
            print(N[3] - N[1] >= 4 ? "KIN" : N[1...3].reduce(0, +))
        }
    }
}
