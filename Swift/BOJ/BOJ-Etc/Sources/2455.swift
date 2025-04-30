//
//  2455.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2023/02/07.
//

// 문제: https://www.acmicpc.net/problem/2455

class BOJ2455: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 272B
    private func solution1() {
        var population = [0, 0, 0, 0]

        for idx in 0..<4 {
            let people = readLine()!.split(separator: " ").map { Int(String($0))! }
            population[idx] += (people[1] - people[0])

            if idx != 0 {
                population[idx] += population[idx - 1]
            }
        }

        print(population.max()!)
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 252B
    private func solution2() {
        var maxPopulation = 0
        var population = 0

        for _ in 0..<4 {
            let people = readLine()!.split(separator: " ").map { Int(String($0))! }

            population += (people[1] - people[0])
            maxPopulation = max(maxPopulation, population)
        }

        print(maxPopulation)
    }
}
