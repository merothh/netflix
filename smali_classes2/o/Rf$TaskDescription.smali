.class public final Lo/Rf$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Rf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lo/Rf$TaskDescription;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/Bi;Lo/nS;)V
    .locals 11

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoType"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlinePlayableViewData"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineAgentInterface"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {p1}, Lo/adR;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    .line 28
    invoke-static {}, Lo/Rf;->e()Lo/SY$ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lo/SY$ActionBar;->d()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x36ee80

    .line 30
    new-instance v2, Lo/JM;

    invoke-direct {v2}, Lo/JM;-><init>()V

    .line 31
    invoke-virtual {v2, v0, v1}, Lo/JM;->a(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActivityDestroy()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableSource;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v7

    const-string v0, "UserAgentRepository()\n  \u2026activity.activityDestroy)"

    invoke-static {v7, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 33
    new-instance v10, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog_Ab13273$Companion$showOfflineErrorDialog$1;

    const-wide/32 v1, 0x36ee80

    move-object v0, v10

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/offline/OfflineErrorDialog_Ab13273$Companion$showOfflineErrorDialog$1;-><init>(JLcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/Bi;Lo/nS;)V

    move-object v5, v10

    check-cast v5, Lo/alA;

    const/4 v6, 0x3

    const/4 v0, 0x0

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p2, p3, p4}, Lo/Re;->d(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/Bi;Lo/nS;)Lo/Re;

    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showOfflineErrorDialog(Lo/Re;)V

    :goto_0
    return-void
.end method
