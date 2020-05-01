.class public Lo/Np;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Np$ActionBar;
    }
.end annotation


# instance fields
.field protected b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field protected f:Lo/EditText;

.field protected h:Landroid/view/View;

.field protected i:Landroid/view/View;

.field protected j:Landroid/view/ViewGroup;

.field private k:Lo/Am;

.field protected l:Landroid/view/View;

.field private m:Lo/OA;

.field protected n:Landroid/widget/LinearLayout;

.field private o:Lo/MenuPopupWindow;

.field private p:Lo/Np$ActionBar;

.field private q:Z

.field private r:Lo/RadioGroup;

.field private s:Z

.field private t:Z

.field private final u:Landroid/widget/AdapterView$OnItemClickListener;

.field private final v:Landroid/content/BroadcastReceiver;

.field private final w:Ljava/lang/Runnable;

.field private final x:Landroid/content/BroadcastReceiver;

.field private y:Lo/BC;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lo/Np;->s:Z

    .line 112
    iput-boolean v0, p0, Lo/Np;->t:Z

    .line 117
    new-instance v0, Lo/Np$4;

    invoke-direct {v0, p0}, Lo/Np$4;-><init>(Lo/Np;)V

    iput-object v0, p0, Lo/Np;->x:Landroid/content/BroadcastReceiver;

    .line 124
    new-instance v0, Lo/Np$3;

    invoke-direct {v0, p0}, Lo/Np$3;-><init>(Lo/Np;)V

    iput-object v0, p0, Lo/Np;->v:Landroid/content/BroadcastReceiver;

    .line 135
    new-instance v0, Lo/Np$1;

    invoke-direct {v0, p0}, Lo/Np$1;-><init>(Lo/Np;)V

    iput-object v0, p0, Lo/Np;->w:Ljava/lang/Runnable;

    .line 692
    new-instance v0, Lo/Np$8;

    invoke-direct {v0, p0}, Lo/Np$8;-><init>(Lo/Np;)V

    iput-object v0, p0, Lo/Np;->u:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private A()V
    .locals 0

    .line 518
    invoke-direct {p0}, Lo/Np;->B()V

    .line 519
    invoke-virtual {p0}, Lo/Np;->g()V

    return-void
.end method

