//
//  2290.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 3/10/25.
//

//  문제 링크: https://www.acmicpc.net/problem/2290
//  알고리즘 분류: 구현, 문자열

import Shared

public struct BOJ2290: Solvable {
    public init() {}

    public func run() {
        // 메모리: 69112KB, 시간: 8ms, 코드 길이: 1709B
        let sn = readLine()!.split(separator: " ").map { String($0) }
        let (s, n) = (Int(sn[0])!, sn[1].map { $0 })
        var monitor = Array(repeating: Array(repeating: " ", count: (s + 3) * n.count - 1), count: 2 * s + 3)

        for idx in n.indices {
            if n[idx] != "1" && n[idx] != "4" {
                drawSegmentA(idx)
            }

            if n[idx] != "5" && n[idx] != "6" {
                drawSegmentB(idx)
            }

            if n[idx] != "2" {
                drawSegmentC(idx)
            }

            if n[idx] != "1" && n[idx] != "4" && n[idx] != "7" {
                drawSegmentD(idx)
            }

            if n[idx] == "0" || n[idx] == "2" || n[idx] == "6" || n[idx] == "8" {
                drawSegmentE(idx)
            }

            if n[idx] != "1" && n[idx] != "2" && n[idx] != "3" && n[idx] != "7" {
                drawSegmentF(idx)
            }

            if n[idx] != "1" && n[idx] != "7" && n[idx] != "0" {
                drawSegmentG(idx)
            }
        }

        monitor.forEach {
            print($0.joined())
        }

        func drawSegmentA(_ idx: Int) {
            for col in idx*(s+2)+1..<(idx+1)*(s+2)-1 {
                monitor[0][col+idx] = "-"
            }
        }

        func drawSegmentB(_ idx: Int) {
            for row in 1..<s+1 {
                monitor[row][(idx+1)*(s+2)-1+idx] = "|"
            }
        }

        func drawSegmentC(_ idx: Int) {
            for row in 1..<s+1 {
                monitor[2 * s + 2 - row][(idx+1)*(s+2)-1+idx] = "|"
            }
        }

        func drawSegmentD(_ idx: Int) {
            for col in idx*(s+2)+1..<(idx+1)*(s+2)-1 {
                monitor[2 * s + 2][col+idx] = "-"
            }
        }

        func drawSegmentE(_ idx: Int) {
            for row in 1..<s+1 {
                monitor[2 * s + 2 - row][idx*(s+3)] = "|"
            }
        }

        func drawSegmentF(_ idx: Int) {
            for row in 1..<s+1 {
                monitor[row][idx*(s+3)] = "|"
            }
        }

        func drawSegmentG(_ idx: Int) {
            for col in idx*(s+2)+1..<(idx+1)*(s+2)-1 {
                monitor[s+1][col+idx] = "-"
            }
        }
    }
}
