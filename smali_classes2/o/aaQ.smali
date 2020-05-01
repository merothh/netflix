.class public final Lo/aaQ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final c:Lo/SY;

.field private final e:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lo/SY;

    invoke-direct {v0}, Lo/SY;-><init>()V

    iput-object v0, p0, Lo/aaQ;->c:Lo/SY;

    .line 23
    sget-object v0, Lo/aaQ$Application;->d:Lo/aaQ$Application;

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    iput-object v0, p0, Lo/aaQ;->e:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private final b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;)V
    .locals 7

    .line 71
    iget-object v0, p0, Lo/aaQ;->c:Lo/SY;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lo/SY;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p2

    .line 72
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActivityDestroy()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    const-string p2, "helper.getErrorByCode(ac\u2026activity.activityDestroy)"

    invoke-static {v1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance p2, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showWideVineRecoverableDialog$1;

    invoke-direct {p2, p0, p1}, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showWideVineRecoverableDialog$1;-><init>(Lo/aaQ;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    move-object v4, p2

    check-cast v4, Lo/alA;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic c(Lo/aaQ;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lo/aaQ;->e:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method private final c(Landroid/app/AlertDialog;)V
    .locals 1

    .line 107
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const v0, 0x102000b

    .line 108
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;)V
    .locals 7

    .line 93
    iget-object v0, p0, Lo/aaQ;->c:Lo/SY;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lo/SY;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p2

    .line 94
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActivityDestroy()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    const-string p2, "helper.getErrorByCode(ac\u2026activity.activityDestroy)"

    invoke-static {v1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance p2, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showDialog$3;

    invoke-direct {p2, p0, p1}, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showDialog$3;-><init>(Lo/aaQ;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    move-object v4, p2

    check-cast v4, Lo/alA;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static final synthetic c(Lo/aaQ;Landroid/app/AlertDialog;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lo/aaQ;->c(Landroid/app/AlertDialog;)V

    return-void
.end method

.method private final c(Lo/aaV;Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;)V
    .locals 7

    .line 52
    iget-object v0, p0, Lo/aaQ;->c:Lo/SY;

    move-object v1, p1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lo/SY;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p2

    .line 53
    invoke-virtual {p1}, Lo/aaV;->getActivityDestroy()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    check-cast v0, Lio/reactivex/ObservableSource;

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    const-string p2, "helper.getErrorByCode(ac\u2026activity.activityDestroy)"

    invoke-static {v1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance p2, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showStoragePermissionDialog$1;

    invoke-direct {p2, p0, p1}, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics_Ab13273$showStoragePermissionDialog$1;-><init>(Lo/aaQ;Lo/aaV;)V

    move-object v4, p2

    check-cast v4, Lo/alA;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public final b(Lo/aaV;Lo/Am;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manager"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lo/Am;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Lo/pf;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object p2, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->a:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    invoke-direct {p0, p1, p2}, Lo/aaQ;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;)V

    return-void

    .line 36
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lo/pf;->c(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    sget-object p2, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->e:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    invoke-direct {p0, p1, p2}, Lo/aaQ;->c(Lo/aaV;Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;)V

    return-void

    .line 40
    :cond_2
    invoke-virtual {p2}, Lo/Am;->i()Lo/cz;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lo/cz;->W()Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 41
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-string v0, "reason"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lo/aaQ;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;)V

    goto :goto_0

    .line 42
    :cond_3
    move-object p2, p0

    check-cast p2, Lo/aaQ;

    .line 43
    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/aaO;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 44
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->c:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    invoke-direct {p2, p1, v0}, Lo/aaQ;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;)V

    goto :goto_0

    .line 46
    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->d:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    invoke-direct {p2, p1, v0}, Lo/aaQ;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;)V

    :cond_5
    :goto_0
    return-void
.end method
