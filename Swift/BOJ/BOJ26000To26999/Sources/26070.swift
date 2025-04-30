//
//  26070.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/12/25.
//

//  문제 링크: https://www.acmicpc.net/problem/26070
//  알고리즘 분류: 구현, 그리디 알고리즘, 시뮬레이션

class BOJ26070: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 374B
        var ABC = readLine()!.split(separator: " ").map { Int($0)! }
        var XYZ = readLine()!.split(separator: " ").map { Int($0)! }
        var count = 0

        for _ in 0..<3 {
            for idx in 0..<3 {
                let diff = min(ABC[idx], XYZ[idx])
                ABC[idx] -= diff
                XYZ[idx] -= diff
                count += diff
                XYZ[(idx+1)%3] += XYZ[idx] / 3
                XYZ[idx] %= 3
            }
        }

        print(count)
    }
}
