package bp.web.user.domain;

import base.domain.IdDelAD;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

/**
 * 角色模板
 * @author Troy.Zhou @ 2022/7/29 23:37
 */
@Getter
@Setter
@Entity
@Table(name = "u_role_tmpl")
public class RoleTmpl extends IdDelAD<Integer> {

    /**
     * 角色名称
     */
    @Column(nullable = false, length = 45)
    private String name;

    /**
     * 角色编码
     */
    @Column(nullable = false, length = 45)
    private String rkey = "";

    /**
     * 该角色关联的应用ID，可多个，逗号分割，根据 appWidgets 计算
     */
    @Column(nullable = false, length = 498)
    private String appIds = "";

}
