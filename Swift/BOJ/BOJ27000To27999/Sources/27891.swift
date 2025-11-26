//
//  27891.swift
//  BOJ27000To27999
//
//  Created by 김민택 on 11/26/25.
//

//  문제 링크: https://www.acmicpc.net/problem/27891
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ27891: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 343B
        let dict = ["northlondo": "NLCS", "branksomeh": "BHA", "koreainter": "KIS", "stjohnsbur": "SJA"]
        let crypted = readLine()!.map { Int($0.asciiValue!) - 97 }

        for N in 0...25 {
            let decrypt = crypted.map { String(UnicodeScalar(($0 + N) % 26 + 97)!) }.joined()

            if dict[decrypt] != nil {
                print(dict[decrypt]!)
                break
            }
        }
    }
}
