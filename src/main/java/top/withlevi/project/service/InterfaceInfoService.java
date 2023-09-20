package top.withlevi.project.service;

import top.withlevi.project.model.entity.InterfaceInfo;
import com.baomidou.mybatisplus.extension.service.IService;

/**
* @author Hello World
* @description 针对表【interface_info(Interface information table)】的数据库操作Service
* @createDate 2023-09-20 16:49:05
*/
public interface InterfaceInfoService extends IService<InterfaceInfo> {

    void validInterfaceInfo(InterfaceInfo interfaceInfo, boolean add);

}
