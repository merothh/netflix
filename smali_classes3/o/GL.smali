.class public final Lo/GL;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/GL$Activity;
    }
.end annotation


# static fields
.field public static final d:Lo/GL$Activity;


# instance fields
.field private a:I

.field private final b:Lio/reactivex/disposables/CompositeDisposable;

.field private c:Landroid/os/Parcelable;

.field private e:Ljava/lang/Long;

.field private final i:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/GL$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/GL$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/GL;->d:Lo/GL$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lo/GL;->b:Lio/reactivex/disposables/CompositeDisposable;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/GL;->i:Landroid/graphics/Rect;

    return-void
.end method

.method public static final synthetic a(Lo/GL;)Landroid/graphics/Rect;
    .locals 0

    .line 39
    iget-object p0, p0, Lo/GL;->i:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static final synthetic c(Lo/GL;Landroid/os/Parcelable;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lo/GL;->c:Landroid/os/Parcelable;

    return-void
.end method

.method public static final synthetic d(Lo/GL;Ljava/lang/Long;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lo/GL;->e:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;Lo/GK;)V
    .locals 13

    const-string v0, "extrasFeedFragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extrasFeedViewModel"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->requireActivity()Lo/Serializable;

    move-result-object v0

    const-string v1, "extrasFeedFragment.requireActivity()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    .line 287
    const-class v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v2}, Lo/TagTechnology;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 77
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string v3, "netflixActivity.window"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const-string v3, "netflixActivity.window.decorView"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    iput v2, p0, Lo/GL;->a:I

    .line 83
    iget-object v2, p0, Lo/GL;->b:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2}, Lo/GK;->o()Lio/reactivex/Observable;

    move-result-object p2

    .line 84
    sget-object v3, Lo/GL$ActionBar;->d:Lo/GL$ActionBar;

    check-cast v3, Lio/reactivex/functions/Predicate;

    invoke-virtual {p2, v3}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p2

    .line 87
    new-instance v3, Lo/GL$StateListAnimator;

    invoke-direct {v3, v0}, Lo/GL$StateListAnimator;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    check-cast v3, Lio/reactivex/functions/Predicate;

    invoke-virtual {p2, v3}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p2

    const-wide/16 v3, 0x1f4

    .line 92
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v6

    invoke-virtual {p2, v3, v4, v5, v6}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v7

    const-string p2, "extrasFeedViewModel.devi\u2026dSchedulers.mainThread())"

    invoke-static {v7, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance p2, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$start$1$3;

    invoke-direct {p2, v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$start$1$3;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    move-object v10, p2

    check-cast v10, Lo/alA;

    const/4 v9, 0x0

    .line 99
    sget-object p2, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$start$1$4;->b:Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$start$1$4;

    move-object v8, p2

    check-cast v8, Lo/alA;

    const/4 v11, 0x2

    const/4 v12, 0x0

    .line 93
    invoke-static/range {v7 .. v12}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    move-result-object p2

    .line 83
    invoke-static {v2, p2}, Lio/reactivex/rxkotlin/DisposableKt;->plusAssign(Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/disposables/Disposable;)V

    .line 106
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->requireActivity()Lo/Serializable;

    move-result-object p2

    invoke-static {p2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/content/Context;

    .line 288
    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p2, v0}, Lo/TagTechnology;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 106
    check-cast p2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 107
    check-cast p1, Lo/UnicodeScript;

    .line 289
    sget-object v0, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    invoke-virtual {v0, p1}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object p1

    const-class v0, Lo/GY;

    invoke-virtual {p1, v0}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object p1

    .line 108
    sget-object v0, Lo/GL$TaskDescription;->e:Lo/GL$TaskDescription;

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v1

    const-string p1, "extrasFeedFragment.getSa\u2026mEvent.FullscreenToggle }"

    invoke-static {v1, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 109
    new-instance p1, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$start$2$2;

    invoke-direct {p1, p2}, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$start$2$2;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    move-object v4, p1

    check-cast v4, Lo/alA;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call create() during `extrasFeedFragment.onCreateView` method"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final c()V
    .locals 3

    .line 267
    sget-object v0, Lo/GL;->d:Lo/GL$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 269
    iget-object v0, p0, Lo/GL;->b:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    const/4 v0, 0x0

    .line 270
    move-object v1, v0

    check-cast v1, Landroid/os/Parcelable;

    iput-object v1, p0, Lo/GL;->c:Landroid/os/Parcelable;

    .line 271
    iget-object v1, p0, Lo/GL;->e:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 272
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v2, p0, Lo/GL;->e:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 273
    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lo/GL;->e:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method public final e(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;Lo/If;Lo/Ic;Lo/GK;Landroid/content/res/Configuration;)V
    .locals 13

    move-object v9, p0

    move-object v4, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v6, p4

    move-object/from16 v5, p5

    const-string v0, "extrasFeedFragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extrasRecyclerView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extrasFeedViewModel"

    invoke-static {v6, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newConfig"

    invoke-static {v5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 150
    sget-object v0, Lo/GL;->d:Lo/GL$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 152
    invoke-virtual {p2}, Lo/If;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lo/GL;->d:Lo/GL$Activity;

    check-cast v0, Lo/MessagePdu;

    return-void

    .line 157
    :cond_0
    invoke-virtual {p2}, Lo/If;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v0, v2

    :cond_1
    move-object v3, v0

    check-cast v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v3, :cond_7

    .line 158
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->requireActivity()Lo/Serializable;

    move-result-object v0

    const-string v1, "extrasFeedFragment.requireActivity()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    .line 300
    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lo/TagTechnology;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 159
    move-object v1, v0

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 161
    iget v0, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-eq v0, v10, :cond_5

    .line 221
    invoke-virtual/range {p4 .. p4}, Lo/GK;->d()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 223
    iget-object v5, v9, Lo/GL;->c:Landroid/os/Parcelable;

    if-eqz v5, :cond_2

    .line 225
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 226
    move-object v3, v2

    check-cast v3, Landroid/os/Parcelable;

    iput-object v3, v9, Lo/GL;->c:Landroid/os/Parcelable;

    :cond_2
    const/4 v3, 0x0

    .line 230
    invoke-virtual {p2, v3}, Lo/If;->setScrollingLocked(Z)V

    const/4 v5, 0x1

    if-eqz v8, :cond_3

    .line 233
    invoke-virtual {v8, v5}, Lo/Ic;->b(Z)V

    .line 237
    :cond_3
    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const-string v8, "netflixActivity.window"

    invoke-static {v7, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    const-string v8, "netflixActivity.window.decorView"

    invoke-static {v7, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v8, v9, Lo/GL;->a:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 238
    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showActionAndBottomBars()V

    .line 241
    invoke-virtual {v6, v3}, Lo/GK;->e(Z)V

    .line 244
    move-object v1, v4

    check-cast v1, Lo/UnicodeScript;

    .line 245
    new-instance v3, Lo/GY$ActionBar$TaskDescription;

    invoke-direct {v3, v5, v0}, Lo/GY$ActionBar$TaskDescription;-><init>(ZI)V

    check-cast v3, Lo/VintfObject;

    .line 301
    sget-object v0, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    invoke-virtual {v0, v1}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object v0

    .line 302
    const-class v1, Lo/GY;

    invoke-virtual {v0, v1}, Lo/UpdateEngine;->a(Ljava/lang/Class;)Lio/reactivex/Observable;

    .line 303
    const-class v1, Lo/GY;

    invoke-virtual {v0, v1, v3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 251
    iget-object v0, v9, Lo/GL;->e:Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 252
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, v9, Lo/GL;->e:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    .line 253
    check-cast v2, Ljava/lang/Long;

    iput-object v2, v9, Lo/GL;->e:Ljava/lang/Long;

    goto :goto_0

    .line 255
    :cond_4
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "No focused item while changing to portrait"

    .line 256
    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_5
    invoke-virtual/range {p4 .. p4}, Lo/GK;->d()Ljava/lang/Integer;

    move-result-object v10

    .line 165
    invoke-virtual/range {p4 .. p4}, Lo/GK;->a()Ljava/lang/Integer;

    move-result-object v11

    .line 166
    new-instance v12, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$onConfigurationChanged$$inlined$let$lambda$1;

    move-object v0, v12

    move-object v2, v3

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move-object v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$onConfigurationChanged$$inlined$let$lambda$1;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroidx/recyclerview/widget/LinearLayoutManager;Lo/GL;Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;Landroid/content/res/Configuration;Lo/GK;Lo/If;Lo/Ic;)V

    check-cast v12, Lo/alN;

    .line 163
    invoke-static {v10, v11, v12}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/akj;

    if-eqz v0, :cond_6

    goto :goto_0

    .line 216
    :cond_6
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "No focused item while changing to landscape"

    .line 217
    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    sget-object v0, Lo/akj;->a:Lo/akj;

    :cond_7
    :goto_0
    return-void

    .line 147
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call create() before calling onConfigurationChanged()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
