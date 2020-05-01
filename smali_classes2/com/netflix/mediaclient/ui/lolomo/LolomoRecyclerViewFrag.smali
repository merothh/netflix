.class public Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;
.super Lo/JW;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$ActionBar;
.implements Lo/DT;


# static fields
.field private static u:Z = true


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private final F:Landroid/content/BroadcastReceiver;

.field private G:Lo/Ki;

.field private final H:Landroid/content/BroadcastReceiver;

.field private final I:Landroid/content/BroadcastReceiver;

.field private J:Lo/bs;

.field private final K:Landroid/content/BroadcastReceiver;

.field private final L:Landroid/content/BroadcastReceiver;

.field private final M:Landroid/content/BroadcastReceiver;

.field private final N:Landroid/content/BroadcastReceiver;

.field private Q:Landroid/os/Parcelable;

.field private final S:Landroid/content/BroadcastReceiver;

.field protected b:Ljava/lang/String;

.field protected f:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

.field protected h:Lo/Kx;

.field protected i:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

.field protected j:Lo/EditText;

.field protected k:Ljava/lang/Long;

.field protected l:Lo/abV;

.field protected m:Landroid/widget/FrameLayout;

.field protected n:Lo/acc;

.field protected o:Lo/abO;

.field protected final p:Lio/reactivex/disposables/CompositeDisposable;

.field protected q:I

.field protected r:Ljava/lang/Long;

.field protected s:Z

.field protected t:Landroid/graphics/drawable/Drawable;

.field public uiLatencyTrackerFluent:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lo/ViewSwitcher;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private v:Ljava/lang/String;

.field protected final w:Lo/DatePickerCalendarDelegate$Activity;

.field private x:Z

