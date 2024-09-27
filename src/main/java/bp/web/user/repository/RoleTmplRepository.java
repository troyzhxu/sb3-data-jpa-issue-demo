package bp.web.user.repository;

import bp.web.user.domain.RoleTmpl;
import bp.web.user.model.RolePart;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface RoleTmplRepository extends CrudRepository<RoleTmpl, Integer> {

    @Query("""
    select new bp.web.user.model.RolePart(id, name, rkey) from RoleTmpl
    where find_in_set(:appId, appIds) is true and id not in (:idList) and deleted = false
    """)
    List<RolePart> findRoleInfoListByIdNotInAndAppId(List<Integer> idList, int appId);

}
