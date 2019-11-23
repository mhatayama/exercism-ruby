class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    numbers = (2..@limit).to_a
    primes = []
    until numbers.empty? do
      prime = numbers.first
      primes << prime
      numbers -= (prime..@limit).step(prime).to_a
    end
    primes
  end
end