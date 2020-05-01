.class public Lcom/netflix/mediaclient/service/configuration/AndroidJobSchedulerConfig;
.super Ljava/lang/Object;
.source "AndroidJobSchedulerConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isJobFinishDisabled(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "disableJobFinishAndroidJobScheduler"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isJobSchedulerDisabled(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "disableAndroidJobScheduler"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static updateJobFinishDisabled(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "disableJobFinishAndroidJobScheduler"

    invoke-static {p0, v0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static updateJobSchedulerDisabledAndDisableIfNeeded(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "disableAndroidJobScheduler"

    invoke-static {p0, v0, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/job/NetflixJobSchedulerImpl;->cancelAllJobs(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
