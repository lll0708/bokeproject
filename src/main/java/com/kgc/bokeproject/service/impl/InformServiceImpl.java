package com.kgc.bokeproject.service.impl;

import com.kgc.bokeproject.mapper.InformMapper;
import com.kgc.bokeproject.pojo.Inform;
import com.kgc.bokeproject.service.InformService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author 李龙龙
 * 举报标的实现类
 */
@Service
@Transactional
public class InformServiceImpl implements InformService {
    @Resource
    InformMapper informMapper;

    @Override
    public boolean addInform(Inform inform) {
        int i = informMapper.insertSelective(inform);
        return i>0?true:false;
    }

    @Override
    //查询所有举报信息
    public List<Inform> selectInformAll() {
        List<Inform> informs = informMapper.selectByExample(null);
        if (informs!=null && informs.size()>0){
            return informs;
        }
        return null;
    }
}
