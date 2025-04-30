//
//  2641.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/18/25.
//

//  문제 링크: https://www.acmicpc.net/problem/2641
//  알고리즘 분류: 구현

class BOJ2641: Solvable {
    func run() {
        // 메모리: 69116KB, 시간: 8ms, 코드 길이: 1238B
        _ = readLine()
        let base = drawShape(readLine()!.split(separator: " ").map { String($0) })
        let N = Int(readLine()!)!
        var shapes = [String]()

        for _ in 0..<N {
            let shape = readLine()!

            if base == drawShape(shape.split(separator: " ").map { String($0) }) {
                shapes.append(shape)
            }
        }

        print(shapes.count)
        shapes.forEach {
            print($0)
        }

        func drawShape(_ paths: [String]) -> [Int] {
            var (X, Y, minX, minY) = (0, 0, 0, 0)
            var vertexes = [(Int, Int)]()
            var location = Set<Int>()

            if paths.first! != paths.last! {
                vertexes.append((0, 0))
            }

            for idx in paths.indices {
                if idx > 0 && paths[idx] != paths[idx - 1] {
                    vertexes.append((X, Y))
                }

                switch paths[idx] {
                    case "1":
                        X += 1
                    case "2":
                        Y -= 1
                    case "3":
                        X -= 1
                    case "4":
                        Y += 1
                    default:
                        break
                }

                minX = min(minX, X)
                minY = min(minY, Y)
            }

            for idx in vertexes.indices {
                vertexes[idx].0 -= minX
                vertexes[idx].1 -= minY
                location.insert(vertexes[idx].0 * 100 + vertexes[idx].1)
            }

            return location.sorted()
        }
    }
}
