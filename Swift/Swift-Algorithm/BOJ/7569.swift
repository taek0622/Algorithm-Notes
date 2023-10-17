//
//  7569.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/17/23.
//

//  문제 링크: https://www.acmicpc.net/problem/7569
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색

class BOJ7569: Solvable {
    func run() {
        // 메모리: 132176KB, 시간: 468ms, 코드 길이: 1162B
        let MNH = readLine()!.split(separator: " ").map { Int(String($0))! }
        let (M, N, H) = (MNH[0], MNH[1], MNH[2])
        var tomato = Array(repeating: Array(repeating: Array(repeating: (0, 0), count: M), count: N), count: H)
        var queue = [(Int, Int, Int)]()
        var idx = 0
        var day = 0

        for box in 0..<H {
            for row in 0..<N {
                let input = readLine()!.split(separator: " ").map { (Int(String($0))!, 0) }
                tomato[box][row] = input

                for col in 0..<M where input[col].0 == 1 {
                    queue.append((box, row, col))
                }
            }
        }

        while idx < queue.count {
            let (z, x, y) = queue[idx]
            idx += 1

            if tomato[z][x][y].1 > day {
                day = tomato[z][x][y].1
            }

            [(z-1, x, y), (z+1, x, y), (z, x-1, y), (z, x+1, y), (z, x, y-1), (z, x, y+1)].forEach {
                if 0..<H ~= $0.0 && 0..<N ~= $0.1 && 0..<M ~= $0.2 && tomato[$0.0][$0.1][$0.2].0 == 0 {
                    tomato[$0.0][$0.1][$0.2] = (1, tomato[z][x][y].1 + 1)
                    queue.append($0)
                }
            }
        }

        for box in 0..<H {
            for row  in 0..<N {
                for col in 0..<M where tomato[box][row][col].0 == 0 {
                    day = -1
                    break
                }
            }
        }

        print(day)
    }
}
