//
//  17371.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 2/24/24.
//

//  문제 링크: https://www.acmicpc.net/problem/17371
//  알고리즘 분류: 그리디 알고리즘, 기하학

import Foundation

class BOJ17371: Solvable {
    func run() {
        // 메모리: 79512KB, 시간: 20ms, 코드 길이: 733B
        let N = Int(readLine()!)!
        var amenities = Array(repeating: (0.0, 0.0), count: N)
        var targetIdx = 0

        for idx in 0..<N {
            let input = readLine()!.split(separator: " ").map { Double($0)! }
            amenities[idx] = (input[0], input[1])
        }

        var minDistance = 40000.0

        for idxA in 0..<N {
            var maxDistance = 0.0

            for idxB in 0..<N {
                maxDistance = max(sqrt((amenities[idxA].0 - amenities[idxB].0) * (amenities[idxA].0 - amenities[idxB].0) + (amenities[idxA].1 - amenities[idxB].1) * (amenities[idxA].1 - amenities[idxB].1)), maxDistance)
            }

            if maxDistance < minDistance {
                minDistance = maxDistance
                targetIdx = idxA
            }
        }

        print("\(amenities[targetIdx].0) \(amenities[targetIdx].1)")
    }
}
