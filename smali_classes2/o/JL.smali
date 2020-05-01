.class public Lo/JL;
.super Lo/Jv;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lo/Jv;-><init>()V

    return-void
.end method

.method private a(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/Long;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "netflix.ToastUiUtilsShow"
        }
    .end annotation

    .line 113
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 115
    invoke-direct {p0}, Lo/JL;->d()V

    goto :goto_0

    .line 120
    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/cl/model/Error;

    move-result-object v0

    .line 121
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {p2, v0}, Lcom/netflix/cl/model/event/session/action/SignOut;->createActionFailedEvent(Ljava/lang/Long;Lcom/netflix/cl/model/Error;)Lcom/netflix/cl/model/event/session/action/ActionFailed;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/netflix/cl/Logger;->endSession(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    .line 122
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error logging out: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 123
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gK:I

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 124
    invoke-virtual {p0}, Lo/JL;->finish()V

    :goto_0
    return-void
.end method

.method public static b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "LogoutActivity"

    const-string v0, "ServiceManager is null - can\'t flush caches!"

    .line 145
    invoke-static {p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object p1

    invoke-interface {p1}, Lo/zG;->d()Z

    .line 151
    :goto_0
    invoke-static {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finishAllActivities(Landroid/content/Context;)V

    .line 152
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getUiScreen()Lcom/netflix/cl/model/AppView;

    move-result-object p1

    invoke-static {p0, p1}, Lo/Jx;->c(Landroid/content/Context;Lcom/netflix/cl/model/AppView;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lo/JL;->e()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private d()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "netflix.ToastUiUtilsShow"
        }
    .end annotation

    const-string v0, "LogoutActivity"

    const-string v1, "Handling logout completion..."

    .line 130
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->b()V

    .line 134
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->jH:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "handleLogoutComplete()"

    .line 135
    invoke-static {p0, v0}, Lo/JL;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/Long;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lo/JL;->mUserAgentRepository:Lo/JM;

    invoke-virtual {v0}, Lo/JM;->e()Lio/reactivex/Observable;

    move-result-object v0

    .line 170
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lo/JL;->mActivityDestroy:Lio/reactivex/subjects/PublishSubject;

    .line 171
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lo/JL$1;

    const-string v2, "LogoutActivity logoutError"

    invoke-direct {v1, p0, v2, p1}, Lo/JL$1;-><init>(Lo/JL;Ljava/lang/String;Ljava/lang/Long;)V

    .line 172
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static synthetic d(Lo/JL;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/Long;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lo/JL;->a(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic d(Lo/JL;Ljava/lang/Long;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lo/JL;->d(Ljava/lang/Long;)V

    return-void
.end method

.method public static e()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 82
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lo/JN;

    goto :goto_0

    :cond_0
    const-class v0, Lo/JL;

    :goto_0
    return-object v0
.end method

.method public static e(Landroid/app/Activity;)V
    .locals 3

    .line 55
    new-instance v0, Lo/PendingIntent$Activity;

    sget v1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v0, p0, v1}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->hp:I

    .line 56
    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->c(I)Lo/PendingIntent$Activity;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ez:I

    const/4 v2, 0x0

    .line 57
    invoke-virtual {v0, v1, v2}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->jE:I

    new-instance v2, Lo/JL$4;

    invoke-direct {v2, p0}, Lo/JL$4;-><init>(Landroid/app/Activity;)V

    .line 58
    invoke-virtual {v0, v1, v2}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p0

    .line 65
    invoke-virtual {p0}, Lo/PendingIntent$Activity;->e()Lo/PendingIntent;

    return-void
.end method


# virtual methods
.method public createManagerStatusListener()Lo/zT;
    .locals 1

    .line 93
    new-instance v0, Lo/JL$3;

    invoke-direct {v0, p0}, Lo/JL$3;-><init>(Lo/JL;)V

    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 157
    sget-object v0, Lcom/netflix/cl/model/AppView;->logout:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Lo/Jv;->onCreate(Landroid/os/Bundle;)V

    .line 88
    new-instance p1, Lo/JM;

    invoke-direct {p1}, Lo/JM;-><init>()V

    iput-object p1, p0, Lo/JL;->mUserAgentRepository:Lo/JM;

    return-void
.end method
