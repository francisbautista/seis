class Assessment < ActiveRecord::Base
    belongs_to :student

    # def calc_tuition
    #     @discounted_tuition = self.tuition * ((100-self.discount)*0.01)
    # end

end
