package com.danacore.recordmanagement.controller;

import com.danacore.recordmanagement.common.model.AuditTrail;
import com.danacore.recordmanagement.config.TestSecurityConfig;
import com.danacore.recordmanagement.service.AuditTrailService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.MockitoAnnotations;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Import;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import java.util.Arrays;
import java.util.Optional;

import static org.mockito.BDDMockito.given;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@WebMvcTest(AuditTrailController.class)
@Import(TestSecurityConfig.class)
public class AuditTrailControllerTest {
    @Autowired
    private MockMvc mockMvc;

    @MockBean  // Changed from @Mock
    private AuditTrailService auditTrailService;

    @InjectMocks
    private AuditTrailController auditTrailController;

    @BeforeEach
    public void setup() {
        MockitoAnnotations.openMocks(this);
        mockMvc = MockMvcBuilders.standaloneSetup(auditTrailController).build();
    }

    @Test
    public void getAllAuditTrails() throws Exception {
        AuditTrail auditTrail = new AuditTrail();
        auditTrail.setId(1L);
        auditTrail.setEntityId(1L);
        auditTrail.setEntityType("Customer");

        given(auditTrailService.getAllAuditTrails()).willReturn(Arrays.asList(auditTrail));

        mockMvc.perform(get("/api/audit-trails")
                .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].entityType").value(auditTrail.getEntityType()));
    }

    // ... Similar tests for getAuditTrailById, createAuditTrail, updateAuditTrail, deleteAuditTrail
}
