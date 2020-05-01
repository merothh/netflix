.class public final Lo/JX;
.super Lo/JU;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/JX$TaskDescription;
    }
.end annotation


# static fields
.field public static final d:Lo/JX$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/JX$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/JX$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/JX;->d:Lo/JX$TaskDescription;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lomo"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentAdapter"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchStrategy"

    invoke-static {p6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingInfoHolder"

    invoke-static {p7, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct/range {p0 .. p7}, Lo/JU;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-void
.end method

.method public static final synthetic a(Lo/JX;Ljava/util/List;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 17
    invoke-super {p0, p1, p2}, Lo/JU;->d(Ljava/util/List;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/util/List;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/Az;",
            ">;",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            ")V"
        }
    .end annotation

    const-string v0, "videos"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "netflixActivity"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lo/ep;->d:Lo/ep$ActionBar;

    invoke-virtual {v0}, Lo/ep$ActionBar;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    const-string v1, "NetflixApplication.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->s()Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "NetflixApplication.getIn\u2026e().homeLolomoLoadEndedRx"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    move-object v1, p2

    check-cast v1, Lo/UnicodeScript;

    invoke-static {v1}, Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;->d(Lo/UnicodeScript;)Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;

    move-result-object v1

    const-string v2, "AndroidLifecycleScopePro\u2026der.from(netflixActivity)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/uber/autodispose/lifecycle/LifecycleScopeProvider;

    .line 48
    check-cast v1, Lcom/uber/autodispose/ScopeProvider;

    invoke-static {v1}, Lcom/uber/autodispose/AutoDispose;->d(Lcom/uber/autodispose/ScopeProvider;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    check-cast v1, Lio/reactivex/ObservableConverter;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "this.`as`(AutoDispose.autoDisposable(provider))"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lcom/uber/autodispose/ObservableSubscribeProxy;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 40
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/ContinueWatchingListAdapter_Ab15161$issuePlayerPrepareRequests$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/ContinueWatchingListAdapter_Ab15161$issuePlayerPrepareRequests$1;-><init>(Lo/JX;Ljava/util/List;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    move-object v5, v0

    check-cast v5, Lo/alA;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lo/AsyncTask;->b(Lcom/uber/autodispose/ObservableSubscribeProxy;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method
