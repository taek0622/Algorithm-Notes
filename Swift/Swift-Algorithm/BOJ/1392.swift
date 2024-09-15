//
//  1392.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 9/15/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1392
//  알고리즘 분류: 구현

class BOJ1392: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 357B
        var times = Array(repeating: 0, count: 10000)
        let NQ = readLine()!.split(separator: " ").map { Int($0)! }
        var now = 0

        for music in 1...NQ[0] {
            let time = Int(readLine()!)!

            for current in now..<now+time {
               times[current] = music
            }

            now += time
        }

        for _ in 0..<NQ[1] {
            let question = Int(readLine()!)!
            print(times[question])
        }
    }
}
