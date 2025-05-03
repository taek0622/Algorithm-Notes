//
//  11944.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 7/22/24.
//

//  문제 링크: https://www.acmicpc.net/problem/11944
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ11944: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 291B
        let NM = readLine()!.split(separator: " ").map { String($0) }
        let (N, M) = (Int(NM[0])!, Int(NM[1])!)
        var result = [Character]()

        for _ in 0..<N {
            result.append(contentsOf: NM[0])

            if result.count > M {
                result.removeSubrange(M...)
                break
            }
        }

        print(String(result))
    }
}
