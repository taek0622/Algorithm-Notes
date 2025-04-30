//
//  2667.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/25.
//

//  문제 링크: https://www.acmicpc.net/problem/2667
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

class BOJ2667: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 841B
        let N = Int(readLine()!)!
        var map = [[Int]]()
        var complex = [Int]()

        for _ in 0..<N {
            map.append(readLine()!.map { Int(String($0))! })
        }

        for row in 0..<N {
            for col in 0..<N where map[row][col] == 1 {
                var queue = [(x: row, y: col)]
                var count = 0

                while !queue.isEmpty {
                    let current = queue.removeFirst()
                    let coord: [(x: Int, y: Int)] = [(0, -1), (-1, 0), (1, 0), (0, 1)]

                    if 0..<N ~= current.x && 0..<N ~= current.y && map[current.x][current.y] == 1 {
                        coord.forEach {
                            queue.append(($0.x + current.x, $0.y + current.y))
                        }
                        map[current.x][current.y] = 0
                        count += 1
                    }
                }

                complex.append(count)
            }
        }

        print(complex.count)
        complex.sorted().forEach {
            print($0)
        }
    }
}
