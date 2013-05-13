class FakeTwittersController < ApplicationController
  # GET /fake_twitters
  # GET /fake_twitters.json
  def index
    @fake_twitters = FakeTwitter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fake_twitters }
    end
  end

  # GET /fake_twitters/1
  # GET /fake_twitters/1.json
  def show
    @fake_twitter = FakeTwitter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fake_twitter }
    end
  end

  # GET /fake_twitters/new
  # GET /fake_twitters/new.json
  def new
    @fake_twitter = FakeTwitter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fake_twitter }
    end
  end

  # GET /fake_twitters/1/edit
  def edit
    @fake_twitter = FakeTwitter.find(params[:id])
  end

  # POST /fake_twitters
  # POST /fake_twitters.json
  def create
    @fake_twitter = FakeTwitter.new(params[:fake_twitter])

    respond_to do |format|
      if @fake_twitter.save
        format.html { redirect_to @fake_twitter, notice: 'Fake twitter was successfully created.' }
        format.json { render json: @fake_twitter, status: :created, location: @fake_twitter }
      else
        format.html { render action: "new" }
        format.json { render json: @fake_twitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fake_twitters/1
  # PUT /fake_twitters/1.json
  def update
    @fake_twitter = FakeTwitter.find(params[:id])

    respond_to do |format|
      if @fake_twitter.update_attributes(params[:fake_twitter])
        format.html { redirect_to @fake_twitter, notice: 'Fake twitter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fake_twitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fake_twitters/1
  # DELETE /fake_twitters/1.json
  def destroy
    @fake_twitter = FakeTwitter.find(params[:id])
    @fake_twitter.destroy

    respond_to do |format|
      format.html { redirect_to fake_twitters_url }
      format.json { head :no_content }
    end
  end
end
