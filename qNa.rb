require 'active_support/all'


module MathGame
  class QnA

      attr_reader :qNa

      def generate_QnA
      @qNa = []
      i = 0
        while i < 10
          i +=1
          num1 = Random.rand(1...50)
          num2 = Random.rand(1...50)
            temp = {q: "What is #{num1} + #{num2} ?",
            a: (num1 + num2).to_s}
            @qNa << temp
        end
      end

      def qNa
        @qNa
      end

  end
end
