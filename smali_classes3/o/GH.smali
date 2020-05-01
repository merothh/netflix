.class public Lo/GH;
.super Lo/GA;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/GH$ActionBar;
    }
.end annotation


# static fields
.field public static final c:Lo/GH$ActionBar;


# instance fields
.field private final b:Lo/aka;

.field private final d:Lo/aka;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/GH$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/GH$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/GH;->c:Lo/GH$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lo/GA;-><init>()V

    .line 58
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->b:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedActivity$extrasFeedViewModel$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedActivity$extrasFeedViewModel$2;-><init>(Lo/GH;)V

    check-cast v1, Lo/alB;

    invoke-static {v0, v1}, Lo/akd;->c(Lkotlin/LazyThreadSafetyMode;Lo/alB;)Lo/aka;

    move-result-object v0

    iput-object v0, p0, Lo/GH;->d:Lo/aka;

    .line 62
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->b:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedActivity$extrasNotificationsViewModel$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedActivity$extrasNotificationsViewModel$2;-><init>(Lo/GH;)V

    check-cast v1, Lo/alB;

    invoke-static {v0, v1}, Lo/akd;->c(Lkotlin/LazyThreadSafetyMode;Lo/alB;)Lo/aka;

    move-result-object v0

    iput-object v0, p0, Lo/GH;->b:Lo/aka;

    return-void
.end method

.method public static final synthetic c(Lo/GH;)Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;
    .locals 0

    .line 29
    invoke-direct {p0}, Lo/GH;->m()Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    move-result-object p0

    return-object p0
.end method

.method private final m()Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lo/GH;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    return-object v0
.end method

.method private final o()Lo/GN;
    .locals 1

    iget-object v0, p0, Lo/GH;->b:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GN;

    return-object v0
.end method


# virtual methods
.method public synthetic a()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lo/GH;->j()Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canApplyBrowseExperience()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected f()I
    .locals 1

    .line 129
    invoke-static {}, Lo/TextServicesManager;->e()I

    move-result v0

    return v0
.end method

.method public final g()Lo/GK;
    .locals 1

    iget-object v0, p0, Lo/GH;->d:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GK;

    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 121
    sget-object v0, Lcom/netflix/cl/model/AppView;->newsFeed:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public hasBottomNavBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected j()Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;
    .locals 1

    .line 115
    new-instance v0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;-><init>()V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant",
            "SwitchIntDef"
        }
    .end annotation

    .line 74
    invoke-super {p0, p1}, Lo/GA;->onCreate(Landroid/os/Bundle;)V

    .line 77
    sget p1, Lo/GS$Fragment;->n:I

    invoke-virtual {p0, p1}, Lo/GH;->setTitle(I)V

    .line 81
    invoke-virtual {p0}, Lo/GH;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "featured_video_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 132
    invoke-static {p1}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    .line 133
    check-cast p1, Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lo/GH;->g()Lo/GK;

    move-result-object v2

    invoke-virtual {v2, p1}, Lo/GK;->d(Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lo/GH;->o()Lo/GN;

    move-result-object p1

    invoke-virtual {p1, v1}, Lo/GN;->c(Z)V

    .line 86
    :cond_2
    invoke-virtual {p0}, Lo/GH;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "add_to_remind_me"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 87
    invoke-virtual {p0}, Lo/GH;->g()Lo/GK;

    move-result-object p1

    invoke-virtual {p1, v1}, Lo/GK;->c(Z)V

    .line 89
    :cond_3
    invoke-virtual {p0}, Lo/GH;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    const-string v1, "remind_me_track_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_4

    .line 91
    invoke-virtual {p0}, Lo/GH;->g()Lo/GK;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/GK;->c(Ljava/lang/Integer;)V

    :cond_4
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 102
    invoke-static {}, Lio/reactivex/Completable;->complete()Lio/reactivex/Completable;

    move-result-object v0

    .line 103
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Completable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Completable;

    move-result-object v0

    .line 104
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 105
    new-instance v1, Lo/GH$StateListAnimator;

    invoke-direct {v1, p0, p1}, Lo/GH$StateListAnimator;-><init>(Lo/GH;Z)V

    check-cast v1, Lio/reactivex/functions/Action;

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p1

    const-string v0, "Completable.complete()\n \u2026d(hasFocus)\n            }"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-static {p0, v0}, Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;->e(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;

    move-result-object v0

    const-string v1, "AndroidLifecycleScopePro\u2026fecycle.Event.ON_DESTROY)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/uber/autodispose/lifecycle/LifecycleScopeProvider;

    .line 137
    check-cast v0, Lcom/uber/autodispose/ScopeProvider;

    invoke-static {v0}, Lcom/uber/autodispose/AutoDispose;->d(Lcom/uber/autodispose/ScopeProvider;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    check-cast v0, Lio/reactivex/CompletableConverter;

    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->as(Lio/reactivex/CompletableConverter;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "this.`as`(AutoDispose.au\u2026isposable<Any>(provider))"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/uber/autodispose/CompletableSubscribeProxy;

    .line 112
    invoke-interface {p1}, Lcom/uber/autodispose/CompletableSubscribeProxy;->e()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public performUpAction()V
    .locals 1

    .line 118
    invoke-direct {p0}, Lo/GH;->m()Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->n()Z

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lo/GA;->performUpAction()V

    :goto_0
    return-void
.end method

.method public shouldApplyPaddingToSlidingPanel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldAttachToolbar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
