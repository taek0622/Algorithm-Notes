//
//  1966.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/6/23.
//

//  문제 링크: https://www.acmicpc.net/problem/1966
//  알고리즘 분류: 구현, 자료 구조, 시뮬레이션, 큐

class BOJ1966: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 576B
        let T = Int(readLine()!)!

        for _ in 0..<T {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            var queue = readLine()!.split(separator: " ").enumerated().map { ($0.offset, Int(String($0.element))!) }
            var count = 0

            while queue.count > 0 {
                let max = queue.max(by: { $0.1 < $1.1 })!
                let first = queue.removeFirst()

                if first.1 < max.1 {
                    queue.append(first)
                } else {
                    count += 1

                    if first.0 == input[1] {
                        break
                    }
                }
            }

            print(count)
        }
    }
}
