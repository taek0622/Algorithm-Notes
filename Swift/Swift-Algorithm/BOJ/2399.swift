//
//  2399.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/7/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2399
//  알고리즘 분류: 수학, 구현, 브루트포스 알고리즘

class BOJ2399: Solvable {
    func run() {
        // 메모리: 70092KB, 시간: 336ms, 코드 길이: 250B
        let n = Int(readLine()!)!
        let x = readLine()!.split(separator: " ").map { Int($0)! }
        var sum = 0

        for base in 0..<n {
            for compare in 0..<n {
                sum += x[base] - x[compare] > 0 ? x[base] - x[compare] : x[compare] - x[base]
            }
        }

        print(sum)
    }
}
