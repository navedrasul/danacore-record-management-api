package com.danacore.recordmanagement.controller;

import com.danacore.recordmanagement.config.TestSecurityConfig;
import com.danacore.recordmanagement.common.model.Inventory;
import com.danacore.recordmanagement.service.InventoryService;
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

@WebMvcTest(InventoryController.class)
@Import(TestSecurityConfig.class)
public class InventoryControllerTest {
    @Autowired
    private MockMvc mockMvc;

    @MockBean  // Changed from @Mock
    private InventoryService inventoryService;

    @InjectMocks
    private InventoryController inventoryController;

    @BeforeEach
    public void setup() {
        MockitoAnnotations.openMocks(this);
        mockMvc = MockMvcBuilders.standaloneSetup(inventoryController).build();
    }

    @Test
    public void getAllInventories() throws Exception {
        Inventory inventory = new Inventory();
        inventory.setId(1L);
        inventory.setProductName("Product A");
        inventory.setStockQuantity(100);

        given(inventoryService.getAllInventories()).willReturn(Arrays.asList(inventory));

        mockMvc.perform(get("/api/inventories")
                .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$[0].productName").value(inventory.getProductName()));
    }

    // ... Similar tests for getInventoryById, createInventory, updateInventory, deleteInventory
}
