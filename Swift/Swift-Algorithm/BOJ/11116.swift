//
//  11116.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/19/25.
//

//  문제 링크: https://www.acmicpc.net/problem/11116
//  알고리즘 분류: 구현, 브루트포스 알고리즘

class BOJ11116: Solvable {
    func run() {
        // 메모리: 69112KB, 시간: 16ms, 코드 길이: 414B
        let n = Int(readLine()!)!

        for _ in 0..<n {
            let m = Int(readLine()!)!
            let left = Set(readLine()!.split(separator: " ").map { Int($0)! })
            let right = Set(readLine()!.split(separator: " ").map { Int($0)! })
            var count = 0

            for time in left where left.contains(time) && left.contains(time+500) && right.contains(time+1000) && right.contains(time+1500) {
                count += 1
            }

            print(count)
        }
    }
}
