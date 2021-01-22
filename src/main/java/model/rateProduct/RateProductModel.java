package model.rateProduct;

import beans.rate.Rate;
import worksWithDatabase.rateProduct.RateDAO;
import worksWithDatabase.rateProduct.RateDataSource;

import java.util.ArrayList;

public class RateProductModel {
    private static RateProductModel rateProductModel;

    public static RateProductModel getInstance(){
        if(rateProductModel != null){
            return rateProductModel;
        }
        else{
            return rateProductModel;
        }
    }
    public int getNumPage(){
        return RateDAO.getNumberOfPage();
    }
    public ArrayList<Rate>loadListRate(int page, String type, int numberPerPage,String idProduct){
        RateDAO rateDAO = RateDataSource.getInstance().getRateDAO();
        ArrayList<Rate> list = rateDAO.LoadAllRates(page,type,numberPerPage,idProduct);
        RateDataSource.getInstance().releaseRateDAO(rateDAO);
        return list;
    }

}
