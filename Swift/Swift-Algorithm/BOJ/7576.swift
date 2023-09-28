//
//  7576.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/09/28.
//

//  문제 링크: https://www.acmicpc.net/problem/7576
//  알고리즘 분류: 그래프 이론, 그래프 탐색, 너비 우선 탐색

class BOJ7576: Solvable {
    func run() {
        // 메모리: 264492KB, 시간: 408ms, 코드 길이: 873B
        let MN = readLine()!.split(separator: " ").map { Int(String($0))! }
        var box = Array(repeating: Array(repeating: -1, count: MN[0]), count: MN[1])
        var queue = [(x: Int, y: Int, count: Int)]()
        var count = 0

        for x in 0..<MN[1] {
            box[x] = readLine()!.split(separator: " ").map { Int(String($0))! }

            for y in 0..<MN[0] where box[x][y] == 1 {
                queue.append(contentsOf: [(x, y-1, 1), (x-1, y, 1), (x+1, y, 1), (x, y+1, 1)])
            }
        }

        var idx = 0

        while idx < queue.count {
            var (cx, cy, ccount) = queue[idx]
            idx += 1

            if !(0..<MN[1] ~= cx) || !(0..<MN[0] ~= cy) || box[cx][cy] != 0 {
                continue
            }

            count = ccount
            box[cx][cy] = 1
            ccount += 1
            queue.append(contentsOf: [(cx, cy-1, ccount), (cx-1, cy, ccount), (cx+1, cy, ccount), (cx, cy+1, ccount)])
        }

        box.forEach {
            if $0.contains(0) {
                count = -1
            }
        }

        print(count)
    }
}
