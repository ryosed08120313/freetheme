package Bean;

public class PlanBean {

	private int planId;
	private String planName;
	private String country;
	private int days;
	private int morning;
	private int pickup;

	public int getPlanId() {
		return planId;
	}

	public void setPlanId(int planId) {
		this.planId = planId;
	}

	public String getPlanName() {
		return planName;
	}

	public void setPlanName(String planName) {
		this.planName = planName;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public int getDays() {
		return days;
	}

	public void setDays(int days) {
		this.days = days;
	}

	public int getMorning() {
		return morning;
	}

	public void setMorning(int morning) {
		this.morning = morning;
	}

	public int getPickup() {
		return pickup;
	}

	public void setPickup(int pickup) {
		this.pickup = pickup;
	}

	@Override
	public String toString() {
		return "PlanBean [planId=" + planId + ", planName=" + planName + ", country=" + country + ", days=" + days
				+ ", morning=" + morning + ", pickup=" + pickup + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + planId;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		PlanBean other = (PlanBean) obj;
		if (planId != other.planId)
			return false;
		return true;
	}

}