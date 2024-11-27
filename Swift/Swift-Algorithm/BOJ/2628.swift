//
//  2628.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/27/24.
//

//  문제 링크: https://www.acmicpc.net/problem/2628
//  알고리즘 분류: 구현, 정렬

class BOJ2628: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69108KB, 시간: 8ms, 코드 길이: 1312B
    private func solution1() {
        let RC = readLine()!.split(separator: " ").map { Int($0)! }
        var papers = [(0...RC[0], 0...RC[1])]
        let N = Int(readLine()!)!

        for _ in 0..<N {
            let cut = readLine()!.split(separator: " ").map { Int($0)! }
            var idx = 0
            var newPapers = [(ClosedRange<Int>, ClosedRange<Int>)]()

            if cut[0] == 0 {
                while idx < papers.count {
                    if papers[idx].1.contains(cut[1]) && papers[idx].1 != cut[1]...cut[1] {
                        let basePaper = papers.remove(at: idx)
                        newPapers.append((basePaper.0, basePaper.1.lowerBound...cut[1]))
                        newPapers.append((basePaper.0, cut[1]...basePaper.1.upperBound))
                    } else {
                        idx += 1
                    }
                }
            } else {
                while idx < papers.count {
                    if papers[idx].0.contains(cut[1]) && papers[idx].0 != cut[1]...cut[1] {
                        let basePaper = papers.remove(at: idx)
                        newPapers.append((basePaper.0.lowerBound...cut[1], basePaper.1))
                        newPapers.append((cut[1]...basePaper.0.upperBound, basePaper.1))
                    } else {
                        idx += 1
                    }
                }
            }

            papers.append(contentsOf: newPapers)
        }

        var maxPaper = 0

        for paper in papers {
            maxPaper = max(maxPaper, (paper.0.count - 1) * (paper.1.count - 1))
        }

        print(maxPaper)
    }

    // 메모리: 69112KB, 시간: 8ms, 코드 길이: 602B
    private func solution2() {
        let RC = readLine()!.split(separator: " ").map { Int($0)! }
        var rowCuts = [0, RC[0]]
        var colCuts = [0, RC[1]]
        let N = Int(readLine()!)!

        for _ in 0..<N {
            let cut = readLine()!.split(separator: " ").map { Int($0)! }

            if cut[0] == 0 {
                colCuts.append(cut[1])
            } else {
                rowCuts.append(cut[1])
            }
        }

        rowCuts.sort()
        colCuts.sort()

        var maxRow = 0

        for idx in 0..<rowCuts.count - 1 {
            maxRow = max(maxRow, rowCuts[idx + 1] - rowCuts[idx])
        }

        var maxCol = 0

        for idx in 0..<colCuts.count - 1 {
            maxCol = max(maxCol, colCuts[idx + 1] - colCuts[idx])
        }

        print(maxRow * maxCol)
    }
}
