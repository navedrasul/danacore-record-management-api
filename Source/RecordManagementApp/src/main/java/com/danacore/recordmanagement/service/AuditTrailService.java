package com.danacore.recordmanagement.service;

import com.danacore.recordmanagement.model.AuditTrail;
import com.danacore.recordmanagement.repository.AuditTrailRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AuditTrailService {
    @Autowired
    private AuditTrailRepository auditTrailRepository;

    public List<AuditTrail> getAllAuditTrails() {
        return auditTrailRepository.findAll();
    }

    public Optional<AuditTrail> getAuditTrailById(Long id) {
        return auditTrailRepository.findById(id);
    }

    public AuditTrail saveAuditTrail(AuditTrail auditTrail) {
        return auditTrailRepository.save(auditTrail);
    }

    public void deleteAuditTrail(Long id) {
        auditTrailRepository.deleteById(id);
    }
}
