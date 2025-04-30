//
//  2840.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/20/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2840
//  알고리즘 분류: 구현, 시뮬레이션

class BOJ2840: Solvable {
    func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 695B
        let NK = readLine()!.split(separator: " ").map { Int($0)! }
        var wheel = Array(repeating: "?", count: NK[0])
        var arrow = 0
        var isExist = true

        for _ in 0..<NK[1] {
            let current = readLine()!.split(separator: " ").map { String($0) }
            arrow = (arrow + Int(current[0])!) % NK[0]

            if wheel[arrow] != "?" && wheel[arrow] != current[1] {
                isExist = false
                break
            }

            wheel[arrow] = current[1]
        }

        wheel[...arrow].reverse()
        wheel[(arrow+1)...].reverse()

        for base in 0..<NK[0] {
            for compare in base..<NK[0] where base != compare && wheel[base] != "?" && wheel[base] == wheel[compare] {
                isExist = false
                break
            }
        }

        print(isExist ? wheel.joined() : "!")
    }
}
