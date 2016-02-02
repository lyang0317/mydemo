package tfidf;

import org.quartz.*;
import org.quartz.impl.StdSchedulerFactory;

import java.text.ParseException;

import static org.quartz.CronScheduleBuilder.cronSchedule;
import static org.quartz.JobBuilder.newJob;
import static org.quartz.TriggerBuilder.newTrigger;

/**
 * Created by Administrator on 2015/6/23.
 */

public class Main {
    public void start() throws ParseException, SchedulerException {
    //ÿ�������һ��00��00���sl_ods_interface_errorlog_month��sl_ods_page_visit_record_moth�Ƿ���ڣ��������򽨱�
    JobDetail job_page_visit =newJob(TfidfJob.class).withIdentity("job_page_visit", "group_job").build();
    Trigger trigger_page_visit = newTrigger().withIdentity("trigger_page_visit", "group_trigger").withSchedule(cronSchedule(TfidfJob.CRON)).build();

    /**
     * ��ȡscheduler
     */
    SchedulerFactory schdlFactory = new StdSchedulerFactory();
    Scheduler scheduler = schdlFactory.getScheduler();

    /**
     * ��scheduler��������
     */
    scheduler.scheduleJob(job_page_visit, trigger_page_visit);
    scheduler.start();

        System.out.println("------- ��������Ѿ����� -----------------");
        try {
            // ����10�꣬����ע�⣬������߳�ֹͣ�������ǲ���ִ�е�
            Thread.sleep(10*365*24*60*60L * 1000L);
        } catch (Exception e) {

        }

        // �ر� scheduler
        scheduler.shutdown(true);
        System.out.println("------- �����ѹر� ---------------------");


    }





    public static void main(String[] args)  {

        try {
            new Main().start();
        } catch (ParseException e) {
            e.printStackTrace();
        } catch (SchedulerException e) {
            e.printStackTrace();
        }

    }
}