//
//  main.swift
//  SwiftLeetCode
//
//  Created by Daniil on 12.09.2023.
//

import Foundation

struct Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // 1.Создаем словарь в которой будем добавлять значения
        // Ключом будет nums[i], а значением его индекс
        var dict: [Int: Int] = [:]
        for (index, value) in nums.enumerated() {
            // 2.Если в нашем словаре уже есть значение которое равно разности нашего таргета и значения из массива nums
            // То мы возврашаем значение из словаря и индекс значения из цикла
            if let val = dict[target - value] {
                return [val, index]
            } else {
                // 3.Добавляем в словарь значение
                dict[value] = index
            }
        }
        return []
    }
}

let soution = Solution()
print(soution.twoSum([2,4,8,11], 6))
