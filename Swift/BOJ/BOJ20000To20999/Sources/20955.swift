//
//  20955.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/14/24.
//

//  문제 링크: https://www.acmicpc.net/problem/20955
//  알고리즘 분류: 자료 구조, 그래프 이론, 그래프 탐색, 트리, 분리 집합

import Shared

public struct BOJ20955: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69892KB, 시간: 160ms, 코드 길이: 893B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var connection = Array(0...NM[0])
        var visited = Array(repeating: false, count: NM[0] + 1)
        var count = 0

        for _ in 0..<NM[1] {
            let input = readLine()!.split(separator: " ").map { Int($0)! }
            union(input[0], input[1])
        }

        for neuron in 1...NM[0] where !visited[find(neuron)] {
            visited[find(neuron)] = true
            count += 1
        }

        print(count - 1)

        func find(_ neuron: Int) -> Int {
            if connection[neuron] != neuron {
                connection[neuron] = find(connection[neuron])
            }

            return connection[neuron]
        }

        func union(_ neuron1: Int, _ neuron2: Int) {
            let endNeuron1 = find(neuron1)
            let endNeuron2 = find(neuron2)

            if endNeuron1 == endNeuron2 {
                count += 1
            } else if endNeuron1 < endNeuron2 {
                connection[endNeuron2] = endNeuron1
            } else {
                connection[endNeuron1] = endNeuron2
            }
        }
    }
}
