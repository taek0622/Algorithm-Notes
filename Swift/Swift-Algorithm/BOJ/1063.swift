//
//  1063.swift
//  Swift-Algorithm
//
//  Created by 김민택 on 12/1/24.
//

//  문제 링크: https://www.acmicpc.net/problem/1063
//  알고리즘 분류: 구현, 시뮬레이션

class BOJ1063: Solvable {
    func run() {
        // 메모리: 69108KB, 시간: 8ms, 코드 길이: 3336B
        let KSN = readLine()!.split(separator: " ").map { String($0) }
        var king = (Int(String(KSN[0].last!))!, Int(KSN[0].first!.asciiValue!) - 65)
        var stone = (Int(String(KSN[1].last!))!, Int(KSN[1].first!.asciiValue!) - 65)

        for _ in 0..<Int(KSN[2])! {
            let move = readLine()!

            switch move {
                case "R":
                    if 0..<8 ~= king.1 + 1 {
                        king.1 += 1
                    }

                    if stone == king {
                        if 0..<8 ~= stone.1 + 1 {
                            stone.1 += 1
                        } else {
                            king.1 -= 1
                        }
                    }
                case "L":
                    if 0..<8 ~= king.1 - 1 {
                        king.1 -= 1
                    }

                    if stone == king {
                        if 0..<8 ~= stone.1 - 1 {
                            stone.1 -= 1
                        } else {
                            king.1 += 1
                        }
                    }
                case "B":
                    if 1...8 ~= king.0 - 1 {
                        king.0 -= 1
                    }

                    if stone == king {
                        if 1...8 ~= stone.0 - 1 {
                            stone.0 -= 1
                        } else {
                            king.0 += 1
                        }
                    }
                case "T":
                    if 1...8 ~= king.0 + 1 {
                        king.0 += 1
                    }

                    if stone == king {
                        if 1...8 ~= stone.0 + 1 {
                            stone.0 += 1
                        } else {
                            king.0 -= 1
                        }
                    }
                case "RT":
                    if 1...8 ~= king.0 + 1 && 0..<8 ~= king.1 + 1 {
                        king.0 += 1
                        king.1 += 1
                    }

                    if stone == king {
                        if 1...8 ~= stone.0 + 1 && 0..<8 ~= stone.1 + 1 {
                            stone.0 += 1
                            stone.1 += 1
                        } else {
                            king.0 -= 1
                            king.1 -= 1
                        }
                    }
                case "LT":
                    if 1...8 ~= king.0 + 1 && 0..<8 ~= king.1 - 1 {
                        king.0 += 1
                        king.1 -= 1
                    }

                    if stone == king {
                        if 1...8 ~= stone.0 + 1 && 0..<8 ~= stone.1 - 1 {
                            stone.0 += 1
                            stone.1 -= 1
                        } else {
                            king.0 -= 1
                            king.1 += 1
                        }
                    }
                case "RB":
                    if 1...8 ~= king.0 - 1 && 0..<8 ~= king.1 + 1 {
                        king.0 -= 1
                        king.1 += 1
                    }

                    if stone == king {
                        if 1...8 ~= stone.0 - 1 && 0..<8 ~= stone.1 + 1 {
                            stone.0 -= 1
                            stone.1 += 1
                        } else {
                            king.0 += 1
                            king.1 -= 1
                        }
                    }
                case "LB":
                    if 1...8 ~= king.0 - 1 && 0..<8 ~= king.1 - 1 {
                        king.0 -= 1
                        king.1 -= 1
                    }

                    if stone == king {
                        if 1...8 ~= stone.0 - 1 && 0..<8 ~= stone.1 - 1 {
                            stone.0 -= 1
                            stone.1 -= 1
                        } else {
                            king.0 += 1
                            king.1 += 1
                        }
                    }
                default:
                    break
            }
        }

        print("\(UnicodeScalar(king.1 + 65)!)\(king.0)\n\(UnicodeScalar(stone.1 + 65)!)\(stone.0)")
    }
}
