class CustomerFeedbacksController < ApplicationController
  # GET /customer_feedbacks
  # GET /customer_feedbacks.json
  def index
    @customer_feedbacks = CustomerFeedback.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @customer_feedbacks }
    end
  end

  # GET /customer_feedbacks/1
  # GET /customer_feedbacks/1.json
  def show
    @customer_feedback = CustomerFeedback.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer_feedback }
    end
  end

  # GET /customer_feedbacks/new
  # GET /customer_feedbacks/new.json
  def new
    @customer_feedback = CustomerFeedback.new

    @child = Child.new

    @investment = Investment.new
    @planned = Planned.new

    @reference = Reference.new

    @perssonal_assets = PersonalAssets.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customer_feedback }
    end
  end

  # GET /customer_feedbacks/1/edit
  def edit
    @customer_feedback = CustomerFeedback.find(params[:id])
    @child = @customer_feedback.children
    @perssonal_assets = @customer_feedback.personal_assets
    @planned = @customer_feedback.planneds
    @reference = @customer_feedback.references
  end

  # POST /customer_feedbacks
  # POST /customer_feedbacks.json
  def create
    p @customer_feedback = params[:customer_feedback]
    p @child = @customer_feedback[:child]
    p @customer_feedback.delete(:child)
    p @investment = @customer_feedback[:investment]
    p @personal_assets = @customer_feedback[:personal_assets]
    p @planned = @customer_feedback[:planned]
    p @references = @customer_feedback[:reference]
    p @customer_feedback.delete(:investment)
    p @customer_feedback.delete(:personal_assets)
    p @customer_feedback.delete(:planned)
    p @customer_feedback.delete(:reference)

    p @customer_feedback = CustomerFeedback.new(@customer_feedback)
    p @child = @customer_feedback.children.build(@child)
    p @personal_assets = @customer_feedback.personal_assets.build(@personal_assets)
    p @planned = @customer_feedback.planneds.build(@planned)
    p @reference = @customer_feedback.references.build(@reference)
    p @investment = @customer_feedback.investments.build(@investment)

    respond_to do |format|
      if @customer_feedback.save
        format.html { redirect_to @customer_feedback, notice: 'Customer feedback was successfully created.' }
        format.json { render json: @customer_feedback, status: :created, location: @customer_feedback }
      else
        format.html { render action: "new" }
        format.json { render json: @customer_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /customer_feedbacks/1
  # PUT /customer_feedbacks/1.json
  def update
    @customer_feedback = CustomerFeedback.find(params[:id])

    respond_to do |format|
      if @customer_feedback.update_attributes(params[:customer_feedback])
        format.html { redirect_to @customer_feedback, notice: 'Customer feedback was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @customer_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_feedbacks/1
  # DELETE /customer_feedbacks/1.json
  def destroy
    @customer_feedback = CustomerFeedback.find(params[:id])
    @customer_feedback.destroy

    respond_to do |format|
      format.html { redirect_to customer_feedbacks_url }
      format.json { head :no_content }
    end
  end
end
