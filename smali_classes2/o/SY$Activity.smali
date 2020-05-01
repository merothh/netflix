.class public final Lo/SY$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SY;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lo/SY;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lo/SY;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/SY$Activity;->b:Lo/SY;

    iput-object p2, p0, Lo/SY$Activity;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p3, p0, Lo/SY$Activity;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/SY$TaskDescription;",
            ">;)V"
        }
    .end annotation

    const-string v0, "publisher"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lo/SY$Activity;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lo/adR;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lo/SY$Activity;->b:Lo/SY;

    invoke-static {v1}, Lo/SY;->d(Lo/SY;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/SY$Activity;->b:Lo/SY;

    invoke-static {v1}, Lo/SY;->b(Lo/SY;)Lo/SY$ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lo/SY$ActionBar;->d()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x36ee80

    .line 74
    new-instance v2, Lo/JM;

    invoke-direct {v2}, Lo/JM;-><init>()V

    .line 75
    invoke-virtual {v2, v0, v1}, Lo/JM;->a(J)Lio/reactivex/Observable;

    move-result-object v2

    .line 76
    iget-object v3, p0, Lo/SY$Activity;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActivityDestroy()Lio/reactivex/subjects/PublishSubject;

    move-result-object v3

    check-cast v3, Lio/reactivex/ObservableSource;

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->takeUntil(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v4

    const-string v2, "UserAgentRepository()\n  \u2026activity.activityDestroy)"

    invoke-static {v4, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 77
    new-instance v2, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorHelper$getErrorByCode$1$1;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorHelper$getErrorByCode$1$1;-><init>(Lo/SY$Activity;JLio/reactivex/ObservableEmitter;)V

    move-object v7, v2

    check-cast v7, Lo/alA;

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lo/SY$Activity;->b:Lo/SY;

    iget-object v1, p0, Lo/SY$Activity;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lo/SY$Activity;->c:Ljava/lang/String;

    invoke-static {v0}, Lo/SY;->b(Lo/SY;)Lo/SY$ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lo/SY$ActionBar;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lo/SY;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lo/SY$TaskDescription;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 84
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    :goto_0
    return-void
.end method
