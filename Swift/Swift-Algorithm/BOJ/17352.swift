//
//  17352.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/4/24.
//

//  문제 링크: https://www.acmicpc.net/problem/17352
//  알고리즘 분류: 자료 구조, 그래프 이론, 그래프 탐색, 분리 집합

class BOJ17352: Solvable {
    func run() {
        // 메모리: 71452KB, 시간: 464ms, 코드 길이: 678B
        let N = Int(readLine()!)!
        var island = Array(0...N)

        for _ in 0..<N-2 {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            union(input[0], input[1])
        }

        print(island.enumerated().filter { $0.offset == $0.element && $0.offset != 0 }.map { String($0.element) }.joined(separator: " "))

        func find(_ number: Int) -> Int {
            if island[number] != number {
                island[number] = find(island[number])
            }

            return island[number]
        }

        func union(_ number1: Int, _ number2: Int) {
            let island1 = find(number1)
            let island2 = find(number2)

            if island1 > island2 {
                island[island1] = island2
            } else {
                island[island2] = island1
            }
        }
    }
}
