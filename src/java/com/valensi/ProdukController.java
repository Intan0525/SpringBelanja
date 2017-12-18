package com.valensi;

import com.valensi.dao.ProdukService;
import com.valensi.model.Produk;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/produks")
public class ProdukController {
    @Autowired
    ProdukService ps;
    
    @RequestMapping()
    public String showAllProduk(Model model){
        List<Produk> produks = ps.findAll();
        for (Produk produk : produks) {
            System.out.println("Nama :"+produk.getNamaProduk());
        }
        model.addAttribute("produks", produks);
        return "produklist";
    }
    @RequestMapping(value="/{produkId}")
    public String showOneProduk(@PathVariable Integer produkId, Model model){
        System.out.println("IDnya : "+ produkId);
        Produk produk = ps.findById(Long.valueOf(produkId));
        model.addAttribute("produk", produk);
        return "produkdetail";
        
    }
}
