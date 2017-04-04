package com.iimr.cvsystem.model;

/**
 * Created by Jiajie on 2017/4/5.
 */
public class UserInfo {
    private int userId;
    private int sampleId;
    private int labId;
    private boolean enrollStatus;
    private boolean submitStatus;
    private boolean hasReport;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getSampleId() {
        return sampleId;
    }

    public void setSampleId(int sampleId) {
        this.sampleId = sampleId;
    }

    public int getLabId() {
        return labId;
    }

    public void setLabId(int labId) {
        this.labId = labId;
    }

    public boolean isEnrollStatus() {
        return enrollStatus;
    }

    public void setEnrollStatus(boolean enrollStatus) {
        this.enrollStatus = enrollStatus;
    }

    public boolean isSubmitStatus() {
        return submitStatus;
    }

    public void setSubmitStatus(boolean submitStatus) {
        this.submitStatus = submitStatus;
    }

    public boolean isHasReport() {
        return hasReport;
    }

    public void setHasReport(boolean hasReport) {
        this.hasReport = hasReport;
    }
}
