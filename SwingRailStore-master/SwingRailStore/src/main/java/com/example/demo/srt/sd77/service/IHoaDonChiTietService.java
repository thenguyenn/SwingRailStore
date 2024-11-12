package com.example.demo.srt.sd77.service;

import com.example.demo.srt.sd77.entity.HinhThucThanhToan;
import com.example.demo.srt.sd77.entity.HoaDonChiTiet;
import com.example.demo.srt.sd77.entity.request.PaymentMethodAddRequest;
import com.example.demo.srt.sd77.entity.request.ProductDetailRequest;
import org.springframework.data.domain.Page;

import java.util.ArrayList;

public interface IHoaDonChiTietService {
    Page<HoaDonChiTiet> findProductDetailsByIdProduct(Integer pageNo, Integer pageSize, Long id);

    HoaDonChiTiet addProductToBill(ProductDetailRequest req);

    HoaDonChiTiet addProductToBillRefund(ProductDetailRequest req);

    HoaDonChiTiet addProductToBillClient(ProductDetailRequest req);

    void removeBillDetailById(Long id);

    HoaDonChiTiet updateBillDetail(HoaDonChiTiet req);

    ArrayList<HoaDonChiTiet> getBillDetailByState(Integer state, Long id);

    HoaDonChiTiet checkBillDetail(ProductDetailRequest req);
}
