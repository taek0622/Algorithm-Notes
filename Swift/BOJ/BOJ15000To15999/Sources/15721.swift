//
//  15721.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/27/24.
//

//  문제 링크: https://www.acmicpc.net/problem/15721
//  알고리즘 분류: 구현, 브루트포스 알고리즘, 시뮬레이션

class BOJ15721: Solvable {
    func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 510B
        let A = Int(readLine()!)!
        var T = Int(readLine()!)!
        let target = readLine()! == "0"
        var slogans = [Bool]()
        var sloganRepeating = 2
        var result = 0

        while slogans.count < 10000 {
            slogans.append(contentsOf: [true, false, true, false] + Array(repeating: true, count: sloganRepeating) + Array(repeating: false, count: sloganRepeating))
            sloganRepeating += 1
        }

        for idx in slogans.indices where slogans[idx] == target {
            T -= 1

            if T == 0 {
                result = idx % A
                break
            }
        }

        print(result)
    }
}
