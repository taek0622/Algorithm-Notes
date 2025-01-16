//
//  17203.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 1/16/25.
//

//  문제 링크: https://www.acmicpc.net/problem/17203
//  알고리즘 분류: 구현, 누적 합

class BOJ17203: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 413B
        let NQ = readLine()!.split(separator: " ").map { Int($0)! }
        let a = readLine()!.split(separator: " ").map { Int($0)! }
        var diff = [Int]()

        for idx in 0..<NQ[0] - 1 {
            diff.append(a[idx+1] - a[idx] < 0 ? a[idx] - a[idx+1] : a[idx+1] - a[idx])
        }

        for _ in 0..<NQ[1] {
            let part = readLine()!.split(separator: " ").map { Int($0)! - 1 }
            print(part[0] == part[1] ? 0 : diff[part[0]..<part[1]].reduce(0, +))
        }
    }
}
