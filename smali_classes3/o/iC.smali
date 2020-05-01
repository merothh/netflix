.class public Lo/iC;
.super Landroid/app/job/JobService;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$Activity;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;",
            "Landroid/app/job/JobParameters;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

.field private final d:Landroid/content/BroadcastReceiver;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/iC;->e:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/iC;->b:Ljava/util/Map;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lo/iC;->a:Landroid/os/Handler;

    .line 170
    new-instance v0, Lo/iC$4;

    invoke-direct {v0, p0}, Lo/iC$4;-><init>(Lo/iC;)V

    iput-object v0, p0, Lo/iC;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a()V
    .locals 3

    .line 132
    iget-object v0, p0, Lo/iC;->c:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lo/iC;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 134
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    .line 136
    iget-object v2, p0, Lo/iC;->c:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->a(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lo/iC;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lo/iC;->a()V

    return-void
.end method

.method static synthetic a(Lo/iC;Landroid/content/Intent;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lo/iC;->c(Landroid/content/Intent;)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 71
    iget-object v0, p0, Lo/iC;->c:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-virtual {p0}, Lo/iC;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/ServiceManagerHelper$Activity;)V

    iput-object v0, p0, Lo/iC;->c:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    :cond_0
    return-void
.end method

.method private b(Landroid/app/job/JobParameters;)V
    .locals 2

    .line 193
    invoke-virtual {p0}, Lo/iC;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/iC;->b(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "nf_job_service_l"

    if-eqz v0, :cond_0

    const-string p1, "not calling Android JobService jobFinish"

    .line 194
    invoke-static {v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "calling Android JobService jobFinish"

    .line 196
    invoke-static {v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0, p1, v0}, Lo/iC;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :goto_0
    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 221
    invoke-static {p0}, Lo/cD;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private c(Landroid/content/Intent;)V
    .locals 2

    .line 178
    sget-object v0, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->d:Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->b()I

    move-result v0

    const-string v1, "NetflixJobId="

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 180
    invoke-static {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->d(I)Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object p1

    .line 185
    iget-object v0, p0, Lo/iC;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobParameters;

    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lo/iC;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-direct {p0, v0}, Lo/iC;->b(Landroid/app/job/JobParameters;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    .line 77
    iget-object v0, p0, Lo/iC;->c:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->d()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lo/iC;->c:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    :cond_0
    return-void
.end method

.method public static e(Landroid/content/Context;Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;Z)V
    .locals 2

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.netflix.mediaclient.service.job.netflixjobservice.jobcomplete"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->b()I

    move-result p1

    const-string v1, "NetflixJobId="

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "needsReschedule"

    .line 204
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 205
    invoke-static {p0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p0

    invoke-virtual {p0, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method private i()V
    .locals 4

    .line 147
    iget-object v0, p0, Lo/iC;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 148
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 150
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobParameters;

    const-string v2, "nf_job_service_l"

    const-string v3, "markAllPendingJobsFinished calling jobFinish"

    .line 151
    invoke-static {v2, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 153
    invoke-direct {p0, v1}, Lo/iC;->b(Landroid/app/job/JobParameters;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    .line 210
    invoke-direct {p0}, Lo/iC;->a()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 215
    iget-object v0, p0, Lo/iC;->c:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0}, Lo/iC;->i()V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 54
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 55
    invoke-direct {p0}, Lo/iC;->b()V

    .line 56
    invoke-static {p0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lo/iC;->d:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.netflix.mediaclient.service.job.netflixjobservice.jobcomplete"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 65
    invoke-static {p0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lo/iC;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    .line 66
    invoke-direct {p0}, Lo/iC;->e()V

    .line 67
    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 88
    invoke-super {p0, p1, p2, p3}, Landroid/app/job/JobService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 97
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->d(I)Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object v0

    .line 98
    invoke-direct {p0}, Lo/iC;->b()V

    .line 101
    iget-object v1, p0, Lo/iC;->c:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object p1, p0, Lo/iC;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 106
    invoke-direct {p0}, Lo/iC;->i()V

    .line 107
    invoke-direct {p0}, Lo/iC;->e()V

    const/4 p1, 0x0

    return p1

    .line 111
    :cond_0
    iget-object v1, p0, Lo/iC;->b:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object p1, p0, Lo/iC;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 115
    iget-object p1, p0, Lo/iC;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_1
    iget-object p1, p0, Lo/iC;->c:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 119
    iget-object p1, p0, Lo/iC;->a:Landroid/os/Handler;

    new-instance v0, Lo/iC$2;

    invoke-direct {v0, p0}, Lo/iC$2;-><init>(Lo/iC;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const-string p1, "nf_job_service_l"

    const-string v0, "waiting for serviceManager to be ready"

    .line 126
    invoke-static {p1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 162
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-static {p1}, Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;->d(I)Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;

    move-result-object p1

    .line 163
    iget-object v0, p0, Lo/iC;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lo/iC;->c:Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/job/ServiceManagerHelper;->b(Lcom/netflix/mediaclient/service/job/NetflixJob$NetflixJobId;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
