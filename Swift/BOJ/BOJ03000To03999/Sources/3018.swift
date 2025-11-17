//
//  3018.swift
//  BOJ03000To03999
//
//  Created by 김민택 on 11/17/25.
//

//  문제 링크: https://www.acmicpc.net/problem/3018
//  알고리즘 분류: 구현, 자료 구조, 집합과 맵, 해시를 사용한 집합과 맵

import Shared

public struct BOJ3018: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 673B
        let N = Int(readLine()!)!
        var knownSongs = Array(repeating: Set<Int>(), count: N)
        let E = Int(readLine()!)!

        for song in 1...E {
            let input = Array(readLine()!.split(separator: " ").map { Int($0)! - 1 }[1...])

            if input.contains(0) {
                for num in input {
                    knownSongs[num].insert(song)
                }
            } else {
                var songs = Set<Int>()

                for num in input {
                    songs.formUnion(knownSongs[num])
                }

                for num in input {
                    knownSongs[num].formUnion(songs)
                }
            }
        }

        print(knownSongs.enumerated().filter { $0.element.count == knownSongs[0].count }.map { String($0.offset + 1) }.joined(separator: "\n"))
    }
}
