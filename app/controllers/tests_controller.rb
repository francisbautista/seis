class TestsController < InheritedResources::Base
    before_filter :set_student

    def new
        @test = Test.new
        @test = @student.tests.new
    end

    def create
        @test = Test.new(test_params)
        @test = @student.tests.new(test_params)


        if @test.save
            redirect_to student_tests_path
        else
            render :action => 'new'
        end

    end
  private

    def test_params
      params.require(:test).permit(:test_number, :status, :remarks, :student_id)
    end
    def set_student
        @student = Student.find(params[:student_id])
    end
end
