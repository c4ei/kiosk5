exports.getAttachProofofPaymentPage = (req, res) => {
    const settings = res.locals.settings;
    const title = 'ATTACH PROOF OF PAYMENT - ' + settings.text_footer;
    const your_page = 'Attach_Proof_of_Payment';
    const error = req.flash('error');
    const success = req.flash('success');
    const page = parseInt(req.query.page) || 1;
    const limit = 5;
    const offset = (page - 1) * limit;
    const search = req.query.search || '';
    const user = res.locals.user;

    if (!user || !user.member_id) {
        console.error('User not authenticated or user ID not found');
        return res.redirect('/');
    }

    const countQuery = `
        SELECT COUNT(*) as total
        FROM Orders
        INNER JOIN Payment_Options ON Orders.pay_id = Payment_Options.pay_id
        WHERE (Orders.order_id LIKE ?) AND Orders.cashier_id = ?
    `;

    const dataQuery = `
        SELECT 
            Orders.order_id, 
            Orders.cashier_id, 
            Orders.customer_id,
            Payment_Options.pay_id,
            Payment_Options.pay_cat_name,
            Payment_Options.pay_bank_name,
            Orders.total_unit, 
            Orders.total_amount, 
            Orders.member_discount, 
            Orders.net_total,
            Orders.get_money,
            Orders.change_money,
            Orders.order_time_transaction,
            Orders.order_time_payment,
            Order_Attach_Proof_Payment.oapp_image,
            Order_Attach_Proof_Payment.oapp_date,
            Order_Attach_Proof_Payment.oapp_time,
            Orders.time_order
        FROM 
            Orders
        INNER JOIN 
            Payment_Options ON Orders.pay_id = Payment_Options.pay_id
        LEFT JOIN 
            Order_Attach_Proof_Payment ON Orders.order_id = Order_Attach_Proof_Payment.order_id
        WHERE
            (Orders.order_id LIKE ?) AND Orders.cashier_id = ?
        ORDER BY 
            time_order DESC
        LIMIT ${limit} OFFSET ${offset}
    `;

    const searchQuery = `%${search}%`;

    db.query(countQuery, [searchQuery, user.member_id], (err, countResult) => {
        if (err) {
            res.redirect('/');
        } else {
            const totalRecords = countResult[0].total;
            const totalPages = Math.ceil(totalRecords / limit);

            db.query(dataQuery, [searchQuery, user.member_id], (err, result) => {
                if (err) {
                    console.log(err);
                    res.redirect('/');
                } else {
                    res.render('Role/Cashier/Attach_Proof_of_Payment', {
                        title, 
                        your_page,
                        error: error[0],
                        success: success[0],
                        orders: result,
                        currentPage: page,
                        totalRecords,
                        totalPages,
                        search
                    });
                }
            });
        }
    });
};