package com.danacore.recordmanagement.controller;

import com.danacore.recordmanagement.common.model.AuditTrail;
import com.danacore.recordmanagement.config.TestSecurityConfig;
import com.danacore.recordmanagement.service.AuditTrailService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.context.annotation.Import;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.context.bean.override.mockito.MockitoBean;

import java.util.Arrays;

import static org.mockito.BDDMockito.given;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.doNothing;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@ExtendWith(MockitoExtension.class)
@WebMvcTest(AuditTrailController.class)
@Import({TestSecurityConfig.class})
class AuditTrailControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private ObjectMapper objectMapper;

    @MockitoBean
    private AuditTrailService auditTrailService;

    @Test
    void getAllAuditTrails() throws Exception {
        AuditTrail auditTrail = new AuditTrail();
        auditTrail.setId(1L);
        auditTrail.setEntityId(1L);
        auditTrail.setEntityType("Customer");

        given(auditTrailService.getAllAuditTrails()).willReturn(Arrays.asList(auditTrail));

        mockMvc.perform(get("/api/audit-trails")
                .accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].entityType").value(auditTrail.getEntityType()));
    }

    // ...rest of test methods following the same pattern...
}
