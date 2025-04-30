//
//  16675.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 11/4/24.
//

//  문제 링크: https://www.acmicpc.net/problem/16675
//  알고리즘 분류: 구현, 시뮬레이션, 많은 조건 분기

class BOJ16675: Solvable {
    func run() {
        solution2()
    }

    // 메모리: 69104KB, 시간: 8ms, 코드 길이: 1025B
    private func solution1() {
        let MT = readLine()!.split(separator: " ")

        if MT[0] != MT[1] && MT[2] != MT[3] {
            print("?")
        } else if MT[0] == "S" && MT[0] == MT[1] {
            if MT[2] == "R" || MT[3] == "R" {
                print("TK")
            } else if MT[2] == "P" && MT[2] == MT[3] {
                print("MS")
            } else {
                print("?")
            }
        } else if MT[0] == "R" && MT[0] == MT[1] {
            if MT[2] == "P" || MT[3] == "P" {
                print("TK")
            } else if MT[2] == "S" && MT[2] == MT[3] {
                print("MS")
            } else {
                print("?")
            }
        } else if MT[0] == "P" && MT[0] == MT[1] {
            if MT[2] == "S" || MT[3] == "S" {
                print("TK")
            } else if MT[2] == "R" && MT[2] == MT[3] {
                print("MS")
            } else {
                print("?")
            }
        } else if (MT[0] == "S" || MT[1] == "S") && (MT[2] == "P" && MT[2] == MT[3]) {
            print("MS")
        } else if (MT[0] == "R" || MT[1] == "R") && (MT[2] == "S" && MT[2] == MT[3]) {
            print("MS")
        } else if (MT[0] == "P" || MT[1] == "P") && (MT[2] == "R" && MT[2] == MT[3]) {
            print("MS")
        } else {
            print("?")
        }
    }

    // 메모리: 69100KB, 시간: 8ms, 코드 길이: 591B
    private func solution2() {
        let MT = readLine()!.split(separator: " ").map { String($0) }

        if (rsp(MT[0], MT[2]) && rsp(MT[0], MT[3])) || (rsp(MT[1], MT[2]) && rsp(MT[1], MT[3])) {
            print("MS")
        } else if (rsp(MT[2], MT[0]) && rsp(MT[2], MT[1])) || (rsp(MT[3], MT[0]) && rsp(MT[3], MT[1])) {
            print("TK")
        } else {
            print("?")
        }

        func rsp(_ person1: String, _ person2: String) -> Bool {
            if person1 == "S" && person2 == "P" {
                return true
            }

            if person1 == "R" && person2 == "S" {
                return true
            }

            if person1 == "P" && person2 == "R" {
                return true
            }

            return false
        }
    }
}
