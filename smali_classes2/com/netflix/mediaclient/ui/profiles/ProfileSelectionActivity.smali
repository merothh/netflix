.class public Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;
.super Lo/YL;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$Activity;,
        Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$StateListAnimator;
    }
.end annotation


# static fields
.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$StateListAnimator;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lo/BC;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lo/Am;

.field private f:I

.field private g:Lo/EditText;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Landroid/view/View;

.field public latencyMarker:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:Landroid/widget/TextView;

.field private o:Lo/RatingBar;

.field private p:Landroid/content/BroadcastReceiver;

.field private q:Z

.field private final r:Lo/DatePickerCalendarDelegate$Activity;

.field private s:Z

.field private final t:Landroid/widget/AdapterView$OnItemClickListener;

.field public uiLatencyTracker:Lo/ViewSwitcher;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->a:Landroid/util/SparseArray;

    .line 96
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v2, 0x1

    .line 97
    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 98
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v3, 0x3

    .line 99
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v4, 0x4

    .line 100
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 101
    sget-object v5, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->a:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 104
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 105
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 106
    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 107
    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 108
    sget-object v2, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Lo/YL;-><init>()V

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->q:Z

    .line 150
    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$5;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->p:Landroid/content/BroadcastReceiver;

    .line 768
    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$4;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->r:Lo/DatePickerCalendarDelegate$Activity;

    .line 775
    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$7;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->t:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 936
    sget-object p1, Lo/Zg;->c:Lo/Zg;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/Zg;->c(Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->k:Z

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 937
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->k:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "ProfileSelectionActivity"

    const-string v1, "Got new value for \'app was restorted\' flag: %b"

    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    return-void
.end method

.method private a(Lo/BC;)V
    .locals 1

    const/4 v0, 0x0

    .line 721
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->h:Z

    .line 722
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->f()V

    .line 723
    invoke-interface {p1}, Lo/BC;->isKidsProfile()Z

    move-result p1

    if-nez p1, :cond_0

    .line 724
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getSupportActionBar()Lo/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 726
    invoke-virtual {p1}, Lo/Fragment;->e()V

    :cond_0
    return-void
.end method

.method private synthetic a(Lo/BC;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "ProfileSelectionActivity"

    const-string v1, "profileChange unsuccessful"

    .line 703
    invoke-static {p2, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 704
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->a(Lo/BC;)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    .line 265
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->e:Lo/Am;

    invoke-virtual {p1}, Lo/Am;->X()Ljava/util/List;

    move-result-object p1

    .line 266
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->latencyMarker:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    sget-object v1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;->f:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;->e(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;)V

    .line 267
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 268
    sget-object v1, Lcom/netflix/cl/model/AppView;->profilesGate:Lcom/netflix/cl/model/AppView;

    invoke-virtual {v1}, Lcom/netflix/cl/model/AppView;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "view"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "ProfileSelectionActivity"

    const-string v3, "reason"

    if-nez p1, :cond_0

    const-string p1, "No profiles found for user!"

    .line 270
    invoke-static {v2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->uiLatencyTracker:Lo/ViewSwitcher;

    invoke-interface {v2, v1}, Lo/ViewSwitcher;->b(Z)Lo/ViewAnimator;

    move-result-object v1

    .line 273
    invoke-interface {v1}, Lo/ViewAnimator;->a()Lo/YearPickerView;

    move-result-object v1

    .line 274
    invoke-interface {v1}, Lo/YearPickerView;->d()V

    .line 276
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    sget-object v2, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->k:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 278
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->e:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->p()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->a()Lo/zz;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lo/zz;->e(Ljava/lang/Throwable;)V

    .line 279
    invoke-static {}, Lo/afG;->b()V

    return-void

    .line 290
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->d:Ljava/util/List;

    .line 292
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->uiLatencyTracker:Lo/ViewSwitcher;

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Lo/ViewSwitcher;->b(Z)Lo/ViewAnimator;

    move-result-object p1

    sget-object v4, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    .line 293
    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lo/ViewAnimator;->a(Ljava/lang/String;)Lo/ViewAnimator;

    move-result-object p1

    .line 294
    invoke-interface {p1}, Lo/ViewAnimator;->a()Lo/YearPickerView;

    move-result-object p1

    .line 295
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v4

    invoke-interface {p1, v4}, Lo/YearPickerView;->e(Lcom/netflix/mediaclient/util/gfx/ImageLoader;)V

    .line 297
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object p1, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;

    sget-object v3, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->k:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {p1, v3, v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfilerImpl;->d(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 299
    invoke-static {}, Lo/afG;->b()V

    .line 301
    new-instance p1, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$StateListAnimator;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$StateListAnimator;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$5;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$StateListAnimator;

    .line 302
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->o:Lo/RatingBar;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$StateListAnimator;

    invoke-virtual {p1, v0}, Lo/RatingBar;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 303
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->d()V

    .line 305
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->f()V

    .line 307
    iget-boolean p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->h:Z

    if-eqz p1, :cond_1

    const-string p1, "We\'re in loading state - showing loading view"

    .line 308
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->b(Z)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->q:Z

    return p0
.end method

.method static synthetic b(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Lo/Am;)Lo/Am;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->e:Lo/Am;

    return-object p1
.end method

.method private b()V
    .locals 0

    return-void
.end method

.method private b(Landroid/view/View;IF)V
    .locals 0

    .line 562
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 563
    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x190

    .line 564
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 565
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/Zf$TaskDescription;)V
    .locals 4

    .line 654
    invoke-virtual {p3}, Lo/Zf$TaskDescription;->c()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ProfileSelectionActivity"

    if-eqz v0, :cond_5

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    const/4 p3, 0x2

    if-eq v0, p3, :cond_3

    const/4 p2, 0x3

    if-eq v0, p2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p2, "Selected same profile"

    .line 684
    invoke-static {v2, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->latencyMarker:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    sget-object p3, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;->e:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;

    invoke-interface {p2, p3, v3}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;->e(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;Z)V

    .line 687
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->g()Z

    move-result p2

    if-nez p2, :cond_2

    .line 688
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->e:Lo/Am;

    invoke-static {p0, p2}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Am;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 689
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_0

    .line 693
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getUiScreen()Lcom/netflix/cl/model/AppView;

    move-result-object p2

    iget-boolean p3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->s:Z

    .line 691
    invoke-static {p1, p2, p3}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 698
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->finish()V

    goto :goto_1

    :cond_3
    const-string p1, "profileChange cancelled"

    .line 672
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->a(Lo/BC;)V

    goto :goto_1

    :cond_4
    const-string v0, "profileChange unsuccessful"

    .line 676
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->a(Lo/BC;)V

    .line 678
    invoke-virtual {p3}, Lo/Zf$TaskDescription;->b()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 679
    invoke-static {p1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 680
    invoke-virtual {p3}, Lo/Zf$TaskDescription;->b()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;Z)Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string p2, "profileChange successful"

    .line 656
    invoke-static {v2, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->latencyMarker:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    sget-object p3, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;->e:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;

    invoke-interface {p2, p3, v1}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;->e(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;Z)V

    .line 659
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restarting app, time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-static {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finishAllActivities(Landroid/content/Context;)V

    .line 662
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->g()Z

    move-result p2

    if-nez p2, :cond_6

    .line 666
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getUiScreen()Lcom/netflix/cl/model/AppView;

    move-result-object p2

    iget-boolean p3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->k:Z

    .line 664
    invoke-static {p1, p2, p3}, Lo/Jx;->d(Landroid/content/Context;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object p2

    const/high16 p3, 0x4000000

    .line 668
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    .line 663
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->j()V

    return-void
.end method

.method public static synthetic b(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/Zf$TaskDescription;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/Zf$TaskDescription;)V

    return-void
.end method

.method public static synthetic b(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Lo/BC;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->a(Lo/BC;Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(Z)V
    .locals 2

    const-string v0, "ProfileSelectionActivity"

    const-string v1, "Showing loading view..."

    .line 367
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->g:Lo/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/EditText;->c(Z)V

    .line 369
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 370
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->o:Lo/RatingBar;

    invoke-virtual {v0, v1}, Lo/RatingBar;->setEnabled(Z)V

    const v0, 0x3e4ccccd    # 0.2f

    if-eqz p1, :cond_0

    .line 373
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->l:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 375
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->l:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private c(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 1

    .line 919
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/cl/model/Error;

    move-result-object p1

    .line 920
    sget-object p2, Lcom/netflix/cl/ExtLogger;->INSTANCE:Lcom/netflix/cl/ExtLogger;

    const-class v0, Lcom/netflix/cl/model/event/session/action/Navigate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/netflix/cl/ExtLogger;->failedExclusiveAction(Ljava/lang/String;Lcom/netflix/cl/model/Error;)Z

    .line 921
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance p2, Lcom/netflix/cl/model/event/session/action/Navigate;

    invoke-direct {p2}, Lcom/netflix/cl/model/event/session/action/Navigate;-><init>()V

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    return-void
.end method

.method private c(Lo/BC;)V
    .locals 0

    .line 807
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->b(Lo/BC;)V

    .line 808
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method private c(ZZ)V
    .locals 4

    .line 477
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getActionBarStateBuilder()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->i:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 478
    :goto_0
    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    if-nez p2, :cond_1

    if-nez p1, :cond_3

    :cond_1
    iget-boolean p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->i:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 479
    :cond_3
    :goto_1
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object p1

    iget-boolean p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->i:Z

    .line 480
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->e(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object p1

    .line 482
    iget-boolean p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->q:Z

    if-eqz p2, :cond_5

    .line 483
    iget-boolean p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->i:Z

    if-eqz p2, :cond_4

    .line 484
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->pl:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    .line 486
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->pl:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 488
    :cond_4
    sget-object p2, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->e:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    .line 490
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->v:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 493
    :cond_5
    sget-object p2, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->e:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    .line 494
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->x:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 497
    :goto_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    .line 500
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 501
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method static synthetic c(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->i:Z

    return p0
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)Ljava/util/List;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->d:Ljava/util/List;

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 315
    invoke-static {p0}, Lo/adq;->e(Landroid/content/Context;)I

    move-result v0

    .line 316
    invoke-static {p0}, Lo/adq;->c(Landroid/content/Context;)I

    move-result v1

    .line 317
    sget-object v2, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 318
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$StateListAnimator;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$StateListAnimator;->getCount()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    add-int/lit8 v1, v1, -0x2

    .line 322
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->b:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 324
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    iget v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const-string v0, "ProfileSelectionActivity"

    const-string v1, "max cols: %d, limited cols: %d, num cols: %d"

    invoke-static {v0, v1, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 325
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->o:Lo/RatingBar;

    iget v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->b:I

    invoke-virtual {v0, v1}, Lo/RatingBar;->setNumColumns(I)V

    .line 327
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->e()V

    return-void
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Lo/BC;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->c(Lo/BC;)V

    return-void
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Z)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->a(Z)V

    return-void
.end method

.method private e()V
    .locals 6

    .line 333
    invoke-static {p0}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v0

    .line 334
    iget v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->f:I

    iget v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->b:I

    mul-int v1, v1, v2

    sub-int v2, v0, v1

    const/4 v3, 0x2

    .line 335
    div-int/2addr v2, v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 337
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    const-string v0, "ProfileSelectionActivity"

    const-string v1, "screen: %d, grid: %d, padding: %d"

    invoke-static {v0, v1, v4}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 340
    invoke-static {}, Lo/afw;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->o:Lo/RatingBar;

    invoke-virtual {v0, v2, v5, v5, v5}, Lo/RatingBar;->setPadding(IIII)V

    goto :goto_0

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->o:Lo/RatingBar;

    invoke-virtual {v0, v5, v5, v2, v5}, Lo/RatingBar;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->e()V

    return-void
.end method

.method static synthetic e(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->i:Z

    return p1
.end method

.method private f()V
    .locals 4

    const-string v0, "ProfileSelectionActivity"

    const-string v1, "Showing content view..."

    .line 348
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->g:Lo/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/EditText;->a(Z)V

    .line 350
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->l:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 351
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->o:Lo/RatingBar;

    invoke-virtual {v0, v2}, Lo/RatingBar;->setEnabled(Z)V

    .line 353
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->l:Landroid/view/View;

    invoke-static {v0, v1}, Lo/aeV;->d(Landroid/view/View;Z)V

    .line 362
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->a()V

    .line 363
    invoke-direct {p0, v1, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->c(ZZ)V

    return-void
.end method

.method private g()Z
    .locals 3

    .line 710
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->t()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 712
    sget-object v1, Lo/Zg;->c:Lo/Zg;

    invoke-virtual {v1, v0}, Lo/Zg;->a(Landroid/content/Intent;)V

    .line 713
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/NetflixApplication;->c(Landroid/content/Intent;)V

    .line 714
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private h()V
    .locals 1

    .line 947
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->s:Z

    if-nez v0, :cond_0

    return-void

    .line 951
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->startRenderNavigationLevelSession()V

    .line 952
    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$8;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method static synthetic h(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->d()V

    return-void
.end method

.method private i()Z
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->e:Lo/Am;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->e:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private j()V
    .locals 10

    const/4 v0, 0x0

    .line 508
    invoke-direct {p0, v0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->c(ZZ)V

    .line 511
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/adh;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 513
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->q:Z

    const/16 v2, 0x8

    const-string v3, "Something weird happened: null grid child view!"

    const-string v4, "ProfileSelectionActivity"

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->i:Z

    if-eqz v1, :cond_0

    goto :goto_4

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 537
    invoke-static {p0}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v1

    .line 538
    :goto_0
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->o:Lo/RatingBar;

    invoke-virtual {v6}, Lo/RatingBar;->getChildCount()I

    move-result v6

    if-ge v0, v6, :cond_c

    .line 539
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->o:Lo/RatingBar;

    invoke-virtual {v6, v0}, Lo/RatingBar;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 540
    iget-object v7, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->d:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/BC;

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-nez v6, :cond_2

    .line 542
    invoke-static {v4, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    const v8, 0x3e99999a    # 0.3f

    if-eqz v1, :cond_4

    if-nez v7, :cond_3

    goto :goto_2

    .line 548
    :cond_3
    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/high16 v8, 0x3f800000    # 1.0f

    .line 551
    :cond_4
    :goto_2
    sget v7, Lcom/netflix/mediaclient/ui/R$Fragment;->pi:I

    invoke-direct {p0, v6, v7, v8}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->b(Landroid/view/View;IF)V

    .line 552
    sget v7, Lcom/netflix/mediaclient/ui/R$Fragment;->pl:I

    invoke-direct {p0, v6, v7, v5}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->b(Landroid/view/View;IF)V

    .line 554
    sget v7, Lcom/netflix/mediaclient/ui/R$Fragment;->tG:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-boolean v6, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->i:Z

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_5
    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v6, 0x190

    .line 516
    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v1, 0x0

    .line 519
    :goto_6
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->o:Lo/RatingBar;

    invoke-virtual {v6}, Lo/RatingBar;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_c

    .line 520
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->o:Lo/RatingBar;

    invoke-virtual {v6, v1}, Lo/RatingBar;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_7

    .line 522
    invoke-static {v4, v3}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 524
    :cond_7
    iget-object v7, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_b

    .line 525
    sget v7, Lcom/netflix/mediaclient/ui/R$Fragment;->pl:I

    iget-boolean v8, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->i:Z

    const v9, 0x3e4ccccd    # 0.2f

    if-eqz v8, :cond_8

    const v8, 0x3e4ccccd    # 0.2f

    goto :goto_7

    :cond_8
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_7
    invoke-direct {p0, v6, v7, v8}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->b(Landroid/view/View;IF)V

    .line 526
    sget v7, Lcom/netflix/mediaclient/ui/R$Fragment;->tG:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-boolean v8, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->i:Z

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    goto :goto_8

    :cond_9
    const/16 v8, 0x8

    .line 527
    :goto_8
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 528
    sget v7, Lcom/netflix/mediaclient/ui/R$Fragment;->pl:I

    iget-boolean v8, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->i:Z

    if-eqz v8, :cond_a

    goto :goto_9

    :cond_a
    const/high16 v9, 0x3f800000    # 1.0f

    :goto_9
    invoke-direct {p0, v6, v7, v9}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->b(Landroid/view/View;IF)V

    .line 530
    :cond_b
    sget v7, Lcom/netflix/mediaclient/ui/R$Fragment;->pi:I

    invoke-direct {p0, v6, v7, v5}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->b(Landroid/view/View;IF)V

    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 558
    :cond_c
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->invalidateOptionsMenu()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 577
    invoke-static {}, Lo/gC;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->j(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->q:Z

    .line 579
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->j()V

    :cond_0
    return-void
.end method

.method protected b(Lo/BC;)V
    .locals 1

    .line 569
    invoke-static {}, Lo/ady;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->e(Lo/BC;)V

    goto :goto_0

    .line 572
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->d(Lo/BC;)V

    :goto_0
    return-void
.end method

.method protected c()I
    .locals 1

    .line 943
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->fp:I

    return v0
.end method

.method public c(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V
    .locals 2

    .line 967
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->s:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ProfileSelectionActivity"

    const-string v1, "Profiles Gate Debug TTR event is complete"

    .line 970
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 971
    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->endRenderNavigationLevelSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 974
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object p1

    const-string v0, "onProfilesGateDisplayed"

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/NetflixApplication;->d(Ljava/lang/String;)V

    .line 975
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->latencyMarker:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    sget-object v0, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;->j:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;->e(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;)V

    return-void
.end method

.method public createManagerStatusListener()Lo/zT;
    .locals 1

    .line 219
    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$1;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V

    return-object v0
.end method

.method protected d(Lo/BC;)V
    .locals 7

    .line 584
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->e:Lo/Am;

    const-string v1, "ProfileSelectionActivity"

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 596
    :cond_0
    invoke-static {p0}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 597
    invoke-interface {v0}, Lo/BC;->isKidsProfile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 598
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getSupportActionBar()Lo/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Lo/Fragment;->b()V

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 601
    invoke-interface {v0}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 602
    :goto_0
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->latencyMarker:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    sget-object v5, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;->e:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;

    xor-int/lit8 v6, v0, 0x1

    invoke-interface {v4, v5, v6}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;->e(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Condition;Z)V

    .line 606
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/NetflixApplication;->t()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 608
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/netflix/mediaclient/NetflixApplication;->c(Landroid/content/Intent;)V

    .line 609
    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 610
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->finish()V

    goto :goto_1

    .line 612
    :cond_3
    iget-boolean v4, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->k:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->m:Ljava/lang/String;

    if-nez v4, :cond_4

    if-eqz v0, :cond_4

    const-string p1, "Selected profile is the same as the current one - skipping profile change..."

    .line 613
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getUiScreen()Lcom/netflix/cl/model/AppView;

    move-result-object p1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->s:Z

    invoke-static {p0, p1, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 615
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->finish()V

    return-void

    .line 620
    :cond_4
    :goto_1
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string p1, "Network is NOT connected, prevent action and report to user!"

    .line 621
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    sget-object p1, Lo/LegacyErrorStrings;->n:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, p1, v2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;Z)Ljava/lang/String;

    return-void

    .line 628
    :cond_5
    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->h:Z

    .line 629
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->b(Z)V

    .line 630
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->e:Lo/Am;

    invoke-interface {p1}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Am;->b(Ljava/lang/String;)V

    .line 631
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->k:Z

    return-void

    :cond_6
    :goto_2
    const-string p1, "Manager is not ready"

    .line 585
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected e(Lo/BC;)V
    .locals 3

    .line 636
    invoke-static {p0}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 641
    :cond_0
    invoke-interface {v0}, Lo/BC;->isKidsProfile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 642
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getSupportActionBar()Lo/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Lo/Fragment;->b()V

    :cond_1
    const/4 v1, 0x1

    .line 645
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->h:Z

    .line 646
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->b(Z)V

    .line 648
    new-instance v1, Lo/Zf;

    invoke-direct {v1}, Lo/Zf;-><init>()V

    invoke-virtual {v1, p0, p1}, Lo/Zf;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;)Lio/reactivex/Observable;

    move-result-object p1

    .line 650
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-static {v1, v2}, Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;->e(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;

    move-result-object v1

    .line 649
    invoke-static {v1}, Lcom/uber/autodispose/AutoDispose;->d(Lcom/uber/autodispose/ScopeProvider;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Lo/YZ;

    invoke-direct {v1, p0, p0, v0}, Lo/YZ;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;)V

    new-instance v2, Lo/Za;

    invoke-direct {v2, p0, v0}, Lo/Za;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;Lo/BC;)V

    .line 652
    invoke-interface {p1, v1, v2}, Lcom/uber/autodispose/ObservableSubscribeProxy;->c(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 761
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->i:Z

    if-eqz v0, :cond_0

    .line 762
    sget-object v0, Lcom/netflix/cl/model/AppView;->editProfiles:Lcom/netflix/cl/model/AppView;

    return-object v0

    .line 764
    :cond_0
    sget-object v0, Lcom/netflix/cl/model/AppView;->profilesGate:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 1

    .line 740
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 741
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->i:Z

    .line 742
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->a()V

    .line 743
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->j()V

    const/4 v0, 0x1

    return v0

    .line 746
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->i()Z

    move-result v0

    return v0
.end method

.method public handleProfileActivated()V
    .locals 4

    .line 388
    invoke-static {}, Lo/ady;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restarting app, time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProfileSelectionActivity"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->finishAllActivities(Landroid/content/Context;)V

    .line 395
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getUiScreen()Lcom/netflix/cl/model/AppView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->s:Z

    .line 393
    invoke-static {p0, v0, v1}, Lo/Jx;->d(Landroid/content/Context;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 397
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 392
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public handleProfileReadyToSelect()V
    .locals 2

    const-string v0, "ProfileSelectionActivity"

    const-string v1, "handleProfileReadyToSelect()"

    .line 381
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 382
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->h:Z

    .line 383
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->a(Z)V

    return-void
.end method

.method public handleProfileSelectionResult(ILjava/lang/String;)V
    .locals 1

    .line 404
    invoke-static {}, Lo/ady;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 405
    invoke-static {p1}, Lcom/netflix/mediaclient/StatusCode;->e(I)Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    .line 406
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cS:Lcom/netflix/mediaclient/StatusCode;

    if-ne p1, v0, :cond_0

    const-string p1, "ProfileSelectionActivity"

    const-string p2, "Profile selection was successful.  Parent class should finish this activity in a moment..."

    .line 407
    invoke-static {p1, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 413
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;)V

    .line 414
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/cl/model/Error;

    .line 415
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 416
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->d(Z)V

    .line 418
    invoke-direct {p0, v0, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->c(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 419
    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;Z)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public handleProfilesListUpdated()V
    .locals 2

    .line 813
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->e:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->X()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->d:Ljava/util/List;

    .line 817
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$StateListAnimator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$StateListAnimator;->notifyDataSetChanged()V

    .line 818
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->o:Lo/RatingBar;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->c:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$StateListAnimator;

    invoke-virtual {v0, v1}, Lo/RatingBar;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    .line 755
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 160
    invoke-super {p0, p1}, Lo/YL;->onCreate(Landroid/os/Bundle;)V

    .line 162
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->latencyMarker:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    sget-object v3, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;->d:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;

    invoke-interface {v2, v3, v0, v1}, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;->d(Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker$Mark;J)V

    .line 163
    sget-object v0, Lo/Zg;->c:Lo/Zg;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Zg;->h(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->s:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 166
    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->uiLatencyTracker:Lo/ViewSwitcher;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getUiScreen()Lcom/netflix/cl/model/AppView;

    move-result-object v4

    invoke-interface {v3, v4, p0}, Lo/ViewSwitcher;->d(Lcom/netflix/cl/model/AppView;Lo/UnicodeScript;)Lo/WrapperListAdapter;

    move-result-object v3

    iget-boolean v4, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->s:Z

    .line 167
    invoke-interface {v3, v4}, Lo/WrapperListAdapter;->a(Z)Lo/WrapperListAdapter;

    move-result-object v3

    .line 168
    invoke-interface {v3, v2}, Lo/WrapperListAdapter;->c(Z)Lo/WrapperListAdapter;

    move-result-object v2

    sget-object v3, Lo/Zg;->c:Lo/Zg;

    .line 169
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lo/Zg;->g(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lo/WrapperListAdapter;->d(Ljava/lang/String;)Lo/WrapperListAdapter;

    move-result-object v2

    .line 170
    invoke-interface {v2}, Lo/WrapperListAdapter;->a()V

    if-nez p1, :cond_1

    .line 173
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->h()V

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aq:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->f:I

    .line 178
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->c()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->setContentView(I)V

    .line 179
    new-instance v2, Lo/EditText;

    sget v3, Lcom/netflix/mediaclient/ui/R$Fragment;->pG:I

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->r:Lo/DatePickerCalendarDelegate$Activity;

    invoke-direct {v2, v3, v4}, Lo/EditText;-><init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;)V

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->g:Lo/EditText;

    .line 181
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->pB:I

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->l:Landroid/view/View;

    .line 182
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->pD:I

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->n:Landroid/widget/TextView;

    .line 183
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->pz:I

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/RatingBar;

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->o:Lo/RatingBar;

    .line 184
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->o:Lo/RatingBar;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->t:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lo/RatingBar;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 185
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->o:Lo/RatingBar;

    invoke-virtual {v2}, Lo/RatingBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$3;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$3;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 191
    sget-object v2, Lo/Zg;->c:Lo/Zg;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/Zg;->d(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->m:Ljava/lang/String;

    .line 193
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->a()V

    if-nez p1, :cond_2

    .line 196
    sget-object p1, Lo/Zg;->c:Lo/Zg;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/Zg;->e(Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->i:Z

    .line 197
    iget-boolean p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->i:Z

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->j:Z

    .line 198
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->j()V

    goto :goto_1

    :cond_2
    const-string v2, "is_loading"

    .line 201
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->h:Z

    const-string v2, "is_profile_edit_mode"

    .line 202
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->i:Z

    new-array p1, v0, [Ljava/lang/Object;

    .line 203
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->h:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "ProfileSelectionActivity"

    const-string v1, "Recovered state, isLoading: %b"

    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 204
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->j()V

    .line 207
    :goto_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->b()V

    .line 208
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 2

    .line 436
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->i:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->q:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 440
    :cond_0
    invoke-super {p0, p1, p2}, Lo/YL;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V

    .line 441
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->fs:I

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->pi:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, p2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x1

    .line 442
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 443
    sget p2, Lcom/netflix/mediaclient/ui/R$Activity;->br:I

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 444
    new-instance p2, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$2;

    invoke-direct {p2, p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$2;-><init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 213
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->b:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->c(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 214
    invoke-super {p0}, Lo/YL;->onDestroy()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 235
    invoke-super {p0, p1}, Lo/YL;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 236
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ProfileSelectionActivity"

    const-string v2, "Saving loading state: %b"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 237
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->h:Z

    const-string v1, "is_loading"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->i:Z

    const-string v1, "is_profile_edit_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 456
    invoke-super {p0}, Lo/YL;->onStart()V

    .line 458
    invoke-static {}, Lo/gC;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->p:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 461
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->a()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 467
    invoke-super {p0}, Lo/YL;->onStop()V

    .line 469
    invoke-static {}, Lo/gC;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public performUpAction()V
    .locals 1

    .line 733
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->handleBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 734
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->finish()V

    :cond_0
    return-void
.end method

.method public showSettingsInMenu()Z
    .locals 1

    .line 425
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->i:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public showSignOutInMenu()Z
    .locals 1

    .line 430
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->i:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
