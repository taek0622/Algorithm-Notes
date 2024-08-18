//
//  2435.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 8/18/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2435
//  알고리즘 분류: 구현, 브루트포스 알고리즘, 누적 합

class BOJ2435: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 439B
        let NK = readLine()!.split(separator: " ").map { Int($0)! }
        let temperature = readLine()!.split(separator: " ").map { Int($0)! }
        var current = temperature[0..<NK[1]].reduce(0, +)
        var maxTemperature = current

        for idx in stride(from: 1, through: NK[0]-NK[1], by: 1) {
            current -= temperature[idx-1]
            current += temperature[idx+NK[1]-1]

            if current > maxTemperature {
                maxTemperature = current
            }
        }

        print(maxTemperature)
    }
}
