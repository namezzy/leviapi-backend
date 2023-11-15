package top.withlevi.project.service;

import com.baomidou.mybatisplus.extension.service.IService;
import top.withlevi.project.model.entity.UserInterfaceInfo;

/**
 * @author Hello World
 * @description 针对表【user_interface_info(用户调用接口关系表)】的数据库操作Service
 * @createDate 2023-11-14 10:38:33
 */
public interface UserInterfaceInfoService extends IService<UserInterfaceInfo> {

    void validUserInterfaceInfo(UserInterfaceInfo userInterfaceInfo, boolean add);


    /**
     * 调用接口统计
     *
     * @param interfaceInfoId
     * @param userId
     * @return
     */
    boolean invokeCount(long interfaceInfoId, long userId);

}
