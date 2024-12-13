//
//  20006.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/13/24.
//

//  문제 링크: https://www.acmicpc.net/problem/20006
//  알고리즘 분류: 구현, 시뮬레이션

class BOJ20006: Solvable {
    func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 678B
        let pm = readLine()!.split(separator: " ").map { Int($0)! }
        var rooms = [[(Int, String)]]()

        outer: for _ in 0..<pm[0] {
            let ln = readLine()!.split(separator: " ").map { String($0) }
            let level = Int(ln[0])!

            for idx in rooms.indices {
                let baseLevel = rooms[idx].first!.0

                if baseLevel-10...baseLevel+10 ~= level && rooms[idx].count < pm[1] {
                    rooms[idx].append((level, ln[1]))
                    continue outer
                }
            }

            rooms.append([(level, ln[1])])
        }

        for room in rooms {
            print(room.count == pm[1] ? "Started!" : "Waiting!")
            print(room.sorted(by: { $0.1 < $1.1 }).map { "\($0.0) \(String($0.1))" }.joined(separator: "\n"))
        }
    }
}
