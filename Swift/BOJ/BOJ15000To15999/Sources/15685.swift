//
//  15685.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/18/24.
//

//  문제 링크: https://www.acmicpc.net/problem/15685
//  알고리즘 분류: 구현, 시뮬레이션

class BOJ15685: Solvable {
    func run() {
        // 메모리: 69340KB, 시간: 8ms, 코드 길이: 1349B
        let N = Int(readLine()!)!
        var squre = Array(repeating: Array(repeating: false, count: 1200), count: 1200)
        var count = 0

        for _ in 0..<N {
            let xydg = readLine()!.split(separator: " ").map { Int($0)! }
            var points = [(xydg[0], xydg[1])]

            switch xydg[2] {
                case 0:
                    points.append((xydg[0]+1, xydg[1]))
                case 1:
                    points.append((xydg[0], xydg[1]-1))
                case 2:
                    points.append((xydg[0]-1, xydg[1]))
                case 3:
                    points.append((xydg[0], xydg[1]+1))
                default:
                    break
            }

            points = rotate(points, 0, xydg[3])

            for point in points {
                squre[point.0][point.1] = true
            }
        }

        for row in 1..<1200 {
            for col in 1..<1200 where squre[row-1][col-1] && squre[row-1][col] && squre[row][col-1] && squre[row][col] {
                count += 1
            }
        }

        print(count)

        func rotate(_ points: [(Int, Int)], _ currentGen: Int, _ targetGen: Int) -> [(Int, Int)] {
            if currentGen == targetGen {
                return points
            }

            var nextPoints = points
            let basePoint = points.last!

            for idx in stride(from: points.count - 2, through: 0, by: -1) {
                let xDiff = basePoint.0 - points[idx].0
                let yDiff = basePoint.1 - points[idx].1

                nextPoints.append((basePoint.0 + yDiff, basePoint.1 - xDiff))
            }

            return rotate(nextPoints, currentGen + 1, targetGen)
        }
    }
}
