.class public Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;
.super Lo/FrameInfo;
.source ""

# interfaces
.implements Lo/MetricAffectingSpan;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Activity;
    }
.end annotation


# static fields
.field static final synthetic c:[Lo/amT;


# instance fields
.field public a:Lo/InputChannel;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/netflix/cl/model/AppView;

.field private final f:Lo/ams;

.field public formDataObserverFactory:Lo/WallpaperSettingsActivity;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final g:Lo/ams;

.field private final h:Lo/ams;

.field private final i:Lo/ams;

.field private final j:Lo/ams;

.field private final k:Lo/ams;

.field private final l:Lo/ams;

.field private final m:Lo/ams;

.field private n:Ljava/util/HashMap;

.field public upgradeOnUsDialogPresenter:Lo/RasterizerSpan;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public viewModelInitializer:Lo/InputEventSender;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;

    const/16 v1, 0x8

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "warningView"

    const-string v5, "getWarningView()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "scrollView"

    const-string v5, "getScrollView()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "planBillingCycleView"

    const-string v5, "getPlanBillingCycleView()Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "planChoiceHeader"

    const-string v5, "getPlanChoiceHeader()Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "planChoiceValuesView"

    const-string v5, "getPlanChoiceValuesView()Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "planSelectionContinueButton"

    const-string v5, "getPlanSelectionContinueButton()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "signupHeading"

    const-string v5, "getSignupHeading()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "textDisclaimer"

    const-string v4, "getTextDisclaimer()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->c:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lo/FrameInfo;-><init>()V

    const-string v0, "planSelection"

    .line 54
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->d:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/netflix/cl/model/AppView;->planSelection:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->e:Lcom/netflix/cl/model/AppView;

    .line 67
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vD:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->j:Lo/ams;

    .line 69
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qO:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->h:Lo/ams;

    .line 71
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mr:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->f:Lo/ams;

    .line 73
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mo:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->i:Lo/ams;

    .line 75
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mw:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->g:Lo/ams;

    .line 77
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mC:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k:Lo/ams;

    .line 79
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rB:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->l:Lo/ams;

    .line 81
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->td:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->m:Lo/ams;

    return-void
.end method

.method private final B()V
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->q()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    const-string v1, "scrollView.viewTreeObserver"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->q()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Application;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Application;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;)V

    check-cast v1, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    return-void
.end method

