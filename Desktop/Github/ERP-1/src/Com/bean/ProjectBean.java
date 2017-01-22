package Com.bean;

public class ProjectBean {
String projectNAme, ProjectManager,EstimatedTime,Work_Platform,Status,Description, currentdate;
int teamSize;

public int getTeamSize() {
	return teamSize;
}

public void setTeamSize(int teamSize) {
	this.teamSize = teamSize;
}

public String getProjectNAme() {
	return projectNAme;
}

public void setProjectNAme(String projectNAme) {
	this.projectNAme = projectNAme;
}

public String getProjectManager() {
	return ProjectManager;
}

public void setProjectManager(String projectManager) {
	ProjectManager = projectManager;
}

public String getEstimatedTime() {
	return EstimatedTime;
}

public void setEstimatedTime(String estimatedTime) {
	EstimatedTime = estimatedTime;
}



public String getWork_Platform() {
	return Work_Platform;
}

public void setWork_Platform(String work_Platform) {
	Work_Platform = work_Platform;
}

public String getStatus() {
	return Status;
}

public void setStatus(String status) {
	Status = status;
}

public String getDescription() {
	return Description;
}

public void setDescription(String description) {
	Description = description;
}

public String getCurrentdate() {
	return currentdate;
}

public void setCurrentdate(String currentdate) {
	this.currentdate = currentdate;
}
}
