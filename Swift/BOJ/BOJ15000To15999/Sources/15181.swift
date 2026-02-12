//
//  15181.swift
//  BOJ15000To15999
//
//  Created by 김민택 on 2/12/26.
//

//  문제 링크: https://www.acmicpc.net/problem/15181
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ15181: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 494B
        while let input = readLine(), input != "#" {
            let notes = input.map { Int($0.asciiValue!) - 65 }
            var isBeautiful = true

            for idx in stride(from: 1, to: notes.count, by: 1) {
                let diff = notes[idx] - notes[idx-1] < 0 ? notes[idx] - notes[idx-1] + 7 : notes[idx] - notes[idx-1]

                if diff != 2 && diff != 4 && diff != 6 {
                    isBeautiful = false
                    break
                }
            }

            print(isBeautiful ? "That music is beautiful." : "Ouch! That hurts my ears.")
        }
    }
}
