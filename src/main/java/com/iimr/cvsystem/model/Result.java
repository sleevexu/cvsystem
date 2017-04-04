package com.iimr.cvsystem.model;

/**
 * Created by Jiajie on 2017/4/5.
 */
public class Result {
    private int sampleId;
    private double initialTemp;
    private double initialRh;
    private double inputVolt;
    private double inputFreq;
    private int testCycleNum;
    private int totalTestTime;
    private double consumePower;
    private double standbyPower;
    private double uncertainty;
    private String affectFactors;

    public int getSampleId() {
        return sampleId;
    }

    public void setSampleId(int sampleId) {
        this.sampleId = sampleId;
    }

    public double getInitialTemp() {
        return initialTemp;
    }

    public void setInitialTemp(double initialTemp) {
        this.initialTemp = initialTemp;
    }

    public double getInitialRh() {
        return initialRh;
    }

    public void setInitialRh(double initialRh) {
        this.initialRh = initialRh;
    }

    public double getInputVolt() {
        return inputVolt;
    }

    public void setInputVolt(double inputVolt) {
        this.inputVolt = inputVolt;
    }

    public double getInputFreq() {
        return inputFreq;
    }

    public void setInputFreq(double inputFreq) {
        this.inputFreq = inputFreq;
    }

    public int getTestCycleNum() {
        return testCycleNum;
    }

    public void setTestCycleNum(int testCycleNum) {
        this.testCycleNum = testCycleNum;
    }

    public int getTotalTestTime() {
        return totalTestTime;
    }

    public void setTotalTestTime(int totalTestTime) {
        this.totalTestTime = totalTestTime;
    }

    public double getConsumePower() {
        return consumePower;
    }

    public void setConsumePower(double consumePower) {
        this.consumePower = consumePower;
    }

    public double getStandbyPower() {
        return standbyPower;
    }

    public void setStandbyPower(double standbyPower) {
        this.standbyPower = standbyPower;
    }

    public double getUncertainty() {
        return uncertainty;
    }

    public void setUncertainty(double uncertainty) {
        this.uncertainty = uncertainty;
    }

    public String getAffectFactors() {
        return affectFactors;
    }

    public void setAffectFactors(String affectFactors) {
        this.affectFactors = affectFactors;
    }
}
