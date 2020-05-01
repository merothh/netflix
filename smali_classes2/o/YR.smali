.class public final Lo/YR;
.super Lo/MessagePdu;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ProfileCreator"

    .line 13
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private final b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Lo/BC;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 44
    move-object v0, p0

    check-cast v0, Lo/MessagePdu;

    .line 46
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    const-string v1, "netflixActivity.supportFragmentManager"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/SerializablePermission;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 47
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.just(false)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 50
    :cond_0
    sget-object v0, Lo/Tm;->c:Lo/Tm$TaskDescription;

    invoke-virtual {v0, p1, p2}, Lo/Tm$TaskDescription;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;)Lo/Tm;

    move-result-object p2

    .line 51
    invoke-virtual {p2}, Lo/Tm;->e()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lo/YR$ActionBar;->a:Lo/YR$ActionBar;

    check-cast v1, Lio/reactivex/functions/Predicate;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 54
    sget-object v1, Lo/YR$Activity;->d:Lo/YR$Activity;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 61
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object p1

    const-string v1, "frag_dialog"

    invoke-virtual {p2, p1, v1}, Lo/Tm;->show(Lo/SerializablePermission;Ljava/lang/String;)V

    const-string p1, "observable"

    .line 63
    invoke-static {v0, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    .line 69
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    const-string v1, "netflixActivity.lifecycle"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->d()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/YU;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static final synthetic b(Lo/YR;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lo/YR;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 4

    const-string v0, "netflixActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lo/ady;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    invoke-static {p1}, Lo/adR;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->r()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lo/BC;

    const-string v3, "it"

    .line 18
    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lo/BC;->isPrimaryProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 17
    :goto_0
    check-cast v1, Lo/BC;

    if-eqz v1, :cond_4

    .line 20
    invoke-interface {v1}, Lo/BC;->isProfileCreationLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    invoke-direct {p0, p1, v1}, Lo/YR;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;)Lio/reactivex/Observable;

    move-result-object v0

    .line 22
    new-instance v1, Lo/YR$StateListAnimator;

    invoke-direct {v1, p0, p1}, Lo/YR$StateListAnimator;-><init>(Lo/YR;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 27
    new-instance v2, Lo/YR$Application;

    invoke-direct {v2, p0, p1}, Lo/YR$Application;-><init>(Lo/YR;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    .line 21
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_1

    .line 35
    :cond_2
    invoke-direct {p0, p1}, Lo/YR;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_1

    .line 39
    :cond_3
    invoke-direct {p0, p1}, Lo/YR;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :cond_4
    :goto_1
    return-void
.end method
