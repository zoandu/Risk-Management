const cds = require('@sap/cds');

module.exports = cds.service.impl(async (srv) => {
    // Connect to the external service definition
    const remoteService = await cds.connect.to('API_BUSINESS_PARTNER'); 

    // Handle the READ operation for Suppliers
    srv.on('READ', 'Supplier', async (req) => {
        // Forward the query to the remote service
        return remoteService.run(req.query);
    });
});