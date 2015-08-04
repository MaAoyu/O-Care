package com.OCare.service;

import com.OCare.dao.ElderMonitorDAO;
import com.OCare.dao.ElderMonitorDAOImp;
import com.OCare.entity.ElderMonitor;
import org.hamcrest.collection.IsArray;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by fowafolo on 15/7/29.
 */

@Service
@Transactional
public class VerifyServiceImp implements VerifyService {

    @Autowired
    private ElderMonitorDAO elderMonitorDAO;

    public void submitMonitorApply(String relativeId, String elderId, String togetherImg) {
        ElderMonitor newRelation = new ElderMonitor();
        newRelation.setElder_id(elderId);
        newRelation.setRelative_id(relativeId);
        newRelation.setTogetherImg(togetherImg);
        //在申请状态ElderMonitor里的type应为4
        newRelation.setType(3);
        //添加到数据库
        elderMonitorDAO.insert(newRelation);
    }

    @Override
    public void checkMonitorApply(int elderMonitorId, boolean isApproval) {
        //首先根据id拿到数据库中的elderMonitor
        ElderMonitor monitorToUpdate = elderMonitorDAO.getById(elderMonitorId);
        //审批不同意，ElderMonitor里的type应为4
        if (isApproval == false){
            monitorToUpdate.setType(4);
            elderMonitorDAO.update(monitorToUpdate);
        }else{
            //审批同意，ElderMonitor里的type应为1，意味监护人
            monitorToUpdate.setType(1);
            elderMonitorDAO.update(monitorToUpdate);
        }
    }

    @Override
    public List<ElderMonitor> getAllUntreatedRequests() {
        return elderMonitorDAO.getAllUntreatedRequests();
    }

    @Override
    public ElderMonitor getRequestByID(int requestid) {return elderMonitorDAO.getById(requestid); }

    @Override
    public List<ElderMonitor> monitorStatus(String relativeId) {
        return elderMonitorDAO.queryByRelativeId(relativeId);
    }
}
