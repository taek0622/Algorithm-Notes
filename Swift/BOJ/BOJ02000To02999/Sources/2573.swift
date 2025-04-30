//
//  2573.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/12/23.
//

//  문제 링크: https://www.acmicpc.net/problem/2573
//  알고리즘 분류: 구현, 그래프 이론, 그래프 탐색, 너비 우선 탐색, 깊이 우선 탐색

class BOJ2573: Solvable {
    func run() {
        // 메모리: 70876KB, 시간: 240ms, 코드 길이: 1765B
        let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
        var map = Array(repeating: Array(repeating: 0, count: NM[1]), count: NM[0])
        var year = 0
        var queue = [(Int, Int)]()
        var idx = 0

        for row in 0..<NM[0] {
            let input = readLine()!.split(separator: " ").map { Int(String($0))! }
            map[row] = input

            for col in 0..<NM[1] where input[col] != 0 {
                queue.append((row, col))
            }
        }

        while countIcebert() < 2 {
            year += 1

            var temp = queue
            var melt = [Int]()

            for (x, y) in queue {
                var count = 0

                [(x-1, y), (x, y-1), (x, y+1), (x+1, y)].forEach {
                    if 0..<NM[0] ~= $0.0 && 0..<NM[1] ~= $0.1 && map[$0.0][$0.1] == 0 {
                        count += 1
                    }
                }

                melt.append(count)
            }

            queue.removeAll()

            for (ice, count) in zip(temp, melt) {
                map[ice.0][ice.1] -= count

                if map[ice.0][ice.1] <= 0 {
                    map[ice.0][ice.1] = 0
                } else {
                    queue.append(ice)
                }
            }

            if idx >= queue.count {
                year = 0
                break
            }
        }

        print(year)

        func countIcebert() -> Int {
            var count = 0
            var newMap = map

            for row in 0..<NM[0] {
                for col in 0..<NM[1] where newMap[row][col] != 0 {
                    var queue = [(row, col)]
                    var idx = 0

                    while idx < queue.count {
                        let (x, y) = queue[idx]
                        idx += 1

                        [(x-1, y), (x, y-1), (x, y+1), (x+1, y)].forEach {
                            if 0..<NM[0] ~= $0.0 && 0..<NM[1] ~= $0.1 && newMap[$0.0][$0.1] != 0 {
                                newMap[$0.0][$0.1] = 0
                                queue.append($0)
                            }
                        }
                    }

                    count += 1
                }
            }

            return count
        }
    }
}
