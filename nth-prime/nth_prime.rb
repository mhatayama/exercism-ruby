class Prime
  def self.nth(num)
    raise ArgumentError if num < 1
    primes = [2]
    while primes.size < num
      primes << self.next_prime(primes)
    end
    primes.last
  end

  def self.next_prime(primes)
    next_prime = primes.last + 1
    while primes.any? {|n| next_prime % n == 0 }
      next_prime += 1
    end
    next_prime
  end
end
