.class public Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;
.super Ljava/lang/Object;
.source "NetflixJobSchedulerPreL.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/job/NetflixJobScheduler;


# static fields
.field private static final NETFLIX_JOB_ID:Ljava/lang/String; = "NetflixJobId="

.field private static final TAG:Ljava/lang/String; = "nf_job_scheduler_prel"

.field private static sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->mContext:Landroid/content/Context;

    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->buildPendingJobsFromPrefIfRequired(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method private static buildPendingJobsFromPrefIfRequired(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 322
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    if-nez v0, :cond_2

    .line 323
    const-class v1, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    monitor-enter v1

    .line 324
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    if-nez v0, :cond_1

    .line 325
    const-string/jumbo v0, "pending_jobs"

    const-string/jumbo v2, ""

    invoke-static {p0, v0, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :try_start_1
    const-class v3, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    sput-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    if-nez v0, :cond_1

    .line 336
    const-string/jumbo v0, "nf_job_scheduler_prel"

    const-string/jumbo v2, "buildPendingJobsFromPrefIfRequired sPendingJobRegistry was null"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    .line 340
    :cond_1
    monitor-exit v1

    .line 342
    :cond_2
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    const-string/jumbo v2, "nf_job_scheduler_prel"

    const-string/jumbo v3, "buildPendingJobsFromPrefIfRequired JsonSyntaxException "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private static cancelAlarm(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 242
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    check-cast v0, Landroid/app/AlarmManager;

    .line 243
    if-eqz v0, :cond_1

    .line 244
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/netflix/mediaclient/service/job/NetflixAlarmReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NetflixJobId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 247
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const-string/jumbo v0, "nf_job_scheduler_prel"

    const-string/jumbo v1, "cancelAlarm alarmManager is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static cancelAllJobs(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 307
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    const-string/jumbo v0, "nf_job_scheduler_prel"

    const-string/jumbo v1, "cancelAllJobs"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->buildPendingJobsFromPrefIfRequired(Landroid/content/Context;)V

    .line 311
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    iget-object v1, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;->mNetflixJobs:Ljava/util/Map;

    monitor-enter v1

    .line 312
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;->mNetflixJobs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 313
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getJobIdByValue(I)Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->cancelAlarm(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 315
    :cond_1
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;->mNetflixJobs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 316
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    const-string/jumbo v0, "pending_jobs"

    const-string/jumbo v1, ""

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 318
    invoke-static {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->dumpPref(Landroid/content/Context;)V

    .line 319
    return-void
.end method

.method private static checkAllAndStartJobs(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 298
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    iget-object v1, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;->mNetflixJobs:Ljava/util/Map;

    monitor-enter v1

    .line 299
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;->mNetflixJobs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 300
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;

    .line 301
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->checkAndStartJob(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;)V

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    return-void
.end method

.method private static checkAndStartJob(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 183
    if-nez p1, :cond_1

    .line 184
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const-string/jumbo v0, "nf_job_scheduler_prel"

    const-string/jumbo v1, "checkAndStartJob netflixJobExecInfo is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v4, p1, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;->mNetflixJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    .line 190
    if-nez v4, :cond_2

    .line 191
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const-string/jumbo v0, "nf_job_scheduler_prel"

    const-string/jumbo v1, "checkAndStartJob job is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/job/NetflixJob;->isRepeating()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 199
    iget-wide v0, p1, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;->mLastExecutionTime:J

    .line 200
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getRepeatingPeriodInMs()J

    move-result-wide v6

    add-long/2addr v0, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v0, v6

    .line 202
    :goto_1
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getMinimumDelay()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-lez v5, :cond_3

    .line 203
    iget-wide v0, p1, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;->mRequestIssueTime:J

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getMinimumDelay()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v0, v6

    .line 206
    :cond_3
    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    .line 207
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    const-string/jumbo v2, "nf_job_scheduler_prel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkAndStartJob not starting repeating job. Will start after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 209
    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    :cond_4
    invoke-virtual {v4, p0}, Lcom/netflix/mediaclient/service/job/NetflixJob;->canExecute(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 215
    invoke-static {p0, v4}, Lcom/netflix/mediaclient/service/job/NetflixJobServicePreL;->getServiceStartIntentForJobId(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJob;)Landroid/content/Intent;

    move-result-object v0

    .line 216
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 218
    :cond_5
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const-string/jumbo v0, "nf_job_scheduler_prel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkAndStartJob not starting job="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    move-wide v0, v2

    goto :goto_1
.end method

.method private static dumpPref(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 235
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const-string/jumbo v0, "pending_jobs"

    const-string/jumbo v1, ""

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    const-string/jumbo v1, "nf_job_scheduler_prel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pendingJobsPref="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    return-void
.end method

.method private static getJobExecInfoFromMap(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;
    .locals 3

    .prologue
    .line 278
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    iget-object v1, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;->mNetflixJobs:Ljava/util/Map;

    monitor-enter v1

    .line 279
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;->mNetflixJobs:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getIntValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;

    monitor-exit v1

    return-object v0

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static onAlarmReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 158
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const-string/jumbo v0, "nf_job_scheduler_prel"

    const-string/jumbo v1, "onAlarmReceived"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NetflixJobId="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    invoke-static {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->buildPendingJobsFromPrefIfRequired(Landroid/content/Context;)V

    .line 165
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NetflixJobId="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 168
    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getJobIdByValue(I)Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v0

    .line 167
    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->getJobExecInfoFromMap(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;

    move-result-object v0

    .line 169
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->checkAndStartJob(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_1
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    const-string/jumbo v0, "nf_job_scheduler_prel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAlarmReceived can\'t parse action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    const-string/jumbo v0, "nf_job_scheduler_prel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAlarmReceived unknown action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static onJobExecutionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 4

    .prologue
    .line 47
    invoke-static {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->buildPendingJobsFromPrefIfRequired(Landroid/content/Context;)V

    .line 48
    invoke-static {p1}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->getJobExecInfoFromMap(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;->mLastExecutionTime:J

    .line 51
    iget-object v1, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;->mNetflixJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->isRepeating()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    iget-object v0, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;->mNetflixJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->removeJobExecInfoFromMap(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 54
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->savePendingJobsToPref(Landroid/content/Context;)V

    .line 56
    :cond_1
    return-void
.end method

.method public static onNetworkConnectivityChanged(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 146
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string/jumbo v0, "nf_job_scheduler_prel"

    const-string/jumbo v1, "onNetworkConnectivityChanged"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->buildPendingJobsFromPrefIfRequired(Landroid/content/Context;)V

    .line 150
    invoke-static {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->checkAllAndStartJobs(Landroid/content/Context;)V

    .line 151
    return-void
.end method

.method private static removeJobExecInfoFromMap(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 3

    .prologue
    .line 284
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    iget-object v1, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;->mNetflixJobs:Ljava/util/Map;

    monitor-enter v1

    .line 285
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;->mNetflixJobs:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getIntValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    monitor-exit v1

    .line 287
    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static savePendingJobsToPref(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 228
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 229
    sget-object v1, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 230
    const-string/jumbo v1, "pending_jobs"

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 231
    invoke-static {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->dumpPref(Landroid/content/Context;)V

    .line 232
    return-void
.end method

.method private static setJobExecInfoToMap(Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;)V
    .locals 3

    .prologue
    .line 290
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    iget-object v1, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;->mNetflixJobs:Ljava/util/Map;

    monitor-enter v1

    .line 291
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->sPendingJobRegistry:Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$PendingJobRegistry;->mNetflixJobs:Ljava/util/Map;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;->mNetflixJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    .line 292
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getIntValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 291
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    monitor-exit v1

    .line 295
    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setOneOffAlarm(JLandroid/app/PendingIntent;)V
    .locals 5

    .prologue
    .line 267
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    check-cast v0, Landroid/app/AlarmManager;

    .line 268
    if-eqz v0, :cond_1

    .line 269
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3, p3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const-string/jumbo v0, "nf_job_scheduler_prel"

    const-string/jumbo v1, "setOneOffAlarm alarmManager is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setRepeatingAlarm(JLandroid/app/PendingIntent;)V
    .locals 7

    .prologue
    .line 256
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    check-cast v0, Landroid/app/AlarmManager;

    .line 257
    if-eqz v0, :cond_1

    .line 258
    const/4 v1, 0x0

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const-string/jumbo v0, "nf_job_scheduler_prel"

    const-string/jumbo v1, "setRepeatingAlarm alarmManager is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public cancelJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V
    .locals 3

    .prologue
    .line 123
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string/jumbo v0, "nf_job_scheduler_prel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancelJob "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->getJobExecInfoFromMap(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 127
    invoke-static {p1}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->removeJobExecInfoFromMap(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->cancelAlarm(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->savePendingJobsToPref(Landroid/content/Context;)V

    .line 131
    :cond_1
    return-void
.end method

.method public isJobScheduled(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Z
    .locals 3

    .prologue
    .line 65
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string/jumbo v0, "nf_job_scheduler_prel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isJobScheduled netflixJobId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->dumpPref(Landroid/content/Context;)V

    .line 69
    invoke-static {p1}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->getJobExecInfoFromMap(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onJobFinished(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-string/jumbo v0, "nf_job_scheduler_prel"

    const-string/jumbo v1, "onJobFinished"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    return-void
.end method

.method public scheduleJob(Lcom/netflix/mediaclient/service/job/NetflixJob;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 77
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v0

    .line 78
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const-string/jumbo v1, "nf_job_scheduler_prel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleJob netflixJobId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->getJobExecInfoFromMap(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_2

    .line 83
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    const-string/jumbo v1, "nf_job_scheduler_prel"

    const-string/jumbo v2, "Trying to schedule a job while it already exists.. cancelling"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->cancelJob(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 88
    :cond_2
    new-instance v1, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;-><init>(Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;)V

    .line 89
    iput-wide v4, v1, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;->mLastExecutionTime:J

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;->mRequestIssueTime:J

    .line 91
    iput-object p1, v1, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;->mNetflixJob:Lcom/netflix/mediaclient/service/job/NetflixJob;

    .line 92
    invoke-static {v1}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->setJobExecInfoToMap(Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL$NetflixJobExecInfo;)V

    .line 93
    iget-object v1, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->savePendingJobsToPref(Landroid/content/Context;)V

    .line 95
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->mContext:Landroid/content/Context;

    const-class v3, Lcom/netflix/mediaclient/service/job/NetflixAlarmReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NetflixJobId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->getIntValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_7

    .line 99
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->isRepeating()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 100
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    const-string/jumbo v1, "nf_job_scheduler_prel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setting alarm job="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getRepeatingPeriodInMs()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->setRepeatingAlarm(JLandroid/app/PendingIntent;)V

    .line 118
    :cond_4
    :goto_0
    return-void

    .line 105
    :cond_5
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getMinimumDelay()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_6

    .line 106
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getMinimumDelay()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerPreL;->setOneOffAlarm(JLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 108
    :cond_6
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    const-string/jumbo v0, "nf_job_scheduler_prel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "non-repeating job, no minimum delay. no alarm set. job="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob;->getNetflixJobId()Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_7
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    const-string/jumbo v0, "nf_job_scheduler_prel"

    const-string/jumbo v1, "no alarm set"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
