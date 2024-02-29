package asm.group4.steam.controller.page;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import asm.group4.steam.model.Account;
import asm.group4.steam.service.AdminDAO;
import asm.group4.steam.service.SessionService;
import asm.group4.steam.service.VNPayService;

@org.springframework.stereotype.Controller
public class Controller {
    @Autowired
    private VNPayService vnPayService;
    @Autowired
    SessionService session;
    @Autowired
    AdminDAO admindao;
    @GetMapping("/cashout")
    public String home(){
        return "index";
    }
    @GetMapping("/cashout/{money}")
    public String cashout(Model model, @PathVariable("money") Integer money,Account account) {
    	account = (Account) session.get("user");
    	model.addAttribute("money",money);
    	model.addAttribute("idAccount",account.getId_account());
    	
    	return "index";
    }

    @PostMapping("/submitOrder")
    public String submidOrder(@RequestParam("amount") int orderTotal,
                            @RequestParam("orderInfo") String orderInfo,
                            HttpServletRequest request){
        String baseUrl = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
        String vnpayUrl = vnPayService.createOrder(orderTotal, orderInfo, baseUrl);
        session.set("amount", orderTotal);
        return "redirect:" + vnpayUrl;
    }

    @GetMapping("/vnpay-payment")
    public String GetMapping(HttpServletRequest request, Model model){
        int paymentStatus =vnPayService.orderReturn(request);

        String orderInfo = request.getParameter("vnp_OrderInfo");
        String paymentTime = request.getParameter("vnp_PayDate");
        String transactionId = request.getParameter("vnp_TransactionNo");
        String totalPrice = request.getParameter("vnp_Amount");
        Integer amount = (Integer) session.get("amount");
        model.addAttribute("orderId", orderInfo);
        model.addAttribute("totalPrice", totalPrice);
        model.addAttribute("paymentTime", paymentTime);
        model.addAttribute("transactionId", transactionId);
        model.addAttribute("amount", amount);

        return paymentStatus == 1 ? "ordersuccess" : "orderfail";
    }
}
