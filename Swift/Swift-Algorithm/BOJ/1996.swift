//
//  1996.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/19/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1996
//  알고리즘 분류: 구현

class BOJ1996: Solvable {
    func run() {
        // 메모리: 76988KB, 시간: 264ms, 코드 길이: 585B
        let N = Int(readLine()!)!
        var map = Array(repeating: Array(repeating: 0, count: N), count: N)

        for row in 0..<N {
            let mine = readLine()!.map { Int(String($0)) ?? 0 }

            for col in 0..<N where mine[col] > 0 {
                for (nr, nc) in [(row-1, col-1), (row-1, col), (row-1, col+1), (row, col-1), (row, col+1), (row+1, col-1), (row+1, col), (row+1, col+1)] where 0..<N ~= nr && 0..<N ~= nc && map[nr][nc] != -1 {
                    map[nr][nc] += mine[col]
                }

                map[row][col] = -1
            }
        }

        map.forEach {
            print($0.map { $0 == -1 ? "*" : $0 > 9 ? "M" : "\($0)" }.joined())
        }
    }
}
