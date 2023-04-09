/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author Chau Thinh
 */
public class LoaiSach {
    private int LS_ID;
    private String Ten;
    private String MoTa;

    public LoaiSach() {
    }

    public int getLS_ID() {
        return LS_ID;
    }

    public void setLS_ID(int LS_ID) {
        this.LS_ID = LS_ID;
    }

    public String getTen() {
        return Ten;
    }

    public void setTen(String Ten) {
        this.Ten = Ten;
    }

    public String getMoTa() {
        return MoTa;
    }

    public void setMoTa(String MoTa) {
        this.MoTa = MoTa;
    }
    
    @Override
    public String toString() {
        return Ten;
    }
}
