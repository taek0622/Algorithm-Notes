//
//  12090.swift
//  BOJ12000To12999
//
//  Created by 김민택 on 12/13/25.
//

//  문제 링크: https://www.acmicpc.net/problem/12090
//  알고리즘 분류: 구현, 문자열, 파싱, utf-8 입력 처리

import Shared

public struct BOJ12090: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69100KB, 시간: 8ms, 코드 길이: 258B
        let consonant = ["ㄱ", "ㄲ", "ㄴ", "ㄷ", "ㄸ", "ㄹ", "ㅁ", "ㅂ", "ㅃ", "ㅅ", "ㅆ", "ㅇ", "ㅈ", "ㅉ", "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ"]
        let S = readLine()!.unicodeScalars.map { consonant[Int(($0.value - 0xAC00) / (21 * 28))] }
        print(S.joined())
    }
}
