/**
 * @author: Romana Džubarová
 * @content: Read form json file
 */

package main.java;

import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Class for reading information from JSON file
 */
public class JSONReader {

    private final List<String> nameCity = new ArrayList<>();
    private final List<ValueInfo> valueArray= new ArrayList<>();
    private String JSONfile_name;

    /**
     * Function which takes information from JSON file, sorted them and add them into list of string
     * @return sorted list of country names from the lowest to the highest unemployment
     */
    public List<ValueInfo> countryName (){

        //read from input and give URL sddress into JSONfile_name
        System.out.println("Give JSON URL address : ");
        BufferedReader inputReader = new BufferedReader(new InputStreamReader(System.in));
        try {
            JSONfile_name = inputReader.readLine();
        } catch (IOException e) {
            e.printStackTrace();
        }

        //https://json-stat.org/samples/oecd.json

        try {
            JSONObject readObject = (JSONObject) new JSONTokener(new URL(JSONfile_name).openStream()).nextValue();

            int countryCount = readObject.getJSONObject("dimension").getJSONObject("area").getJSONObject("category").getJSONObject("index").length();
            int yearsCount = readObject.getJSONObject("dimension").getJSONObject("year").getJSONObject("category").getJSONObject("index").length();

            //make objects ValueInfo only from particular values
            //based of formula = i * countOfAllYears + (countOfAllYears - 1) i take from "value" only value
            //from the last year (2014)
            for (int i = 0; i < countryCount; i++){
                ValueInfo valueInfo = new ValueInfo(readObject.getJSONObject("dimension").getJSONObject("area").getJSONObject("category").getJSONObject("label").getString(readObject.getJSONObject("dimension").getJSONObject("area").getJSONObject("category").getJSONObject("index").names().getString(i)),
                        readObject.getJSONObject("dimension").getJSONObject("area").getJSONObject("category").getJSONObject("index").names().getString(i),
                        (Double) readObject.getJSONArray("value").get(i * yearsCount + (yearsCount-1)));
                valueArray.add(valueInfo);
            }

            //sort values from the the lowest to the highest unemployment
            Collections.sort(valueArray);

            //full nameCity List
            for (ValueInfo valueInfo : valueArray) {
                nameCity.add(valueInfo.getCountryName());
            }

        } catch (IOException | JSONException e) {
            e.printStackTrace();
        }

        return valueArray;
    }
}