.method private B()V
    .locals 5

    .line 523
    invoke-direct {p0}, Lo/Np;->D()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 524
    invoke-virtual {p0}, Lo/Np;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v0

    const-string v1, "MoreFragment"

    if-nez v0, :cond_0

    const-string v0, "Profile is null - can\'t update profile info"

    .line 526
    invoke-static {v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 530
    :cond_0
    iget-object v2, p0, Lo/Np;->k:Lo/Am;

    invoke-virtual {v2}, Lo/Am;->X()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "getAllProfiles returned null - can\'t update profile info"

    .line 531
    invoke-static {v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 534
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lo/Np;->k:Lo/Am;

    invoke-virtual {v2}, Lo/Am;->X()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 535
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_2

    .line 536
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    const-string v4, "More than 5 profiles!"

    invoke-interface {v2, v4}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 537
    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 539
    :cond_2
    iget-object v2, p0, Lo/Np;->o:Lo/MenuPopupWindow;

    iget-object v3, p0, Lo/Np;->y:Lo/BC;

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lo/Np;->v()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lo/Np;->y:Lo/BC;

    :cond_3
    invoke-virtual {v2, v1, v0}, Lo/MenuPopupWindow;->setProfiles(Ljava/util/List;Lo/BC;)V

    const/4 v0, 0x1

    .line 540
    iput-boolean v0, p0, Lo/Np;->t:Z

    .line 541
    invoke-direct {p0}, Lo/Np;->x()V

    .line 542
    iget-object v0, p0, Lo/Np;->o:Lo/MenuPopupWindow;

    invoke-virtual {v0}, Lo/MenuPopupWindow;->requestFocus()Z

    :cond_4
    return-void
.end method

.method private C()V
    .locals 4

    .line 556
    invoke-direct {p0}, Lo/Np;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lo/Np;->k:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lo/Np;->n:Landroid/widget/LinearLayout;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->kX:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 561
    iget-object v1, p0, Lo/Np;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->hL:I

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/Np;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v3, Lcom/netflix/mediaclient/ui/R$Activity;->bg:I

    .line 562
    invoke-static {v2, v3}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 561
    invoke-virtual {p0, v0, v1, v2}, Lo/Np;->c(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 564
    new-instance v1, Lo/Np$2;

    invoke-direct {v1, p0}, Lo/Np$2;-><init>(Lo/Np;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 574
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private D()Z
    .locals 2

    .line 509
    iget-object v0, p0, Lo/Np;->k:Lo/Am;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "MoreFragment"

    const-string v1, "Manager is not ready - can\'t update"

    .line 513
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private F()V
    .locals 4

    .line 579
    invoke-virtual {p0}, Lo/Np;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 581
    const-class v1, Lo/o;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/o;

    iget-object v2, p0, Lo/Np;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lo/Np;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v3

    invoke-interface {v3}, Lo/UnicodeScript;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lo/o;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/view/ViewGroup;Landroidx/lifecycle/Lifecycle;)V

    :cond_0
    return-void
.end method

.method private H()V
    .locals 4

    .line 586
    invoke-direct {p0}, Lo/Np;->D()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 587
    iget-object v0, p0, Lo/Np;->k:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->w()Lo/zG;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lo/zG;->d(Z)V

    .line 588
    invoke-virtual {p0}, Lo/Np;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 590
    invoke-interface {v0}, Lo/BC;->isKidsProfile()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-class v0, Lo/m;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/m;

    invoke-interface {v0}, Lo/m;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const-string v0, "MoreFragment"

    const-string v1, "Inflating notifications into layout"

    .line 592
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v0, p0, Lo/Np;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 595
    invoke-virtual {p0}, Lo/Np;->getChildFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    const-string v1, "NOTIFICATIONS_FRAGMENT"

    invoke-virtual {v0, v1}, Lo/SerializablePermission;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/OA;

    iput-object v0, p0, Lo/Np;->m:Lo/OA;

    .line 596
    iget-object v0, p0, Lo/Np;->m:Lo/OA;

    if-nez v0, :cond_1

    .line 598
    new-instance v0, Lo/OA;

    invoke-direct {v0}, Lo/OA;-><init>()V

    iput-object v0, p0, Lo/Np;->m:Lo/OA;

    .line 599
    invoke-virtual {p0}, Lo/Np;->getChildFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    invoke-virtual {v0}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object v0

    .line 600
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->lz:I

    iget-object v3, p0, Lo/Np;->m:Lo/OA;

    invoke-virtual {v0, v2, v3, v1}, Lo/UnsupportedEncodingException;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Lo/UnsupportedEncodingException;

    .line 601
    invoke-virtual {v0}, Lo/UnsupportedEncodingException;->c()V

    .line 604
    :cond_1
    iget-object v0, p0, Lo/Np;->m:Lo/OA;

    new-instance v1, Lo/Np$7;

    invoke-direct {v1, p0}, Lo/Np$7;-><init>(Lo/Np;)V

    invoke-virtual {v0, v1}, Lo/OA;->b(Lo/Os$Activity;)V

    .line 613
    iget-object v0, p0, Lo/Np;->m:Lo/OA;

    invoke-virtual {v0}, Lo/OA;->B()Z

    move-result v0

    invoke-direct {p0, v0}, Lo/Np;->b(Z)V

    .line 614
    iget-object v0, p0, Lo/Np;->n:Landroid/widget/LinearLayout;

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->hu:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 615
    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->cG:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 616
    new-instance v1, Lo/Np$6;

    invoke-direct {v1, p0}, Lo/Np$6;-><init>(Lo/Np;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    iget-object v0, p0, Lo/Np;->m:Lo/OA;

    invoke-virtual {v0}, Lo/OA;->g()V

    goto :goto_1

    .line 628
    :cond_2
    iget-object v0, p0, Lo/Np;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lo/Np;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 630
    iget-object v0, p0, Lo/Np;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic a(Lo/Np;)Lo/OA;
    .locals 0

    .line 87
    iget-object p0, p0, Lo/Np;->m:Lo/OA;

    return-object p0
.end method

.method private a(Lo/BC;)V
    .locals 7

    .line 224
    invoke-virtual {p0}, Lo/Np;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const-string v1, "MoreFragment"

    if-nez v0, :cond_0

    const-string p1, "startChangeProfile - ignoring because fragment is missing activity"

    .line 226
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 229
    :cond_0
    iget-object v2, p0, Lo/Np;->k:Lo/Am;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lo/Am;->c()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 241
    :cond_1
    invoke-virtual {p0}, Lo/Np;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-static {v2}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 246
    :cond_2
    invoke-static {}, Lo/ady;->l()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 247
    invoke-direct {p0, v5, v4, v4}, Lo/Np;->c(ZZZ)V

    .line 248
    invoke-direct {p0, p1}, Lo/Np;->e(Lo/BC;)V

    .line 250
    new-instance v1, Lo/Zf;

    invoke-direct {v1}, Lo/Zf;-><init>()V

    invoke-virtual {v1, v0, p1}, Lo/Zf;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;)Lio/reactivex/Observable;

    move-result-object p1

    .line 252
    invoke-virtual {p0}, Lo/Np;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-static {v1, v3}, Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;->e(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$Event;)Lcom/uber/autodispose/android/lifecycle/AndroidLifecycleScopeProvider;

    move-result-object v1

    .line 251
    invoke-static {v1}, Lcom/uber/autodispose/AutoDispose;->d(Lcom/uber/autodispose/ScopeProvider;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Lo/Nm;

    invoke-direct {v1, p0, v0, v2}, Lo/Nm;-><init>(Lo/Np;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;)V

    new-instance v0, Lo/Nu;

    invoke-direct {v0, p0, v2}, Lo/Nu;-><init>(Lo/Np;Lo/BC;)V

    .line 254
    invoke-interface {p1, v1, v0}, Lcom/uber/autodispose/ObservableSubscribeProxy;->c(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 294
    :cond_3
    sget-object v3, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v6, Lcom/netflix/cl/model/event/session/command/SelectProfileCommand;

    invoke-direct {v6}, Lcom/netflix/cl/model/event/session/command/SelectProfileCommand;-><init>()V

    invoke-virtual {v3, v6}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v3

    .line 297
    invoke-interface {v2}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p1, "Selected profile is the same as the current one - skipping profile change..."

    .line 298
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    .line 301
    sget-object p1, Lcom/netflix/cl/model/AppView;->moreTab:Lcom/netflix/cl/model/AppView;

    invoke-static {v0, p1, v5}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/Np;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 305
    :cond_4
    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->h(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string p1, "Network is NOT connected, prevent action and report to user!"

    .line 306
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    sget-object p1, Lo/LegacyErrorStrings;->n:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0, p1, v5}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;Z)Ljava/lang/String;

    return-void

    .line 312
    :cond_5
    invoke-direct {p0, v5, v4, v4}, Lo/Np;->c(ZZZ)V

    .line 313
    invoke-direct {p0, p1}, Lo/Np;->e(Lo/BC;)V

    .line 315
    iget-object v0, p0, Lo/Np;->k:Lo/Am;

    invoke-interface {p1}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Am;->b(Ljava/lang/String;)V

    .line 316
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {p1, v3}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    :goto_0
    return-void

    :cond_6
    :goto_1
    const-string p1, "Manager is not ready"

    .line 230
    invoke-static {v1, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lo/Np;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/Np;->c(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lo/Np;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/Zf$TaskDescription;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo/Np;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/Zf$TaskDescription;)V

    return-void
.end method

.method static synthetic a(Lo/Np;Lo/BC;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/Np;->b(Lo/BC;)V

    return-void
.end method

.method private synthetic b(Lo/BC;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lo/Np;->y:Lo/BC;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 194
    invoke-direct {p0, p1}, Lo/Np;->a(Lo/BC;)V

    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 2

    .line 406
    iget-object v0, p0, Lo/Np;->j:Landroid/view/ViewGroup;

    const-string v1, "MoreFragment"

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "Showing notifications header"

    .line 408
    invoke-static {v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object p1, p0, Lo/Np;->j:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 410
    iget-object p1, p0, Lo/Np;->h:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 411
    iget-object p1, p0, Lo/Np;->i:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    .line 413
    invoke-virtual {p0, p1}, Lo/Np;->e(Z)V

    goto :goto_0

    .line 415
    :cond_0
    iget-object p1, p0, Lo/Np;->w:Ljava/lang/Runnable;

    invoke-static {p1}, Lo/adX;->c(Ljava/lang/Runnable;)V

    const-string p1, "Hiding notifications header"

    .line 416
    invoke-static {v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object p1, p0, Lo/Np;->j:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 418
    iget-object p1, p0, Lo/Np;->h:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 419
    iget-object p1, p0, Lo/Np;->i:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string p1, "notificationsFragmentContainer is null - can\'t set visibility"

    .line 422
    invoke-static {v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic b(Lo/Np;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lo/Np;->s:Z

    return p0
.end method

.method public static c()Lo/Np;
    .locals 1

    .line 145
    new-instance v0, Lo/Np;

    invoke-direct {v0}, Lo/Np;-><init>()V

    return-object v0
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 1

    .line 199
    invoke-virtual {p0}, Lo/Np;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 201
    new-instance v0, Lo/YR;

    invoke-direct {v0}, Lo/YR;-><init>()V

    invoke-virtual {v0, p1}, Lo/YR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    :cond_0
    return-void
.end method

.method private c(Lo/BC;)V
    .locals 1

    .line 321
    invoke-direct {p0}, Lo/Np;->x()V

    .line 322
    iget-object v0, p0, Lo/Np;->o:Lo/MenuPopupWindow;

    invoke-interface {p1}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/MenuPopupWindow;->setSelected(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lo/Np;->d()V

    return-void
.end method

.method static synthetic c(Lo/Np;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lo/Np;->z()V

    return-void
.end method

.method static synthetic c(Lo/Np;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/Np;->e(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lo/Np;Lo/BC;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/Np;->e(Lo/BC;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic c(Lo/Np;Z)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lo/Np;->b(Z)V

    return-void
.end method

.method private c(ZZZ)V
    .locals 5

    const-string v0, "MoreFragment"

    const-string v1, "Showing loading view..."

    .line 371
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lo/Np;->f:Lo/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/EditText;->c(Z)V

    .line 373
    iget-object v0, p0, Lo/Np;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 374
    invoke-virtual {p0}, Lo/Np;->getView()Landroid/view/View;

    move-result-object v0

    .line 375
    invoke-virtual {p0}, Lo/Np;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    if-eqz v0, :cond_2

    .line 377
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 380
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    if-eqz p2, :cond_1

    .line 382
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v3, 0x190

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    if-eqz p3, :cond_2

    .line 387
    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBottomNavBar()Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 388
    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBottomNavBar()Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private synthetic d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/Zf$TaskDescription;)V
    .locals 4

    .line 256
    invoke-virtual {p3}, Lo/Zf$TaskDescription;->c()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MoreFragment"

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 p3, 0x2

    if-eq v0, p3, :cond_1

    const/4 p3, 0x3

    if-eq v0, p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "Tried to select same profile"

    .line 281
    invoke-static {v2, p3}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-direct {p0, p2}, Lo/Np;->c(Lo/BC;)V

    .line 283
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    .line 284
    sget-object p2, Lcom/netflix/cl/model/AppView;->moreTab:Lcom/netflix/cl/model/AppView;

    invoke-static {p1, p2, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/Np;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string p1, "profileChange cancelled"

    .line 270
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-direct {p0, p2}, Lo/Np;->c(Lo/BC;)V

    goto :goto_0

    :cond_2
    const-string v0, "profileChange unsuccessful"

    .line 274
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0, p2}, Lo/Np;->c(Lo/BC;)V

    .line 276
    invoke-virtual {p3}, Lo/Zf$TaskDescription;->b()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lo/Np;->l()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 277
    invoke-virtual {p3}, Lo/Zf$TaskDescription;->b()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleUserAgentErrors(Lcom/netflix/mediaclient/android/app/Status;Z)Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string p2, "profileChange successful"

    .line 258
    invoke-static {v2, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restarting app, time: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finishAllActivities(Landroid/content/Context;)V

    .line 265
    invoke-virtual {p0}, Lo/Np;->t()Lcom/netflix/cl/model/AppView;

    move-result-object p2

    .line 263
    invoke-static {p1, p2, v1}, Lo/Jx;->d(Landroid/content/Context;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object p2

    const/high16 p3, 0x4000000

    .line 267
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    .line 262
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic d(Lo/Np;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lo/Np;->y()V

    return-void
.end method

.method static synthetic e(Lo/Np;)Lo/Np$ActionBar;
    .locals 0

    .line 87
    iget-object p0, p0, Lo/Np;->p:Lo/Np$ActionBar;

    return-object p0
.end method

.method private synthetic e(Landroid/view/View;)V
    .locals 4

    .line 185
    invoke-virtual {p0}, Lo/Np;->getActivity()Lo/Serializable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 186
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v0, Lcom/netflix/cl/model/event/session/command/SelectProfileCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/SelectProfileCommand;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->startSession(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object p1

    .line 187
    sget-object v0, Lo/Zg;->c:Lo/Zg;

    invoke-virtual {p0}, Lo/Np;->getActivity()Lo/Serializable;

    move-result-object v1

    const/4 v2, 0x1

    sget-object v3, Lcom/netflix/cl/model/AppView;->moreTab:Lcom/netflix/cl/model/AppView;

    invoke-virtual {v0, v1, v2, v3}, Lo/Zg;->a(Landroid/content/Context;ZLcom/netflix/cl/model/AppView;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/Np;->startActivity(Landroid/content/Intent;)V

    .line 188
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-virtual {v0, p1}, Lcom/netflix/cl/Logger;->endSession(Ljava/lang/Long;)Z

    :cond_0
    return-void
.end method

.method private e(Lo/BC;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lo/Np;->y:Lo/BC;

    return-void
.end method

.method private synthetic e(Lo/BC;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "MoreFragment"

    const-string v1, "profileChange unsuccessful"

    .line 289
    invoke-static {p2, v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 290
    invoke-direct {p0, p1}, Lo/Np;->c(Lo/BC;)V

    return-void
.end method

.method private v()Z
    .locals 1

    .line 332
    iget-object v0, p0, Lo/Np;->k:Lo/Am;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Am;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Np;->k:Lo/Am;

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

.method private x()V
    .locals 6

    .line 344
    iget-boolean v0, p0, Lo/Np;->t:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lo/Np;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "MoreFragment"

    const-string v1, "Showing content view..."

    .line 347
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lo/Np;->f:Lo/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/EditText;->a(Z)V

    .line 349
    iget-object v0, p0, Lo/Np;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lo/Np;->l:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 351
    invoke-virtual {p0}, Lo/Np;->getView()Landroid/view/View;

    move-result-object v0

    .line 352
    invoke-virtual {p0}, Lo/Np;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    .line 353
    invoke-virtual {p0}, Lo/Np;->isHidden()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    .line 354
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 356
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 357
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    .line 358
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 361
    :cond_1
    invoke-static {v0, v1}, Lo/aeV;->d(Landroid/view/View;Z)V

    .line 364
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBottomNavBar()Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 365
    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getBottomNavBar()Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/NetflixBottomNavBar;->setEnabled(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private y()V
    .locals 2

    .line 398
    iget-object v0, p0, Lo/Np;->k:Lo/Am;

    if-eqz v0, :cond_1

    .line 399
    invoke-virtual {v0}, Lo/Am;->P()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->isConsumed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->blocking()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lo/abX;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lo/Np;->s:Z

    :cond_1
    return-void
.end method

.method private z()V
    .locals 2

    .line 430
    iget-object v0, p0, Lo/Np;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lo/Iq;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 431
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 432
    new-instance v1, Lo/Np$ActionBar;

    invoke-direct {v1, p0, v0}, Lo/Np$ActionBar;-><init>(Lo/Np;Ljava/util/List;)V

    iput-object v1, p0, Lo/Np;->p:Lo/Np$ActionBar;

    .line 433
    iget-object v0, p0, Lo/Np;->r:Lo/RadioGroup;

    iget-object v1, p0, Lo/Np;->p:Lo/Np$ActionBar;

    invoke-virtual {v0, v1}, Lo/RadioGroup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 434
    iget-object v0, p0, Lo/Np;->r:Lo/RadioGroup;

    iget-object v1, p0, Lo/Np;->u:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lo/RadioGroup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 435
    iget-object v0, p0, Lo/Np;->r:Lo/RadioGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/RadioGroup;->setVisibility(I)V

    goto :goto_0

    .line 437
    :cond_0
    iget-object v0, p0, Lo/Np;->r:Lo/RadioGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/RadioGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected c(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 644
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qG:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 645
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 647
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qF:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 648
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->qH:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 652
    sget p2, Lcom/netflix/mediaclient/ui/R$StateListAnimator;->a:I

    invoke-static {p1, p3, p2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->d(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 340
    iput-object v0, p0, Lo/Np;->y:Lo/BC;

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 2

    .line 703
    iget v0, p0, Lo/Np;->d:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/RemoteException;->e(Landroid/view/View;II)V

    .line 704
    iget v0, p0, Lo/Np;->g:I

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lo/RemoteException;->e(Landroid/view/View;II)V

    return-void
.end method

.method public e(Z)V
    .locals 3

    .line 492
    iget-object v0, p0, Lo/Np;->m:Lo/OA;

    if-eqz v0, :cond_1

    const-string v1, "MoreFragment"

    if-eqz p1, :cond_0

    .line 493
    iget-boolean v2, p0, Lo/Np;->q:Z

    if-nez v2, :cond_0

    const/4 p1, 0x1

    .line 494
    iput-boolean p1, p0, Lo/Np;->q:Z

    .line 495
    invoke-virtual {v0, v1}, Lo/OA;->c(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lo/Np;->m:Lo/OA;

    invoke-virtual {v0, p1}, Lo/OA;->d(Z)V

    .line 498
    iget-object p1, p0, Lo/Np;->w:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-static {p1, v0, v1}, Lo/adX;->b(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 499
    iget-boolean p1, p0, Lo/Np;->q:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 500
    iput-boolean p1, p0, Lo/Np;->q:Z

    .line 501
    iget-object v0, p0, Lo/Np;->m:Lo/OA;

    invoke-virtual {v0, p1}, Lo/OA;->d(Z)V

    .line 502
    iget-object p1, p0, Lo/Np;->m:Lo/OA;

    invoke-virtual {p1, v1}, Lo/OA;->a(Ljava/lang/String;)V

    .line 503
    iget-object p1, p0, Lo/Np;->w:Ljava/lang/Runnable;

    invoke-static {p1}, Lo/adX;->c(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected g()V
    .locals 1

    .line 547
    invoke-direct {p0}, Lo/Np;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lo/Np;->k:Lo/Am;

    invoke-virtual {v0}, Lo/Am;->y()V

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .line 328
    invoke-direct {p0}, Lo/Np;->v()Z

    move-result v0

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 156
    invoke-virtual {p0}, Lo/Np;->getActivity()Lo/Serializable;

    move-result-object p3

    check-cast p3, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p3, p0, Lo/Np;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 158
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->cI:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 160
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->qK:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lo/Np;->n:Landroid/widget/LinearLayout;

    .line 161
    iget-object p2, p0, Lo/Np;->n:Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    new-instance p2, Lo/EditText;

    new-instance p3, Lo/Np$5;

    invoke-direct {p3, p0}, Lo/Np$5;-><init>(Lo/Np;)V

    invoke-direct {p2, p1, p3}, Lo/EditText;-><init>(Landroid/view/View;Lo/DatePickerCalendarDelegate$Activity;)V

    iput-object p2, p0, Lo/Np;->f:Lo/EditText;

    .line 170
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->tO:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lo/Np;->l:Landroid/view/View;

    .line 172
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->hx:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lo/Np;->h:Landroid/view/View;

    .line 173
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->hu:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lo/Np;->i:Landroid/view/View;

    .line 175
    iget-object p2, p0, Lo/Np;->i:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 176
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->qF:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 177
    iget-object p3, p0, Lo/Np;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->lW:I

    invoke-virtual {p3, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 181
    :cond_0
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->lz:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lo/Np;->j:Landroid/view/ViewGroup;

    .line 183
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->pE:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/MenuPopupWindow;

    iput-object p2, p0, Lo/Np;->o:Lo/MenuPopupWindow;

    .line 184
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->kb:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lo/Nn;

    invoke-direct {p3, p0}, Lo/Nn;-><init>(Lo/Np;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object p2, p0, Lo/Np;->o:Lo/MenuPopupWindow;

    new-instance p3, Lo/Nq;

    invoke-direct {p3, p0}, Lo/Nq;-><init>(Lo/Np;)V

    invoke-virtual {p2, p3}, Lo/MenuPopupWindow;->setProfileSelectedListener(Lo/MenuPopupWindow$Application;)V

    .line 198
    iget-object p2, p0, Lo/Np;->o:Lo/MenuPopupWindow;

    new-instance p3, Lo/No;

    invoke-direct {p3, p0}, Lo/No;-><init>(Lo/Np;)V

    invoke-virtual {p2, p3}, Lo/MenuPopupWindow;->setAddProfileListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object p2, p0, Lo/Np;->n:Landroid/widget/LinearLayout;

    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->w:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/RadioGroup;

    iput-object p2, p0, Lo/Np;->r:Lo/RadioGroup;

    .line 206
    iget-object p2, p0, Lo/Np;->r:Lo/RadioGroup;

    invoke-virtual {p2, v0}, Lo/RadioGroup;->setFocusable(Z)V

    .line 208
    invoke-direct {p0}, Lo/Np;->z()V

    .line 210
    iget-object p2, p0, Lo/Np;->v:Landroid/content/BroadcastReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p3, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lo/Np;->e(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 p2, 0x1

    .line 212
    invoke-direct {p0, p2, v0, v0}, Lo/Np;->c(ZZZ)V

    return-object p1
.end method

.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 443
    iput-object p1, p0, Lo/Np;->k:Lo/Am;

    .line 445
    invoke-direct {p0}, Lo/Np;->H()V

    .line 446
    invoke-direct {p0}, Lo/Np;->C()V

    .line 447
    invoke-direct {p0}, Lo/Np;->z()V

    .line 448
    invoke-direct {p0}, Lo/Np;->A()V

    .line 449
    invoke-direct {p0}, Lo/Np;->y()V

    .line 451
    iget-object v0, p0, Lo/Np;->m:Lo/OA;

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0, p1, p2}, Lo/OA;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 458
    iget-object v0, p0, Lo/Np;->m:Lo/OA;

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0, p1, p2}, Lo/OA;->onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    const/4 p1, 0x0

    .line 461
    iput-object p1, p0, Lo/Np;->k:Lo/Am;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 481
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onPause()V

    const/4 v0, 0x0

    .line 482
    invoke-virtual {p0, v0}, Lo/Np;->e(Z)V

    .line 483
    iget-object v0, p0, Lo/Np;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v0

    iget-object v1, p0, Lo/Np;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lo/IllegalMonitorStateException;->c(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 466
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onResume()V

    .line 468
    iget-object v0, p0, Lo/Np;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 469
    invoke-virtual {p0, v0}, Lo/Np;->e(Z)V

    .line 472
    :cond_0
    invoke-direct {p0}, Lo/Np;->A()V

    .line 473
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "RefreshUserMessageRequest.ACTION_UMA_MESSAGE_UPDATED"

    .line 474
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "RefreshUserMessageRequest.ACTION_UMA_MESSAGE_CONSUMED"

    .line 475
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 476
    iget-object v1, p0, Lo/Np;->b:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object v1

    iget-object v2, p0, Lo/Np;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lo/IllegalMonitorStateException;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 219
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 220
    invoke-direct {p0}, Lo/Np;->F()V

    return-void
.end method

.method public t()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 709
    sget-object v0, Lcom/netflix/cl/model/AppView;->accountMenu:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method
