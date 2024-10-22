//
//  5566.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/22/24.
//

//  문제 링크: https://www.acmicpc.net/problem/5566
//  알고리즘 분류: 구현, 시뮬레이션

class BOJ5566: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 369B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var X = [Int]()
        var now = 0

        for _ in 0..<NM[0] {
            X.append(Int(readLine()!)!)
        }

        for idx in 1...NM[1] {
            let dice = Int(readLine()!)!
            now += dice

            if now + 1 >= NM[0] {
                print(idx)
                break
            }

            now += X[now]

            if now + 1 >= NM[0] {
                print(idx)
                break
            }
        }
    }
}
