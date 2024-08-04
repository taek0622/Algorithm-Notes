//
//  5176.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/4/24.
//

//  문제 링크: https://www.acmicpc.net/problem/5176
//  알고리즘 분류: 구현

class BOJ5176: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 317B
        let K = Int(readLine()!)!

        for _ in 0..<K {
            let PM = readLine()!.split(separator: " ").map { Int($0)! }
            var seats = Set<Int>()
            var count = 0

            for _ in 0..<PM[0] {
                let seat = Int(readLine()!)!

                if !seats.insert(seat).inserted {
                    count += 1
                }
            }

            print(count)
        }
    }
}
