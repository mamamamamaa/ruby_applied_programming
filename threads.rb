mutex = Mutex.new
condition = ConditionVariable.new
turn = 1

thread1 = Thread.new do
  (1..10).step(2).each do |i|
    mutex.synchronize do
      while turn != 1
        condition.wait(mutex)
      end
      puts "Thread 1: #{i}"
      turn = 2
      condition.signal
    end
    sleep 0.1
  end
end

thread2 = Thread.new do
  (2..10).step(2).each do |i|
    mutex.synchronize do
      while turn != 2
        condition.wait(mutex)
      end
      puts "Thread 2: #{i}"
      turn = 1
      condition.signal
    end
    sleep 0.1
  end
end

thread1.join
thread2.join

