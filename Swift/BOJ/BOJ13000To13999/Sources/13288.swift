//
//  13288.swift
//  BOJ13000To13999
//
//  Created by 김민택 on 2/14/26.
//

//  문제 링크: https://www.acmicpc.net/problem/13288
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ13288: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69260KB, 시간: 8ms, 코드 길이: 294B
        let new = ["@", "8", "(", "|)", "3", "#", "6", "[-]", "|", "_|", "|<", "1", "[]\\/[]", "[]\\[]", "0", "|D", "(,)", "|Z", "$", "']['", "|_|", "\\/", "\\/\\/", "}{", "`/", "2"]
        print(readLine()!.uppercased().map { 65..<91 ~= $0.asciiValue! ? new[Int($0.asciiValue!) - 65] : String($0) }.joined())
    }
}
