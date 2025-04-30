//
//  4963.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 10/20/23.
//

//  문제 링크: https://www.acmicpc.net/problem/4963
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

class BOJ4963: Solvable {
    func run() {
        // 메모리: 69248KB, 시간: 12ms, 코드 길이: 992B
        var result = ""

        while let input = readLine(), input != "0 0" {
            let wh = input.split(separator: " ").map { Int($0)! }
            var map = [[Bool]]()
            var count = 0

            for _ in 0..<wh[1] {
                map.append(readLine()!.split(separator: " ").map { Int($0)! == 1 ? true : false })
            }

            for row in 0..<wh[1] {
                for col in 0..<wh[0] where map[row][col] {
                    var queue = [(row, col)]
                    var idx = 0
                    map[row][col] = false

                    while idx < queue.count {
                        let (x, y) = queue[idx]
                        idx += 1

                        [(x-1, y-1), (x-1, y), (x-1, y+1), (x, y-1), (x, y+1), (x+1, y-1), (x+1, y), (x+1, y+1)].forEach {
                            if 0..<wh[1] ~= $0.0 && 0..<wh[0] ~= $0.1 && map[$0.0][$0.1] {
                                queue.append($0)
                                map[$0.0][$0.1] = false
                            }
                        }
                    }

                    count += 1
                }
            }

            result += "\(count)\n"
        }

        print(result)
    }
}
