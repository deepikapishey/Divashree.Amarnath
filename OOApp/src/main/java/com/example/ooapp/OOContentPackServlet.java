package com.example.ooapp;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.google.gson.Gson;

@WebServlet("/oo/rest/v2/content-packs")
public class OOContentPackServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private List<Map<String, Object>> cpInformation;

    public OOContentPackServlet() {
        super();
        cpInformation = new ArrayList<>();

        // Add content pack information
        Map<String, Object> ooInfo = new HashMap<>();
        ooInfo.put("name", "OO INFO");
        ooInfo.put("version", "1.0.0");
        ooInfo.put("id", "82193d19-e854-4773-9b62-1032be322c31");
        ooInfo.put("publisher", "Customer");
        ooInfo.put("description", null);
        ooInfo.put("deploymentDate", 1715079360353L);
        ooInfo.put("deployedBy", "vbg");

        Map<String, Object> signDetails1 = new HashMap<>();
        signDetails1.put("signStatus", "notSigned");
        signDetails1.put("signedBy", null);
        List<String> warnings1 = new ArrayList<>();
        warnings1.add("This jar is not signed by a trusted signer");
        warnings1.add("This jar contains unsigned entries that have not been integrity-checked.");
        signDetails1.put("warnings", warnings1);
        signDetails1.put("certs", new ArrayList<>());
        signDetails1.put("trusted", false);
        ooInfo.put("signDetails", signDetails1);

        ooInfo.put("scmTag", null);
        ooInfo.put("scmRevision", null);
        ooInfo.put("valid", true);
        ooInfo.put("exportable", true);

        cpInformation.add(ooInfo);

        Map<String, Object> thirdParty = new HashMap<>();
        thirdParty.put("name", "Third-party");
        thirdParty.put("version", "1.1.0");
        thirdParty.put("id", "f6cd3a35-2325-4623-b84c-1a6916f19c72");
        thirdParty.put("publisher", "Hewlett-Packard");
        thirdParty.put("description", "Third Party Content Pack is an empty structure for third-party libraries that are not shipped as part of HP OO out of the box content. Instructions about the list of dependencies and how to use it can be found in the corresponding documentation.");
        thirdParty.put("deploymentDate", 1455117394893L);
        thirdParty.put("deployedBy", "oo_admin");

        Map<String, Object> signDetails2 = new HashMap<>();
        signDetails2.put("signStatus", "signed");
        signDetails2.put("signedBy", "CN=VeriSign Class 3 Public Primary Certification Authority - G5, OU=\"(c) 2006 VeriSign, Inc. - For authorized use only\", OU=VeriSign Trust Network, O=\"VeriSign, Inc.\", C=US");

        List<Map<String, Object>> certs = new ArrayList<>();
        Map<String, Object> cert1 = new HashMap<>();
        cert1.put("certType", "X.509");
        cert1.put("certDn", "CN=Hewlett-Packard Company, OU=HPGlobal, OU=Digital ID Class 3 - Java Object Signing, O=Hewlett-Packard Company, L=Andover, ST=Massachusetts, C=US");
        cert1.put("certKeystoreEntryAlias", null);
        cert1.put("validityTimeFrom", 1368144000000L);
        cert1.put("validityTimeNotAfter", 1465430399000L);
        cert1.put("validityTimeNotBefore", 0L);
        cert1.put("supportCodeSign", false);
        certs.add(cert1);

        Map<String, Object> cert2 = new HashMap<>();
        cert2.put("certType", "X.509");
        cert2.put("certDn", "CN=VeriSign Class 3 Code Signing 2010 CA, OU=Terms of use at https://www.verisign.com/rpa (c)10, OU=VeriSign Trust Network, O=\"VeriSign, Inc.\", C=US");
        cert2.put("certKeystoreEntryAlias", null);
        cert2.put("validityTimeFrom", 1265587200000L);
        cert2.put("validityTimeNotAfter", 1581119999000L);
        cert2.put("validityTimeNotBefore", 0L);
        cert2.put("supportCodeSign", false);
        certs.add(cert2);

        signDetails2.put("certs", certs);
        signDetails2.put("trusted", true);
        thirdParty.put("signDetails", signDetails2);

        thirdParty.put("scmTag", null);
        thirdParty.put("scmRevision", null);
        thirdParty.put("valid", false);
        thirdParty.put("exportable", false);

        cpInformation.add(thirdParty);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        Gson gson = new Gson();
        String jsonResponse = gson.toJson(cpInformation);
        response.getWriter().write(jsonResponse);
    }
}
