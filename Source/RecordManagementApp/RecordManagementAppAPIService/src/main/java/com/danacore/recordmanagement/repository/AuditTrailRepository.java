package com.danacore.recordmanagement.repository;

import com.danacore.recordmanagement.common.model.AuditTrail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AuditTrailRepository extends JpaRepository<AuditTrail, Long> {
}
