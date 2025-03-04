//
//  13567.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/4/25.
//

//  문제 링크: https://www.acmicpc.net/problem/13567
//  알고리즘 분류: 구현, 시뮬레이션

class BOJ13567: Solvable {
    func run() {
        // 메모리: 69104KB, 시간: 8ms, 코드 길이: 728B
        let Mn = readLine()!.split(separator: " ").map { Int($0)! }
        var current = (x: 0, y: 0, d: 0)
        var isPossible = true

        for _ in 0..<Mn[1] {
            let input = readLine()!.split(separator: " ")
            let (command, value) = (String(input[0]), Int(input[1])!)

            if command == "TURN" {
                current.d = (current.d + 4 + (value == 0 ? -1 : 1)) % 4
                continue
            }

            if current.d == 0 {
                current.x += value
            } else if current.d == 1 {
                current.y -= value
            } else if current.d == 2 {
                current.x -= value
            } else {
                current.y += value
            }

            if !(0...Mn[0] ~= current.x && 0...Mn[0] ~= current.y) {
                isPossible = false
            }
        }

        print(isPossible ? "\(current.x) \(current.y)" : -1)
    }
}
