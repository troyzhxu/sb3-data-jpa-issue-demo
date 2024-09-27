package base.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import jakarta.persistence.Column;
import jakarta.persistence.EntityListeners;
import jakarta.persistence.MappedSuperclass;
import jakarta.persistence.Version;
import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.util.Date;

/**
 * Audit Domain
 * @author Troy.Zhou @ 2022/8/5 16:46
 */
@Getter
@Setter
@MappedSuperclass
@EntityListeners(AuditingEntityListener.class)
public class AD {

    /**
     * 乐观锁
     */
    @Version
    @Column(nullable = false)
    private int version = 0;

    /**
     * 创建者
     */
    @CreatedBy
    @Column(length = 60)
    private String createBy;

    /**
     * 创建时间
     */
    @CreatedDate
    @Column(nullable = false)
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm", timezone = "GMT+8")
    private Date dateCreated;

    /**
     * 更新者
     */
    @LastModifiedBy
    @Column(length = 60)
    private String updateBy;

    /**
     * 更新时间
     */
    @LastModifiedDate
    @Column(nullable = false)
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm", timezone = "GMT+8")
    private Date lastUpdated;

}
