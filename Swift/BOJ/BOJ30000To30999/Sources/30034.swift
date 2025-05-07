//
//  30034.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 4/28/25.
//

//  문제 링크: https://www.acmicpc.net/problem/30034
//  알고리즘 분류: 구현, 자료 구조, 문자열, 해시를 사용한 집합과 맵

import Shared

public struct BOJ30034: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69116KB, 시간: 8ms, 코드 길이: 528B
        _ = readLine()
        var divider = Set(readLine()!.split(separator: " ").map { Character(String($0)) })
        _ = readLine()
        readLine()!.split(separator: " ").map { Character(String($0)) }.forEach { divider.insert($0) }
        _ = readLine()
        readLine()!.split(separator: " ").map { Character(String($0)) }.forEach { divider.remove($0) }
        _ = readLine()
        var string = readLine()!.map { $0 }

        for idx in string.indices where divider.contains(string[idx]) {
            string[idx] = " "
        }

        string.split(separator: " ").map { String($0) }.forEach { print($0) }
    }
}
