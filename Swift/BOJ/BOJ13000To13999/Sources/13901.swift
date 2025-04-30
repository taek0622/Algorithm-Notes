//
//  13901.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/25/25.
//

//  문제 링크: https://www.acmicpc.net/problem/13901
//  알고리즘 분류: 구현, 시뮬레이션

class BOJ13901: Solvable {
    func run() {
        // 메모리: 69640KB, 시간: 8ms, 코드 길이: 1357B
        let RC = readLine()!.split(separator: " ").map { Int($0)! }
        var room = Array(repeating: Array(repeating: true, count: RC[1]), count: RC[0])
        let k = Int(readLine()!)!

        for _ in 0..<k {
            let b = readLine()!.split(separator: " ").map { Int($0)! }
            room[b[0]][b[1]] = false
        }

        let s = readLine()!.split(separator: " ").map { Int($0)! }
        room[s[0]][s[1]] = false
        var rc = (s[0], s[1])
        let moves = readLine()!.split(separator: " ").map { Int($0)! }
        var idx = 0

        while idx < moves.count {
            if moves[idx] ==  1 {
                while rc.0 > 0 && room[rc.0-1][rc.1] {
                    rc.0 -= 1
                    room[rc.0][rc.1] = false
                }
            } else if moves[idx] == 2 {
                while rc.0 + 1 < RC[0] && room[rc.0+1][rc.1] {
                    rc.0 += 1
                    room[rc.0][rc.1] = false
                }
            } else if moves[idx] == 3 {
                while rc.1 > 0 && room[rc.0][rc.1-1] {
                    rc.1 -= 1
                    room[rc.0][rc.1] = false
                }
            } else {
                while rc.1 + 1 < RC[1] && room[rc.0][rc.1+1] {
                    rc.1 += 1
                    room[rc.0][rc.1] = false
                }
            }

            if idx == 3 && ((0..<RC[0] ~= rc.0-1 && room[rc.0-1][rc.1]) || (0..<RC[0] ~= rc.0+1 && room[rc.0+1][rc.1]) || (0..<RC[1] ~= rc.1-1 && room[rc.0][rc.1-1]) || (0..<RC[1] ~= rc.1+1 && room[rc.0][rc.1+1])) {
                idx = 0
            } else {
                idx += 1
            }
        }

        print(rc.0, rc.1)
    }
}
