//
//  31824.swift
//  BOJ31000To31999
//
//  Created by 김이안 on 3/10/26.
//

//  문제 링크: https://www.acmicpc.net/problem/31824
//  알고리즘 분류: 구현, 자료 구조, 문자열, 정렬, 집합과 맵, 해시를 사용한 집합과 맵

import Shared

public struct BOJ31824: Solvable {
    public func run() {
        // 메모리: 69248KB, 시간: 252ms, 코드 길이: 520B
        let NM = readLine()!.split(separator: " ").map { Int($0)! }
        var dict = [String: String]()

        for _ in 0..<NM[0] {
            let input = readLine()!.split(separator: " ").map { String($0) }
            dict[input[0], default: ""] = input[1]
        }

        for _ in 0..<NM[1] {
            let input = readLine()!.map { String($0) }
            var res = ""

            for startIdx in 0..<input.count {
                for endIdx in startIdx..<input.count {
                    res += dict[input[startIdx...endIdx].joined(), default: ""]
                }
            }

            print(res == "" ? -1 : res)
        }
    }
}