.method private final C()V
    .locals 2

    .line 119
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->q()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lo/ApplicationLoaders;

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->q()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lo/ApplicationLoaders;

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$TaskDescription;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$TaskDescription;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;)V

    check-cast v1, Lo/ApplicationPackageManager;

    invoke-virtual {v0, v1}, Lo/ApplicationLoaders;->setScrollViewListener(Lo/ApplicationPackageManager;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.amar.library.ui.StickyScrollView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private final E()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 212
    sget-object v0, Lo/fK;->c:Lo/fK$TaskDescription;

    invoke-virtual {v0}, Lo/fK$TaskDescription;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->x()Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->setClickable(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->x()Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->setFocusable(Z)V

    .line 215
    new-instance v0, Lo/DataOutput;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$PendingIntent;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$PendingIntent;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;)V

    check-cast v2, Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Lo/DataOutput;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 224
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->x()Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$ActionBar;

    invoke-direct {v2, v0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$ActionBar;-><init>(Lo/DataOutput;)V

    check-cast v2, Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method private final F()V
    .locals 2

    .line 176
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object v0

    invoke-virtual {v0}, Lo/InputChannel;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->s()Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->setVisibility(I)V

    .line 178
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->s()Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object v1

    invoke-virtual {v1}, Lo/InputChannel;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->selectDefaultBillingCycle(Ljava/lang/String;)V

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->s()Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$initPlanBillingCycleView$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$initPlanBillingCycleView$1;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;)V

    check-cast v1, Lo/alA;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;->setOnPlanBillingCycleChanged(Lo/alA;)V

    return-void
.end method

.method private final G()V
    .locals 5

    .line 191
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->y()Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object v1

    invoke-virtual {v1}, Lo/InputChannel;->o()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object v2

    invoke-virtual {v2}, Lo/InputChannel;->v()Ljava/util/List;

    move-result-object v2

    .line 194
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object v3

    invoke-virtual {v3}, Lo/InputChannel;->y()Ljava/util/List;

    move-result-object v3

    .line 195
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object v4

    invoke-virtual {v4}, Lo/InputChannel;->w()Z

    move-result v4

    .line 191
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->addPlanChoiceHeaderLayout(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    .line 199
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->y()Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$initPlanChoiceHeader$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$initPlanChoiceHeader$1;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;)V

    check-cast v1, Lo/alA;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;->setOnPlanChanged(Lo/alA;)V

    .line 207
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->E()V

    return-void
.end method

.method private final H()V
    .locals 8

    .line 154
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object v0

    invoke-virtual {v0}, Lo/InputChannel;->s()Ljava/util/List;

    move-result-object v2

    .line 155
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->x()Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object v0

    invoke-virtual {v0}, Lo/InputChannel;->w()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->initRows$default(Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;Ljava/util/List;ZLjava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method private final I()V
    .locals 2

    .line 236
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->u()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$StateListAnimator;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$StateListAnimator;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final K()V
    .locals 3

    .line 250
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->x()Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object v1

    invoke-virtual {v1}, Lo/InputChannel;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object v2

    invoke-virtual {v2}, Lo/InputChannel;->y()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;->selectPlan(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->H()V

    return-void
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->c(Ljava/lang/String;)V

    return-void
.end method

.method private final c(Ljava/lang/String;)V
    .locals 5

    .line 145
    sget-object v0, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v1, Lcom/netflix/cl/model/context/GestureInput;

    sget-object v2, Lcom/netflix/cl/model/GestureInputKind;->swipe:Lcom/netflix/cl/model/GestureInputKind;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/context/GestureInput;-><init>(Lcom/netflix/cl/model/GestureInputKind;Ljava/lang/Float;)V

    check-cast v1, Lcom/netflix/cl/model/context/CLContext;

    invoke-virtual {v0, v1}, Lcom/netflix/cl/Logger;->addContext(Lcom/netflix/cl/model/context/CLContext;)J

    move-result-wide v0

    .line 146
    sget-object v2, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "event"

    .line 147
    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "page"

    const-string v4, "plan_selection"

    .line 148
    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 146
    new-instance v3, Lcom/netflix/cl/model/event/discrete/DebugEvent;

    invoke-direct {v3, p1}, Lcom/netflix/cl/model/event/discrete/DebugEvent;-><init>(Lorg/json/JSONObject;)V

    check-cast v3, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;

    invoke-virtual {v2, v3}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    .line 150
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/cl/Logger;->removeContext(Ljava/lang/Long;)Z

    return-void
.end method


# virtual methods
.method public A()V
    .locals 5

    .line 163
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->v()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    .line 164
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object v1

    invoke-virtual {v1}, Lo/InputChannel;->g()Ljava/lang/CharSequence;

    move-result-object v1

    .line 165
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object v2

    invoke-virtual {v2}, Lo/InputChannel;->f()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 166
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object v3

    invoke-virtual {v3}, Lo/InputChannel;->k()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 167
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object v4

    invoke-virtual {v4}, Lo/InputChannel;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 163
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 169
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->v()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->startAlignText()V

    return-void
.end method

.method public final D()V
    .locals 2

    .line 254
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->w()Lo/ImageSwitcher;

    move-result-object v0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 255
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->w()Lo/ImageSwitcher;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object v1

    invoke-virtual {v1}, Lo/InputChannel;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/acquisition/kotlinx/TextViewKt;->setUnderlineStrippedText(Landroid/widget/TextView;Landroid/text/Spannable;)V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.text.Spannable"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->n:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->n:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->n:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->n:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public a()V
    .locals 1

    .line 291
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object v0

    invoke-virtual {v0}, Lo/InputChannel;->e()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->n:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 284
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object v0

    invoke-virtual {v0}, Lo/InputChannel;->j()Lo/Cloneable;

    move-result-object v0

    .line 285
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 286
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_0

    const-string v3, "formDataObserverFactory"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->u()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;)Lo/BulletSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 284
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public d()V
    .locals 5

    .line 277
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object v0

    invoke-virtual {v0}, Lo/InputChannel;->d()Lo/Cloneable;

    move-result-object v0

    .line 278
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 279
    new-instance v2, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Activity;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->p()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->q()Landroid/view/View;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment$Activity;-><init>(Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;Landroid/view/View;)V

    check-cast v2, Lo/ClassFormatError;

    .line 277
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public d(Lo/InputChannel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->a:Lo/InputChannel;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->d:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic j()Lo/Explode;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k()Lo/InputChannel;

    move-result-object v0

    check-cast v0, Lo/Explode;

    return-object v0
.end method

.method public k()Lo/InputChannel;
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->a:Lo/InputChannel;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public l()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->e:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-super {p0, p1}, Lo/FrameInfo;->onAttach(Landroid/content/Context;)V

    .line 85
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->viewModelInitializer:Lo/InputEventSender;

    if-nez p1, :cond_0

    const-string v0, "viewModelInitializer"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Lo/InputEventSender;->c(Landroidx/fragment/app/Fragment;)Lo/InputChannel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->d(Lo/InputChannel;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    sget-object p3, Lo/fK;->c:Lo/fK$TaskDescription;

    invoke-virtual {p3}, Lo/fK$TaskDescription;->b()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 94
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->dD:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 96
    :cond_0
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->dC:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/FrameInfo;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->b()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-super {p0, p1, p2}, Lo/FrameInfo;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 102
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->C()V

    .line 103
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->B()V

    .line 104
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->A()V

    .line 105
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->H()V

    .line 106
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->F()V

    .line 107
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->G()V

    .line 108
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->z()V

    .line 109
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->I()V

    .line 110
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->K()V

    .line 111
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->D()V

    return-void
.end method

.method public final p()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->j:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->c:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method

.method public final q()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->h:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->c:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final r()Lo/RasterizerSpan;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->upgradeOnUsDialogPresenter:Lo/RasterizerSpan;

    if-nez v0, :cond_0

    const-string v1, "upgradeOnUsDialogPresenter"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final s()Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->f:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->c:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/PlanBillingCycleView;

    return-object v0
.end method

.method public final t()Lo/InputEventSender;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->viewModelInitializer:Lo/InputEventSender;

    if-nez v0, :cond_0

    const-string v1, "viewModelInitializer"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final u()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->k:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->c:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    return-object v0
.end method

.method public final v()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->l:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->c:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    return-object v0
.end method

.method public final w()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->m:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->c:[Lo/amT;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method public final x()Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->g:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->c:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/PlanValuesView;

    return-object v0
.end method

.method public final y()Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->i:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->c:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/PlanChoiceHeaderView;

    return-object v0
.end method

.method public final z()V
    .locals 3

    .line 231
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->u()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ag:I

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/acquisition2/screens/planSelection/PlanSelectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.button_continue)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