.field private y:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field private z:Lio/reactivex/disposables/Disposable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 131
    invoke-direct {p0}, Lo/JW;-><init>()V

    .line 154
    new-instance v0, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->t()Lcom/netflix/cl/model/AppView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;-><init>(Lcom/netflix/cl/model/AppView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->y:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    const/4 v0, 0x0

    .line 181
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->D:Z

    .line 191
    new-instance v1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->p:Lio/reactivex/disposables/CompositeDisposable;

    .line 196
    iput v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->q:I

    .line 201
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$1;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->H:Landroid/content/BroadcastReceiver;

    .line 216
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$6;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->F:Landroid/content/BroadcastReceiver;

    .line 226
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$9;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$9;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->I:Landroid/content/BroadcastReceiver;

    .line 239
    new-instance v0, Lo/Kt;

    new-instance v1, Lo/Kn;

    invoke-direct {v1, p0}, Lo/Kn;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)V

    new-instance v2, Lo/Kq;

    invoke-direct {v2, p0}, Lo/Kq;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)V

    invoke-direct {v0, v1, v2}, Lo/Kt;-><init>(Lo/alB;Lo/alB;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->N:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->J:Lo/bs;

    .line 289
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$10;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$10;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->M:Landroid/content/BroadcastReceiver;

    .line 296
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$8;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->L:Landroid/content/BroadcastReceiver;

    .line 338
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$7;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->K:Landroid/content/BroadcastReceiver;

    .line 369
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$14;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$14;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->S:Landroid/content/BroadcastReceiver;

    .line 1244
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$5;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->w:Lo/DatePickerCalendarDelegate$Activity;

    return-void
.end method

.method private E()Lo/bs;
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->J:Lo/bs;

    if-nez v0, :cond_0

    .line 254
    sget-object v0, Lo/bw;->a:Lo/bw$ActionBar;

    .line 255
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-static {v1}, Lo/BatteryProperties;->a(Lo/UnicodeScript;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/bw$ActionBar;->a(Lio/reactivex/Observable;)Lo/bs;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->J:Lo/bs;

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->J:Lo/bs;

    return-object v0
.end method

.method private F()V
    .locals 2

    .line 1131
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->k:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 1132
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->k:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    const/4 v0, 0x0

    .line 1133
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->k:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method private G()Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;
    .locals 8

    .line 592
    invoke-static {}, Lo/dK;->D_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    new-instance v0, Lo/Kr;

    .line 594
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    .line 596
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    .line 597
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->v()Lo/KN;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->y:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lo/Kr;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$ActionBar;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 599
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/Kr;->d(Ljava/lang/String;)V

    return-object v0

    .line 602
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    .line 603
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    .line 605
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    .line 606
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->v()Lo/KN;

    move-result-object v6

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->y:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-object v2, v0

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter$ActionBar;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 608
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method private H()Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;
    .locals 1

    .line 1045
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->U_()Lo/Am;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1047
    invoke-virtual {v0}, Lo/Am;->i()Lo/cz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1049
    invoke-interface {v0}, Lo/cz;->Q()Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private I()V
    .locals 2

    .line 1138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->o:Lo/abO;

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/Kx;->setHeaderView(Landroid/view/View;)V

    .line 1140
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->o:Lo/abO;

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->d(Landroid/view/View;)V

    .line 1143
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1144
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->q:I

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->e(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;I)V

    .line 1147
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->F()V

    return-void
.end method

.method private J()V
    .locals 2

    .line 1507
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->r:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 1508
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->r:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    const/4 v0, 0x0

    .line 1509
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->r:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method private K()V
    .locals 4

    .line 1497
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->J()V

    .line 1499
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->c()Lo/AH;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1500
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->d()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->y:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->e(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v0

    .line 1502
    sget-object v1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v2, Lcom/netflix/cl/model/event/session/Presentation;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->t()Lcom/netflix/cl/model/AppView;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {v1, v2}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->r:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method private L()V
    .locals 3

    .line 1160
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 1161
    invoke-virtual {v0, v2}, Lo/acc;->c(Z)V

    .line 1162
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->l:Lo/abV;

    if-eqz v0, :cond_2

    .line 1165
    invoke-virtual {v0}, Lo/abV;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1166
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->l:Lo/abV;

    invoke-virtual {v0}, Lo/abV;->dismiss()V

    .line 1168
    :cond_1
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->l:Lo/abV;

    :cond_2
    return-void
.end method

.method private M()V
    .locals 3

    .line 1216
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->C:Z

    if-eqz v0, :cond_0

    return-void

    .line 1220
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->getActivity()Lo/Serializable;

    move-result-object v0

    const-string v1, "LoLoMoFrag"

    if-nez v0, :cond_1

    const-string v0, "Activity is null - can\'t continue init"

    .line 1221
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1225
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->U_()Lo/Am;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "Manager not available - can\'t continue init"

    .line 1227
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1231
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    if-nez v0, :cond_3

    const-string v0, "Views are not initialized - can\'t continue init"

    .line 1232
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1236
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->f:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    sget-object v2, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;)V

    const/4 v0, 0x1

    .line 1237
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->C:Z

    return-void
.end method

.method private N()Z
    .locals 1

    .line 1352
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1353
    invoke-interface {v0}, Lo/BC;->isKidsProfile()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private Q()V
    .locals 2

    .line 1514
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lo/acc;->j:Z

    if-eqz v0, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/acc;->c(Z)V

    const/4 v0, 0x0

    .line 1516
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    :cond_0
    return-void
.end method

.method private synthetic R()Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->f:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    return-object v0
.end method

.method static synthetic a(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->z:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method public static synthetic a(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)Lo/bs;
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->E()Lo/bs;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V
    .locals 2

    .line 1151
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->I()V

    .line 1152
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1154
    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->setConsumed(Z)V

    .line 1155
    invoke-static {}, Lo/Og;->c()Lo/Og;

    move-result-object p1

    sget-object v1, Lo/u$PendingIntent;->c:Lo/u$PendingIntent;

    invoke-virtual {p1, v1}, Lo/Og;->e(Lo/Og$TaskDescription;)Lo/Og$Application;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/Og$Application;->e(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;Z)Z
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->E:Z

    return p1
.end method

.method private b(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V
    .locals 2

    .line 1056
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->o:Lo/abO;

    if-nez v0, :cond_0

    .line 1057
    new-instance v0, Lo/abO;

    invoke-direct {v0, p1}, Lo/abO;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->o:Lo/abO;

    .line 1058
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->o:Lo/abO;

    invoke-virtual {v0, p2}, Lo/abO;->setUma(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V

    .line 1059
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->o:Lo/abO;

    invoke-virtual {v0, v1}, Lo/Kx;->setHeaderView(Landroid/view/View;)V

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->o:Lo/abO;

    new-instance v1, Lo/Kv;

    invoke-direct {v1, p0, p2}, Lo/Kv;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V

    invoke-virtual {v0, v1}, Lo/abO;->setDismissButtonListener(Landroid/view/View$OnClickListener;)V

    .line 1066
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->o:Lo/abO;

    new-instance v1, Lo/Ku;

    invoke-direct {v1, p0, p2}, Lo/Ku;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V

    invoke-virtual {v0, v1}, Lo/abO;->setCtaButtonListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 1071
    invoke-virtual {p2, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->setConsumed(Z)V

    .line 1072
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/Kx;->scrollToPosition(I)V

    .line 1073
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->d(Landroid/view/View;)V

    .line 1075
    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/adk;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p1, :cond_1

    .line 1076
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1077
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->q:I

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->e(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;I)V

    .line 1080
    :cond_1
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerUmsAlertRenderFeedback()Ljava/lang/String;

    move-result-object v0

    .line 1081
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 1082
    new-instance v1, Lo/Kw;

    invoke-direct {v1, v0}, Lo/Kw;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    .line 1085
    :cond_2
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V

    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->E:Z

    return p0
.end method

.method private c(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V
    .locals 3

    .line 1121
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->F()V

    .line 1122
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/event/session/Presentation;

    sget-object v2, Lcom/netflix/cl/model/AppView;->umsAlert:Lcom/netflix/cl/model/AppView;

    .line 1125
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerTrackingInfo()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a(Ljava/lang/String;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/netflix/cl/model/event/session/Presentation;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 1122
    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->k:Ljava/lang/Long;

    return-void
.end method

.method private synthetic c(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;Landroid/view/View;)V
    .locals 0

    .line 1067
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V

    .line 1068
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->a(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V

    return-void
.end method

.method static synthetic c(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->L()V

    return-void
.end method

.method public static synthetic c(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->e(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method private static synthetic c(Ljava/lang/String;Lo/Am;)V
    .locals 0

    .line 1082
    invoke-virtual {p1, p0}, Lo/Am;->e(Ljava/lang/String;)V

    return-void
.end method

.method private c(Landroid/content/Intent;)Z
    .locals 3

    .line 276
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "lolomoFragmentInstance"

    .line 278
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 279
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    if-ne p1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 281
    invoke-static {v0}, Lo/adu;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)Lo/Ki;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->G:Lo/Ki;

    return-object p0
.end method

.method private d(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V
    .locals 3

    .line 1090
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerCtas()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1092
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    if-eqz v0, :cond_0

    .line 1093
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->action()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DISMISS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1094
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->trackingInfo()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1098
    :goto_0
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->umsAlertButton:Lcom/netflix/cl/model/AppView;

    .line 1099
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a(Ljava/lang/String;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance p1, Lcom/netflix/cl/model/event/session/command/SubmitCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/SubmitCommand;-><init>()V

    .line 1098
    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    :cond_2
    return-void
.end method

.method private synthetic d(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;Landroid/view/View;)V
    .locals 0

    .line 1063
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V

    .line 1064
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->I()V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Lo/Am;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->c(Ljava/lang/String;Lo/Am;)V

    return-void
.end method

.method static synthetic d(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;Landroid/content/Intent;)Z
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->c(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method private d(Lo/AH;)Z
    .locals 4

    .line 1332
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adR;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 1336
    invoke-interface {p1}, Lo/AH;->getLolomoProfileGuid()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1339
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 1340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1341
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    aput-object p1, v1, v2

    const-string p1, "Profile guid mismatch: client profile guid %s, lolomo profile guid %s"

    .line 1342
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "LoLoMoFrag"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static synthetic e(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->R()Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;Lcom/netflix/cl/model/AppView;Z)Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;
    .locals 5

    .line 398
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;-><init>()V

    .line 400
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "lolomo"

    const-string v3, "genre_id"

    if-nez p1, :cond_0

    .line 404
    invoke-virtual {v1, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 406
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getId()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v2

    .line 407
    :goto_0
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "genre_filter"

    .line 409
    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :goto_1
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const-string p1, "is_genre_list"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p2, :cond_2

    const-string p0, "genre_parcel"

    .line 414
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    const-string p0, "is_cold_start"

    .line 417
    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 418
    invoke-virtual {p3}, Lcom/netflix/cl/model/AppView;->name()Ljava/lang/String;

    move-result-object p0

    const-string p1, "navigation_source"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private e(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V
    .locals 3

    .line 1106
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerCtas()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1108
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    if-eqz v0, :cond_0

    .line 1109
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->action()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DISMISS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1110
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->trackingInfo()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1114
    :goto_0
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->umsAlertButton:Lcom/netflix/cl/model/AppView;

    .line 1115
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->a(Ljava/lang/String;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance p1, Lcom/netflix/cl/model/event/session/command/CloseCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/CloseCommand;-><init>()V

    .line 1114
    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    :cond_2
    return-void
.end method

.method private e(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 494
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->endRenderNavigationLevelSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected A()I
    .locals 3

    .line 1472
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    invoke-virtual {v0}, Lo/Kx;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_3

    .line 1473
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    invoke-virtual {v0}, Lo/Kx;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 1474
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->m()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 1477
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->h()I

    move-result v0

    if-nez v0, :cond_3

    .line 1478
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    invoke-virtual {v0, v2}, Lo/Kx;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1480
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    invoke-virtual {v1}, Lo/Kx;->computeVerticalScrollOffset()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_0

    .line 1483
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    invoke-virtual {v0}, Lo/Kx;->computeVerticalScrollOffset()I

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v2

    :cond_3
    const v0, 0x7fffffff

    return v0
.end method

.method public B()Z
    .locals 2

    .line 1393
    invoke-static {}, Lo/ady;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->o:Lo/abO;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1399
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lo/Kl$ActionBar;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method protected C()V
    .locals 3

    .line 1360
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->Q:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "LoLoMoFrag"

    const-string v2, "Restoring layout manager state: %s"

    .line 1361
    invoke-static {v0, v2, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1363
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    invoke-virtual {v0}, Lo/Kx;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->Q:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    .line 1364
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->Q:Landroid/os/Parcelable;

    :cond_0
    return-void
.end method

.method public D()V
    .locals 3

    const-string v0, "LoLoMoFrag"

    const-string v1, "Showing error view"

    .line 1173
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/aeV;->c(Landroid/view/View;Z)V

    .line 1175
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1177
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeNoNetworkOverlay()V

    .line 1178
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    new-instance v2, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$4;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$4;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)V

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    .line 1192
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->j:Lo/EditText;

    invoke-virtual {v0, v1}, Lo/EditText;->b(Z)V

    return-void
.end method

.method public R_()V
    .locals 2

    .line 1269
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 1272
    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1273
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1274
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->g()V

    .line 1278
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->G:Lo/Ki;

    if-eqz v0, :cond_1

    .line 1279
    invoke-virtual {v0}, Lo/Ki;->b()V

    :cond_1
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 4

    .line 555
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jX:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/Kx;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    .line 556
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$13;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$13;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lo/Kx;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$Fragment;)V

    .line 569
    invoke-static {}, Lo/ady;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 570
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/Kx;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$FragmentManager;)V

    .line 573
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 574
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Lo/Kx;->setFlingSpeedScale(F)V

    .line 576
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->f:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    if-nez p1, :cond_2

    .line 577
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->G()Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->f:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    goto :goto_0

    .line 580
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->K()V

    .line 582
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->f:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    invoke-virtual {p1, v0}, Lo/Kx;->setLolomoAdapter(Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;)V

    .line 583
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    invoke-static {}, Lo/Yh;->a()Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/Kx;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    .line 584
    new-instance p1, Lo/Ki;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    invoke-direct {p1, v0}, Lo/Ki;-><init>(Lo/Kx;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->G:Lo/Ki;

    .line 587
    sget-object p1, Lo/ab;->d:Lo/ab$StateListAnimator;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    invoke-virtual {v0}, Lo/Kx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/ab$StateListAnimator;->c(Landroid/content/Context;)Lo/ab;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    const-string v1, "lolomo_vertical"

    .line 588
    invoke-interface {p1, v0, v1}, Lo/ab;->d(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lo/AH;)V
    .locals 4

    .line 1285
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->c(Lo/AH;)V

    .line 1287
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->d(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 1290
    invoke-interface {p1}, Lo/AH;->getLolomoId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1291
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SPY-17621: lolomo missing id. len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    invoke-interface {p1}, Lo/AH;->getNumLoMos()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", guid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/AH;->getLolomoProfileGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1291
    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1295
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->y:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->e(Lo/AH;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->y:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 1296
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->f:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->y:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->e(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 1300
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->c(Ljava/util/Map;)V

    .line 1302
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 1304
    invoke-interface {p1}, Lo/AH;->isFromCache()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->logMetadataRenderedEvent(Z)V

    .line 1307
    :cond_2
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->d(Lo/AH;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->N()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1310
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->e(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1311
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->D()V

    goto :goto_1

    .line 1313
    :cond_3
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->f:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1314
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->f:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->a(Landroid/content/Context;)V

    .line 1316
    :cond_4
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->K()V

    :goto_1
    return-void
.end method

.method public ad_()Z
    .locals 7

    .line 1414
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 1415
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->isHidden()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    .line 1418
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->v:Ljava/lang/String;

    const-string v3, "lolomo"

    const/4 v4, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1420
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1422
    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c()Lo/KU;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1425
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->v:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 1427
    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->b:Ljava/lang/String;

    invoke-virtual {v5, v0, v2}, Lo/KU;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->q:I

    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->e(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;I)V

    return v4

    .line 1435
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->i:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 1436
    :goto_1
    invoke-static {v1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1439
    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->hb:I

    invoke-virtual {v0, v5}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setTitle(I)V

    goto :goto_2

    .line 1441
    :cond_4
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1443
    :goto_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 1445
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarStateBuilder()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    move-result-object v0

    .line 1446
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Landroid/graphics/drawable/Drawable;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    .line 1447
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    if-eqz v3, :cond_5

    .line 1449
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    .line 1450
    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    .line 1451
    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->e:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    goto :goto_3

    .line 1453
    :cond_5
    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->a(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    .line 1454
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->d(Z)Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;

    .line 1457
    :goto_3
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity$StateListAnimator;->b()Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->c(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$Activity;)V

    .line 1458
    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->q:I

    invoke-virtual {p0, v5, v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->e(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;I)V

    return v4

    :cond_6
    return v2
.end method

.method public b(IILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 711
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->z()V

    .line 713
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 714
    invoke-virtual {v0, v1}, Lo/acc;->c(Z)V

    const/4 v0, 0x0

    .line 715
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->G:Lo/Ki;

    if-eqz v0, :cond_1

    .line 719
    invoke-virtual {v0}, Lo/Ki;->b()V

    .line 724
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 726
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->y()V

    .line 727
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->f:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->d(Landroid/content/Context;IILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected c(Landroid/content/Context;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose"
        }
    .end annotation

    .line 825
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->D:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 828
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->D:Z

    .line 829
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->U_()Lo/Am;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->U_()Lo/Am;

    move-result-object v1

    invoke-virtual {v1}, Lo/Am;->c()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->getView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1c

    .line 830
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->U_()Lo/Am;

    move-result-object v1

    invoke-virtual {v1}, Lo/Am;->P()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v1

    .line 831
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->z:Lio/reactivex/disposables/Disposable;

    if-eqz v3, :cond_1

    .line 832
    invoke-interface {v3}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 837
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerAlert()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->suppressOnAppLaunch()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    if-eqz v4, :cond_3

    .line 838
    invoke-virtual {v4, v0}, Lo/acc;->c(Z)V

    .line 839
    iput-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    :cond_3
    if-eqz v1, :cond_4

    .line 841
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->modalAlert()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->suppressOnAppLaunch()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->l:Lo/abV;

    if-eqz v4, :cond_6

    .line 843
    invoke-virtual {v4}, Lo/abV;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 844
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->l:Lo/abV;

    invoke-virtual {v4}, Lo/abV;->dismiss()V

    .line 846
    :cond_5
    iput-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->l:Lo/abV;

    .line 849
    :cond_6
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->getActivity()Lo/Serializable;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->getActivity()Lo/Serializable;

    move-result-object v4

    invoke-virtual {v4}, Lo/Serializable;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 850
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->getActivity()Lo/Serializable;

    move-result-object v4

    invoke-virtual {v4}, Lo/Serializable;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v4

    const-string v5, "UmaDialogFrag"

    invoke-virtual {v4, v5}, Lo/SerializablePermission;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    .line 851
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->l:Lo/abV;

    if-eq v4, v5, :cond_7

    instance-of v5, v4, Lo/abV;

    if-eqz v5, :cond_7

    .line 852
    check-cast v4, Lo/abV;

    invoke-virtual {v4}, Lo/abV;->dismiss()V

    :cond_7
    if-eqz v1, :cond_1b

    .line 857
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->isConsumed()Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->isStale()Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-static {v1}, Lo/abX;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)Z

    move-result v4

    if-nez v4, :cond_8

    goto/16 :goto_7

    .line 863
    :cond_8
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->multiMonthOffer()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOffer;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 866
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    if-eqz v5, :cond_9

    .line 867
    invoke-virtual {v5, v0}, Lo/acc;->c(Z)V

    .line 868
    iput-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    .line 871
    :cond_9
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->l:Lo/abV;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lo/abV;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 872
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->l:Lo/abV;

    invoke-virtual {v0}, Lo/abV;->dismiss()V

    .line 873
    iput-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->l:Lo/abV;

    .line 876
    :cond_a
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOffer;->viewData()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferData;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 878
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaMultiMonthOfferData;->viewType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "banner"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 879
    invoke-direct {p0, p1, v1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->b(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V

    goto/16 :goto_8

    .line 881
    :cond_b
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->a(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V

    goto/16 :goto_8

    .line 885
    :cond_c
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerAlert()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 886
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    if-nez v4, :cond_e

    .line 887
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->getTemplateType()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;->THEMED_PROMO:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    if-ne v4, v5, :cond_d

    .line 888
    sget-object v4, Lo/abU;->a:Lo/abU$StateListAnimator;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->H()Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lo/abU$StateListAnimator;->c(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;)Lo/abU;

    move-result-object v4

    iput-object v4, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    goto :goto_0

    .line 890
    :cond_d
    new-instance v4, Lo/acc;

    invoke-direct {v4, p1, v0}, Lo/acc;-><init>(Landroid/content/Context;Z)V

    iput-object v4, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    goto :goto_0

    .line 893
    :cond_e
    invoke-virtual {v4, v1}, Lo/acc;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V

    .line 895
    :goto_0
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->suppressForBackgroundAction()Z

    move-result v4

    if-nez v4, :cond_10

    .line 896
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    invoke-virtual {v3}, Lo/acc;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_11

    .line 902
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    invoke-virtual {v3}, Lo/acc;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 903
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_f

    .line 904
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->e:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    const-string v6, "SPY-14858 - banner uma parent is non-null"

    invoke-interface {v4, v5, v6}, Lo/SpinnerAdapter;->b(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;)V

    .line 905
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v4

    const-string v5, "Uma Banner [SPY-14858] parent.removeView workaround"

    invoke-interface {v4, v5}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 906
    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 908
    :cond_f
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->getView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1, v4, v5}, Lo/acc;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;Lo/Kx;Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 911
    :cond_10
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v4

    const-string v5, "Uma Banner suppressed for background action"

    invoke-interface {v4, v5}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 912
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    invoke-virtual {v4, v2}, Lo/acc;->c(Z)V

    .line 913
    iput-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    .line 917
    :cond_11
    :goto_1
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->modalAlert()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 918
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->l:Lo/abV;

    if-nez v3, :cond_12

    .line 919
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->H()Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lo/abV;->d(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;)Lo/abV;

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->l:Lo/abV;

    .line 920
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->l:Lo/abV;

    new-instance v4, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$3;

    invoke-direct {v4, p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$3;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;)V

    invoke-virtual {v3, v4}, Lo/abV;->e(Lo/WebChromeClient$Application;)V

    goto :goto_2

    .line 929
    :cond_12
    invoke-virtual {v3, v1}, Lo/abV;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V

    .line 931
    :goto_2
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->suppressForBackgroundAction()Z

    move-result v3

    if-nez v3, :cond_13

    .line 932
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->l:Lo/abV;

    invoke-virtual {v3}, Lo/abV;->isVisible()Z

    move-result v3

    if-nez v3, :cond_14

    .line 933
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->l:Lo/abV;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lo/abV;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_3

    .line 936
    :cond_13
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->l:Lo/abV;

    invoke-virtual {v3}, Lo/abV;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->l:Lo/abV;

    invoke-virtual {v3}, Lo/abV;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 937
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->l:Lo/abV;

    invoke-virtual {v3}, Lo/abV;->dismiss()V

    .line 943
    :cond_14
    :goto_3
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->tooltipAlert()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->isHidden()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 944
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->getTemplateType()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;->THEMED_PROMO:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    if-ne v3, v4, :cond_17

    .line 945
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    if-eqz v3, :cond_17

    const v4, 0x1020002

    .line 947
    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 948
    sget v5, Lcom/netflix/mediaclient/ui/R$Fragment;->pm:I

    invoke-virtual {v3, v5}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v4, :cond_15

    const/4 v5, 0x1

    goto :goto_4

    :cond_15
    const/4 v5, 0x0

    :goto_4
    if-eqz v3, :cond_16

    goto :goto_5

    :cond_16
    const/4 v0, 0x0

    :goto_5
    and-int/2addr v0, v5

    if-eqz v0, :cond_17

    .line 951
    sget-object v0, Lo/abU;->a:Lo/abU$StateListAnimator;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->H()Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    move-result-object v5

    invoke-virtual {v0, p1, v5, v4, v3}, Lo/abU$StateListAnimator;->d(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;Landroid/view/ViewGroup;Landroid/view/View;)Lo/abU;

    move-result-object p1

    .line 952
    invoke-virtual {p1, v1}, Lo/abU;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V

    .line 953
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    .line 955
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->suppressForBackgroundAction()Z

    move-result v0

    if-nez v0, :cond_17

    .line 956
    invoke-virtual {p1}, Lo/abU;->c()V

    .line 963
    :cond_17
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->modalAlert()Z

    move-result p1

    if-nez p1, :cond_18

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->bannerAlert()Z

    move-result p1

    if-nez p1, :cond_18

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->tooltipAlert()Z

    move-result p1

    if-nez p1, :cond_18

    .line 964
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->e:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    const-string v1, "uma detected but could not be rendered, missing bannerAlert / modalAlert / tooltipAlert flag"

    invoke-interface {p1, v0, v1}, Lo/SpinnerAdapter;->b(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;)V

    goto :goto_8

    .line 965
    :cond_18
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->suppressForBackgroundAction()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 969
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->n:Lo/acc;

    if-eqz p1, :cond_19

    goto :goto_6

    .line 972
    :cond_19
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->l:Lo/abV;

    invoke-virtual {p1}, Lo/abV;->b()Lo/acc;

    move-result-object p1

    :goto_6
    if-nez p1, :cond_1a

    .line 975
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->e:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    const-string v1, "umaView is null can\'t perform background action"

    invoke-interface {p1, v0, v1}, Lo/SpinnerAdapter;->b(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;)V

    goto :goto_8

    .line 977
    :cond_1a
    invoke-virtual {p1}, Lo/acc;->l()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    .line 978
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/reactivex/subjects/PublishSubject;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v3, 0x1

    .line 979
    invoke-virtual {v0, v3, v4}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v3, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;

    invoke-direct {v3, p0, p1, v1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$2;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;Lo/acc;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V

    .line 980
    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_8

    .line 858
    :cond_1b
    :goto_7
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->D:Z

    return-void

    .line 1040
    :cond_1c
    :goto_8
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->D:Z

    return-void
.end method

.method public c(Landroid/os/Parcelable;)V
    .locals 0

    .line 1377
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->Q:Landroid/os/Parcelable;

    return-void
.end method

.method protected c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected c(Ljava/util/Map;)V
    .locals 2

    .line 1321
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1322
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->y:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->e(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    .line 1323
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/LolomoDataModel;

    invoke-direct {v1, p1}, Lcom/netflix/cl/model/context/LolomoDataModel;-><init>(Lcom/netflix/cl/model/TrackingInfo;)V

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    return-void
.end method

.method public d()Landroid/os/Parcelable;
    .locals 1

    .line 1371
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/Kx;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    .line 1372
    invoke-virtual {v0}, Lo/Kx;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Fragment;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 7

    .line 1382
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1383
    invoke-virtual {p1}, Lo/Kx;->getPaddingLeft()I

    move-result v1

    .line 1384
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->B()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->d:I

    iget v3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->c:I

    add-int/2addr v2, v3

    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    .line 1385
    invoke-virtual {v3}, Lo/Kx;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->g:I

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    invoke-virtual {v5}, Lo/Kx;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/netflix/mediaclient/ui/R$TaskDescription;->S:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 1383
    invoke-virtual {p1, v1, v2, v3, v4}, Lo/Kx;->setPadding(IIII)V

    .line 1387
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->j:Lo/EditText;

    if-eqz p1, :cond_2

    .line 1388
    iget v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->d:I

    iget v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->c:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->g:I

    invoke-virtual {p1, v0, v1, v0, v2}, Lo/EditText;->c(IIII)V

    :cond_2
    return-void
.end method

.method public d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    const/4 v0, 0x1

    .line 745
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->s:Z

    .line 747
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->f:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 748
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "onDataLoaded called but adapter is null"

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    .line 749
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->f:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 751
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->e(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 752
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->D()V

    goto :goto_2

    :cond_1
    const-string v1, "LoLoMoFrag"

    const-string v3, "Hiding loading and error views"

    .line 754
    invoke-static {v1, v3}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->j:Lo/EditText;

    invoke-virtual {v1, v2}, Lo/EditText;->a(Z)V

    .line 756
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    invoke-static {v1, v0}, Lo/aeV;->b(Landroid/view/View;Z)V

    .line 758
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->f:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    if-eqz v1, :cond_4

    .line 759
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->a()Ljava/util/List;

    move-result-object v1

    .line 760
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 761
    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v5

    sget-object v6, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->a:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    if-ne v5, v6, :cond_2

    .line 762
    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getNumVideos()I

    move-result v3

    if-lez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 767
    :goto_0
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->c(Ljava/util/List;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 769
    :goto_1
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->e(Z)V

    .line 774
    :goto_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 775
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->l()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 776
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->c(Landroid/content/Context;)V

    .line 779
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 781
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->d(Landroid/view/View;)V

    .line 784
    :cond_6
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->C()V

    .line 785
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->ad_()Z

    if-eqz p1, :cond_7

    .line 788
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->d(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 790
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->uiLatencyTrackerFluent:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ViewSwitcher;

    .line 791
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v2

    invoke-interface {v1, v2}, Lo/ViewSwitcher;->b(Z)Lo/ViewAnimator;

    move-result-object v1

    .line 792
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lo/ViewAnimator;->a(Ljava/lang/String;)Lo/ViewAnimator;

    move-result-object p1

    .line 793
    invoke-interface {p1, v0}, Lo/ViewAnimator;->b(Ljava/util/Map;)Lo/ViewAnimator;

    move-result-object p1

    .line 794
    invoke-interface {p1}, Lo/ViewAnimator;->a()Lo/YearPickerView;

    move-result-object p1

    .line 795
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/YearPickerView;->e(Lcom/netflix/mediaclient/util/gfx/ImageLoader;)V

    goto :goto_3

    .line 797
    :cond_7
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->uiLatencyTrackerFluent:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ViewSwitcher;

    .line 798
    invoke-interface {p1, v2}, Lo/ViewSwitcher;->b(Z)Lo/ViewAnimator;

    move-result-object p1

    .line 799
    invoke-interface {p1}, Lo/ViewAnimator;->a()Lo/YearPickerView;

    move-result-object p1

    .line 800
    invoke-interface {p1}, Lo/YearPickerView;->d()V

    :goto_3
    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 733
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 735
    invoke-virtual {v0, v1}, Lo/Kx;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 737
    :cond_0
    invoke-virtual {v0, v1}, Lo/Kx;->scrollToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected e(Landroid/view/View;)V
    .locals 3

    .line 533
    invoke-static {}, Lo/ady;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    new-instance v0, Lo/EditText;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->w:Lo/DatePickerCalendarDelegate$Activity;

    invoke-direct {v0, p1, v1}, Lo/EditText;-><init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->j:Lo/EditText;

    goto :goto_0

    .line 536
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lo/et;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->x:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 538
    :cond_2
    new-instance v0, Lo/CheckBox;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->w:Lo/DatePickerCalendarDelegate$Activity;

    sget-object v2, Lo/CheckBox;->e:Lo/CheckBox$ActionBar;

    invoke-direct {v0, p1, v1, v2}, Lo/CheckBox;-><init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;Lo/CheckBox$ActionBar;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->j:Lo/EditText;

    .line 539
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->j:Lo/EditText;

    iget v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->d:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->g:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v2, v1}, Lo/EditText;->c(IIII)V

    goto :goto_0

    .line 541
    :cond_3
    new-instance v0, Lo/CheckBox;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->w:Lo/DatePickerCalendarDelegate$Activity;

    sget-object v2, Lo/CheckBox;->a:Lo/CheckBox$ActionBar;

    invoke-direct {v0, p1, v1, v2}, Lo/CheckBox;-><init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;Lo/CheckBox$ActionBar;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->j:Lo/EditText;

    :goto_0
    return-void
.end method

.method protected e(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;I)V
    .locals 1

    .line 1403
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    if-eqz v0, :cond_2

    .line 1404
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->B()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->s:Z

    if-nez v0, :cond_0

    .line 1407
    invoke-static {}, Lo/Kl$ActionBar;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1408
    :goto_1
    invoke-static {p1, v0, p2}, Lo/KU;->d(Lcom/netflix/mediaclient/android/widget/NetflixActionBar;ZI)V

    :cond_2
    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 261
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->A:Z

    if-eq p1, v0, :cond_0

    .line 262
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->A:Z

    .line 263
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->ad_()Z

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    .line 268
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->A:Z

    return v0
.end method

.method public isLoadingData()Z
    .locals 4

    .line 1258
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->f:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    const-string v1, "NflxLoading"

    if-nez v0, :cond_0

    const-string v0, "No mAdapter yet - not loading data"

    .line 1259
    invoke-static {v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 1262
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->isLoadingData()Z

    move-result v0

    .line 1263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", loading: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 503
    invoke-super {p0, p1}, Lo/JW;->onActivityCreated(Landroid/os/Bundle;)V

    .line 505
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 506
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    if-eqz v0, :cond_0

    .line 507
    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$15;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag$15;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;Lcom/netflix/mediaclient/android/widget/NetflixActionBar;)V

    invoke-virtual {v0, v1}, Lo/Kx;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$TaskStackBuilder;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 647
    invoke-super {p0, p1}, Lo/JW;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 648
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->getActivity()Lo/Serializable;

    move-result-object p1

    .line 649
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->f:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 650
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 426
    invoke-super {p0, p1}, Lo/JW;->onCreate(Landroid/os/Bundle;)V

    .line 428
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 429
    const-class v1, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 431
    :goto_0
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->B:Z

    .line 433
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->uiLatencyTrackerFluent:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ViewSwitcher;

    .line 434
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->t()Lcom/netflix/cl/model/AppView;

    move-result-object v2

    invoke-interface {p1, v2, p0}, Lo/ViewSwitcher;->d(Lcom/netflix/cl/model/AppView;Lo/UnicodeScript;)Lo/WrapperListAdapter;

    move-result-object p1

    sget-boolean v2, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->u:Z

    .line 435
    invoke-interface {p1, v2}, Lo/WrapperListAdapter;->a(Z)Lo/WrapperListAdapter;

    move-result-object p1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->B:Z

    .line 436
    invoke-interface {p1, v2}, Lo/WrapperListAdapter;->c(Z)Lo/WrapperListAdapter;

    move-result-object p1

    const-string v2, "navigation_source"

    .line 437
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Lo/WrapperListAdapter;->d(Ljava/lang/String;)Lo/WrapperListAdapter;

    move-result-object p1

    .line 438
    invoke-interface {p1}, Lo/WrapperListAdapter;->b()Lo/WrapperListAdapter;

    move-result-object p1

    .line 439
    invoke-interface {p1}, Lo/WrapperListAdapter;->c()Lo/WrapperListAdapter;

    move-result-object p1

    .line 440
    invoke-interface {p1}, Lo/WrapperListAdapter;->d()Lo/WrapperListAdapter;

    move-result-object p1

    .line 441
    invoke-interface {p1}, Lo/WrapperListAdapter;->e()Lo/WrapperListAdapter;

    move-result-object p1

    .line 442
    invoke-interface {p1}, Lo/WrapperListAdapter;->a()V

    .line 444
    sput-boolean v1, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->u:Z

    const-string p1, "genre_id"

    .line 446
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->b:Ljava/lang/String;

    const-string p1, "genre_filter"

    .line 447
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->v:Ljava/lang/String;

    const-string p1, "is_genre_list"

    .line 448
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->x:Z

    const-string p1, "genre_parcel"

    .line 449
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->i:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    .line 450
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->getActivity()Lo/Serializable;

    move-result-object p1

    invoke-static {p1}, Lo/KU;->a(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->t:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "LoLoMoFrag"

    const-string v0, "Creating frag view"

    .line 459
    invoke-static {p3, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->x()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->m:Landroid/widget/FrameLayout;

    .line 466
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->m:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->e(Landroid/view/View;)V

    .line 467
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->f:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    if-eqz p1, :cond_0

    .line 468
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->j:Lo/EditText;

    invoke-virtual {p1, v0}, Lo/EditText;->a(Z)V

    .line 471
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->m:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->a(Landroid/view/View;)V

    .line 472
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->M()V

    .line 473
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->getActivity()Lo/Serializable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 475
    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p2

    iget-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->L:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.netflix.mediaclient.intent.action.BILLBOARD_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 476
    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p2

    iget-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->K:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.netflix.mediaclient.intent.action.BILLBOARD_CLEARED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 477
    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p2

    iget-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->M:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.netflix.mediaclient.intent.action.BILLBOARD_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 478
    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p2

    iget-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->I:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.netflix.mediaclient.intent.action.ACTION_UPDATE_VIDEOS_IN_UI"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 479
    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p2

    iget-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->N:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.netflix.mediaclient.intent.action.RELOAD_VIDEOS_FROM_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 481
    iget-boolean p2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->x:Z

    if-nez p2, :cond_1

    .line 482
    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p2

    iget-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->H:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "RefreshUserMessageRequest.ACTION_UMA_MESSAGE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 483
    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->F:Landroid/content/BroadcastReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "RefreshUserMessageRequest.ACTION_DISMISS_UMA_MESSAGE"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 486
    :cond_1
    invoke-static {}, Lo/eG;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 487
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->S:Landroid/content/BroadcastReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "com.netflix.mediaclient.intent.action.PREFETCH_DP_PRIMARY_DATA_LOLOMO"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 490
    :cond_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->m:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    const-string v0, "LoLoMoFrag"

    const-string v1, "onDestroyView"

    .line 674
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->y()V

    .line 678
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->F()V

    .line 681
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->f:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->e(Landroid/content/Context;)V

    .line 685
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 687
    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->L:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    .line 688
    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->K:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    .line 689
    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->M:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    .line 690
    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->I:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    .line 691
    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->N:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    .line 693
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->x:Z

    if-nez v1, :cond_1

    .line 694
    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->H:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    .line 695
    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->F:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    .line 698
    :cond_1
    invoke-static {}, Lo/eG;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 699
    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->S:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    .line 703
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->p:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 705
    invoke-super {p0}, Lo/JW;->onDestroyView()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .line 656
    invoke-super {p0, p1}, Lo/JW;->onHiddenChanged(Z)V

    .line 657
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->f:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->d(Landroid/content/Context;Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 661
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    const-string v1, "onHiddenChanged"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/NetflixApplication;->b(Ljava/lang/String;)V

    .line 662
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->J()V

    goto :goto_0

    .line 664
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->K()V

    :goto_0
    if-eqz p1, :cond_2

    .line 668
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->Q()V

    :cond_2
    return-void
.end method

.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string p1, "LoLoMoFrag"

    const-string v0, "onManagerReady"

    .line 1204
    invoke-static {p1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Manager status code not okay"

    .line 1207
    invoke-static {p1, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1211
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->M()V

    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 629
    invoke-super {p0}, Lo/JW;->onPause()V

    .line 630
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->f:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->d(Landroid/content/Context;)V

    .line 633
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    const-string v1, "onPause"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/NetflixApplication;->b(Ljava/lang/String;)V

    .line 636
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->Q()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 621
    invoke-super {p0}, Lo/JW;->onResume()V

    .line 622
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->f:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->getActivity()Lo/Serializable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 615
    invoke-super {p0}, Lo/JW;->onStart()V

    .line 616
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->K()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 641
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->J()V

    .line 642
    invoke-super {p0}, Lo/JW;->onStop()V

    return-void
.end method

.method public setLoadingStatusCallback(Lo/JsDialogHelper$Activity;)V
    .locals 1

    .line 1253
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->f:Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewAdapter;->setLoadingStatusCallback(Lo/JsDialogHelper$Activity;)V

    return-void
.end method

.method public t()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 1328
    sget-object v0, Lcom/netflix/cl/model/AppView;->browseTitles:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lo/JW;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - genreId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->i:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected v()Lo/KN;
    .locals 2

    .line 546
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->x:Z

    if-eqz v0, :cond_0

    .line 547
    new-instance v0, Lo/KM;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lo/KM;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 549
    :cond_0
    invoke-static {}, Lo/KP;->d()Lo/KP;

    move-result-object v0

    return-object v0
.end method

.method protected x()I
    .locals 1

    .line 454
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->cy:I

    return v0
.end method

.method protected y()V
    .locals 0

    return-void
.end method

.method protected z()V
    .locals 2

    const-string v0, "LoLoMoFrag"

    const-string v1, "Showing loading view"

    .line 1197
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->h:Lo/Kx;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/aeV;->c(Landroid/view/View;Z)V

    .line 1199
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LolomoRecyclerViewFrag;->j:Lo/EditText;

    invoke-virtual {v0, v1}, Lo/EditText;->c(Z)V

    return-void
.end method
