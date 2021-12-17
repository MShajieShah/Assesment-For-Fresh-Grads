# You have to implement binary search.
# But the catch here is that numbers will be sorted in reverse order.
# Write binary search algorithm for that case.
def binary_search(arr, n)
  a = 0
  b = arr.size
  loop do
    mid = (a + b) / 2
    return n if arr[mid] == n
    return false if arr[mid] == nil
    return false if (b - a).abs == 1
    if arr[mid] < n
      b = mid
    else
      a = mid
    end
  end
end

p binary_search([5, 4, 3, 2, 1], 5)
p binary_search([5, 4, 3, 2, 1], 1)
p binary_search([5, 4, 3, 2, 1], -10)
