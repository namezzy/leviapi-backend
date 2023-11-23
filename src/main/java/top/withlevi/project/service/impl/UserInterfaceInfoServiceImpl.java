package top.withlevi.project.service.impl;

import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import top.withlevi.project.common.ErrorCode;
import top.withlevi.project.exception.BusinessException;
import top.withlevi.project.model.entity.UserInterfaceInfo;
import top.withlevi.project.service.UserInterfaceInfoService;
import top.withlevi.project.mapper.UserInterfaceInfoMapper;
import org.springframework.stereotype.Service;

/**
 * @author Hello World
 * @description 针对表【user_interface_info(用户调用接口关系表)】的数据库操作Service实现
 * @createDate 2023-11-14 10:38:33
 */
@Service
public class UserInterfaceInfoServiceImpl extends ServiceImpl<UserInterfaceInfoMapper, UserInterfaceInfo>
        implements UserInterfaceInfoService {

    public void validUserInterfaceInfo(UserInterfaceInfo userInterfaceInfo, boolean add) {

        if (userInterfaceInfo == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR);
        }


        if (add) {
            if (userInterfaceInfo.getInterfaceInfoId() <= 0 || userInterfaceInfo.getUserId() <= 0) {
                throw new BusinessException(ErrorCode.PARAMS_ERROR, "接口或用户不存在");
            }
        }

        if (userInterfaceInfo.getLeftNum() < 0) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "可调用次数已用尽");
        }


    }

    @Override
    public boolean invokeCount(long interfaceInfoId, long userId) {

        if (interfaceInfoId <= 0 || userId <= 0) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR);
        }

        UpdateWrapper<UserInterfaceInfo> updateWrapper = new UpdateWrapper<>();
        updateWrapper.eq("interfaceInfoId", interfaceInfoId);
        updateWrapper.eq("userId", userId);
        // 剩余次数大于0
        updateWrapper.gt("leftNum",0);
        updateWrapper.setSql("leftNum = leftNum - 1,totalNum = totalNum + 1");
        return this.update(updateWrapper);

    }
}




