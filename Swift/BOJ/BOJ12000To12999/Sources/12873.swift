//
//  12873.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/14/25.
//

//  문제 링크: https://www.acmicpc.net/problem/12873
//  알고리즘 분류: 구현, 자료 구조, 시뮬레이션, 큐

class BOJ12873: Solvable {
    func run() {
        // 메모리: 69300KB, 시간: 8ms, 코드 길이: 293B
        let N = Int(readLine()!)!
        var participants = Array(1...N)
        var level = 1

        while participants.count > 1 {
            let current = (level * level * level - 1) % participants.count
            participants = Array(participants[(current+1)...] + participants[..<current])
            level += 1
        }

        print(participants[0])
    }
}
