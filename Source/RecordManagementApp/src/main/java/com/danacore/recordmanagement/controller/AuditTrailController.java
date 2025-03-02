package com.danacore.recordmanagement.controller;

import com.danacore.recordmanagement.model.AuditTrail;
import com.danacore.recordmanagement.service.AuditTrailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/audit-trails")
public class AuditTrailController {
    @Autowired
    private AuditTrailService auditTrailService;

    @GetMapping
    public List<AuditTrail> getAllAuditTrails() {
        return auditTrailService.getAllAuditTrails();
    }

    @GetMapping("/{id}")
    public Optional<AuditTrail> getAuditTrailById(@PathVariable Long id) {
        return auditTrailService.getAuditTrailById(id);
    }

    @PostMapping
    public AuditTrail createAuditTrail(@RequestBody AuditTrail auditTrail) {
        return auditTrailService.saveAuditTrail(auditTrail);
    }

    @PutMapping("/{id}")
    public AuditTrail updateAuditTrail(@PathVariable Long id, @RequestBody AuditTrail auditTrail) {
        auditTrail.setId(id);
        return auditTrailService.saveAuditTrail(auditTrail);
    }

    @DeleteMapping("/{id}")
    public void deleteAuditTrail(@PathVariable Long id) {
        auditTrailService.deleteAuditTrail(id);
    }
}
