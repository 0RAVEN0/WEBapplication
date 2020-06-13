package main.java;

/**
 * Class for holding country name, country code and value from "value"
 */
public class ValueInfo implements Comparable<ValueInfo>{
    private final Double value;
    private final String countryName;
    private final String countryCode;

    public ValueInfo(String countryName, String countryCode, Double value){
        this.countryCode = countryCode;
        this.countryName = countryName;
        this.value = value;
    }

    public String getCountryCode() {
        return countryCode;
    }

    public String getCountryName(){
        return countryName;
    }

    public Double getValue() {
        return value;
    }

    @Override
    public int compareTo(ValueInfo o) {
        if (getValue() == null || o.getValue() == null) {
            return 0;
        }
        return getValue().compareTo(o.getValue());
    }
}