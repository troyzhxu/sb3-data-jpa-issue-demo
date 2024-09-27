package base.domain;

import jakarta.persistence.Column;
import jakarta.persistence.MappedSuperclass;
import lombok.Getter;
import lombok.Setter;

/**
 * @author Troy.Zhou @ 2022/8/5 17:08
 */
@Getter
@Setter
@MappedSuperclass
public class DelAD extends AD implements Del {

    /**
     * 逻辑删除
     */
    @Column(nullable = false)
    private boolean deleted;

}
