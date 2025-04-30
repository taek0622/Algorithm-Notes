//
//  2096.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/19/23.
//

//  문제 링크: https://www.acmicpc.net/problem/2096
//  알고리즘 분류: 다이나믹 프로그래밍, 슬라이딩 윈도우

class BOJ2096: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 140ms, 코드 길이: 807B
        let N = Int(readLine()!)!
        var minDp = [0, 0, 0]
        var maxDp = [0, 0, 0]

        for idx in 0..<N {
            let scores = readLine()!.split(separator: " ").map { Int($0)! }

            if idx == 0 {
                minDp = scores
                maxDp = scores
                continue
            }

            var tempMin = minDp
            var tempMax = maxDp

            tempMin[0] = min(scores[0] + minDp[0], scores[0] + minDp[1])
            tempMin[1] = min(scores[1] + minDp[0], scores[1] + minDp[1], scores[1] + minDp[2])
            tempMin[2] = min(scores[2] + minDp[1], scores[2] + minDp[2])
            tempMax[0] = max(scores[0] + maxDp[0], scores[0] + maxDp[1])
            tempMax[1] = max(scores[1] + maxDp[0], scores[1] + maxDp[1], scores[1] + maxDp[2])
            tempMax[2] = max(scores[2] + maxDp[1], scores[2] + maxDp[2])

            minDp = tempMin
            maxDp = tempMax
        }

        print(maxDp.max()!, minDp.min()!)
    }
}
