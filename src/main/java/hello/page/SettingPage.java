package hello.page;

public class SettingPage {
	int page;
	int pageSize = 1;

	public int getFirstRecord() {
		return (page - 1) * pageSize;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public SettingPage(int page, int pageSize) {
		super();
		this.page = page;
		this.pageSize = pageSize;
	}

	public SettingPage(int page) {
		super();
		this.page = page;
	}

}
