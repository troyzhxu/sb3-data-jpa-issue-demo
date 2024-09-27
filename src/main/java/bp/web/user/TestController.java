package bp.web.user;

import bp.web.user.model.RolePart;
import bp.web.user.repository.RoleTmplRepository;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@AllArgsConstructor
public class TestController {

    private final RoleTmplRepository roleTmplRepository;

    @GetMapping("/")
    public List<RolePart> test() {
        var idList = List.of(1,2);
        // A exception will be thrown
        return roleTmplRepository.findRoleInfoListByIdNotInAndAppId(idList, 3);
    }

    @GetMapping("/2")
    public List<RolePart> test2() {
        var idList = List.of(1,2);
        // No exception
        return roleTmplRepository.findRoleInfoListByIdNotIn(idList);
    }

}
