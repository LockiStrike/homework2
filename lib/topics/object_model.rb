# frozen_string_literal: true

# exercise object model
module ObjectModel
  # module with linux fork
  module LinuxFriendly
    def fork_process
      super
    end
  end

  # class with own fork and inspect
  class Desktop
    def fork_process
      'Parent: allocate memory'
    end

    def mine_bitcoins
      inspect
    end
  end

  # child with prepended module
  class Laptop < Desktop
    prepend LinuxFriendly
  end
end
