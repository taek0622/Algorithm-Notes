//
//  11085.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/15/24.
//

//  문제 링크: https://www.acmicpc.net/problem/11085
//  알고리즘 분류: 자료 구조, 그래프 이론, 그래프 탐색, 분리 집합

class BOJ11085: Solvable {
    func run() {
        // 메모리: 71480KB, 시간: 92ms, 코드 길이: 916B
        let pw = readLine()!.split(separator: " ").map { Int($0)! }
        let cv = readLine()!.split(separator: " ").map { Int($0)! }
        var ways = [(Int, Int, Int)]()
        var points = Array(0..<pw[0])

        for _ in 0..<pw[1] {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            ways.append((input[0], input[1], input[2]))
        }

        ways.sort { $0.2 > $1.2 }

        for way in ways {
            union(way.0, way.1)

            if find(cv[0]) == find(cv[1]) {
                print(way.2)
                break
            }
        }

        func find(_ point: Int) -> Int {
            if points[point] != point {
                points[point] = find(points[point])
            }

            return points[point]
        }

        func union(_ point1: Int, _ point2: Int) {
            let rootPoint1 = find(point1)
            let rootPoint2 = find(point2)

            if rootPoint1 == rootPoint2 {
                return
            } else if rootPoint1 < rootPoint2 {
                points[rootPoint2] = rootPoint1
            } else {
                points[rootPoint1] = rootPoint2
            }
        }
    }
}
