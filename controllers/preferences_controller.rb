def create
  @interest = Interest.find(params[:interest_id])
  pref = false
  if params[:submit] == "yes"
	  pref = true
  end

  @preference = @interest.preferences.create(is_preferred: pref)
  if @interest.next
    redirect_to @interest.next
  else
    redirect_to completed_path
  end
end