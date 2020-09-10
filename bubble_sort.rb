def bubble_sort(arr)
    is_sorted = false
    pass_num = 1
    while !is_sorted
        swapped = false
        for idx in (0...arr.length - pass_num) do
            if arr[idx] > arr[idx+1]
                arr[idx], arr[idx+1] = arr[idx+1], arr[idx]
                swapped = true
            end
        end
        if !swapped 
            is_sorted = true
        end
    end
    arr
end