.class public final Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;
.super Lo/DisplayListCanvas;
.source ""


# static fields
.field static final synthetic d:[Lo/amT;


# instance fields
.field private final a:Ljava/lang/String;

.field public adapterFactory:Lo/VoiceInteractionManagerInternal;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Lo/FrameMetricsObserver;

.field public changePlanViewBindingFactory:Lo/ConditionProviderService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

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

.field private final m:Lo/ams;

.field private n:Ljava/util/HashMap;

.field private final o:Lo/ams;

.field public signupLogger:Lo/TextClassificationManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public viewModelInitializer:Lo/FocusFinderHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;

    const/16 v1, 0x8

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "scrollView"

    const-string v5, "getScrollView()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "warningView"

    const-string v5, "getWarningView()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "description"

    const-string v5, "getDescription()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "ctaButton"

    const-string v5, "getCtaButton()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "header"

    const-string v5, "getHeader()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "changePlanView"

    const-string v5, "getChangePlanView()Lcom/netflix/mediaclient/acquisition2/components/changePlan/ChangePlanView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "upgradePlanDetailsView"

    const-string v5, "getUpgradePlanDetailsView()Lcom/netflix/mediaclient/acquisition2/components/upgradeOnUs/UpgradePlanDetailsView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "changePaymentButton"

    const-string v4, "getChangePaymentButton()Landroid/view/View;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->d:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lo/DisplayListCanvas;-><init>()V

    .line 35
    sget-object v0, Lcom/netflix/cl/model/AppView;->paymentPaypal:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->e:Lcom/netflix/cl/model/AppView;

    const-string v0, "paymentGiftCard"

    .line 38
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->a:Ljava/lang/String;

    .line 52
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qO:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->j:Lo/ams;

    .line 54
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vD:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->i:Lo/ams;

    .line 55
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ee:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->h:Lo/ams;

    .line 57
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cY:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->g:Lo/ams;

    .line 58
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rB:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->f:Lo/ams;

    .line 60
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cc:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->m:Lo/ams;

    .line 62
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mu:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->o:Lo/ams;

    .line 63
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ca:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->k:Lo/ams;

    return-void
.end method

.method private final B()V
    .locals 3

    .line 108
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->y()Lo/SpellCheckSpan;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->n()Lo/FrameMetricsObserver;

    move-result-object v1

    invoke-virtual {v1}, Lo/FrameMetricsObserver;->m()Lo/RelativeSizeSpan;

    move-result-object v1

    .line 110
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->n()Lo/FrameMetricsObserver;

    move-result-object v2

    invoke-virtual {v2}, Lo/FrameMetricsObserver;->h()Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-virtual {v0, v1, v2}, Lo/SpellCheckSpan;->a(Lo/RelativeSizeSpan;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->y()Lo/SpellCheckSpan;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/SpellCheckSpan;->setVisibility(I)V

    .line 115
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->y()Lo/SpellCheckSpan;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment$Activity;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment$Activity;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/SpellCheckSpan;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->q()Lo/NotificationAssistantService;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/NotificationAssistantService;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private final C()V
    .locals 3

    .line 123
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->q()Lo/NotificationAssistantService;

    move-result-object v0

    invoke-virtual {v0}, Lo/NotificationAssistantService;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->changePlanViewBindingFactory:Lo/ConditionProviderService;

    if-nez v0, :cond_0

    const-string v1, "changePlanViewBindingFactory"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->q()Lo/NotificationAssistantService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ConditionProviderService;->c(Lo/NotificationAssistantService;)Lo/NotificationListenerService;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->n()Lo/FrameMetricsObserver;

    move-result-object v1

    invoke-virtual {v1}, Lo/FrameMetricsObserver;->k()Lo/NotificationStats;

    move-result-object v1

    .line 127
    new-instance v2, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment$Application;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment$Application;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    .line 125
    invoke-virtual {v0, v1, v2}, Lo/NotificationListenerService;->e(Lo/NotificationStats;Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private final p()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->h:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->d:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final u()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->k:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->d:[Lo/amT;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final v()V
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->n()Lo/FrameMetricsObserver;

    move-result-object v0

    invoke-virtual {v0}, Lo/FrameMetricsObserver;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->u()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->u()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment$ActionBar;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment$ActionBar;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->u()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final w()V
    .locals 9

    .line 95
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->x()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->n()Lo/FrameMetricsObserver;

    move-result-object v1

    invoke-virtual {v1}, Lo/FrameMetricsObserver;->j()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setStepLabelString(Ljava/lang/CharSequence;)V

    .line 96
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->x()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->startAlignText()V

    .line 97
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->p()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->n()Lo/FrameMetricsObserver;

    move-result-object v1

    invoke-virtual {v1}, Lo/FrameMetricsObserver;->l()Landroid/text/Spanned;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->t()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v1

    const/4 v2, 0x0

    .line 101
    sget v3, Lcom/netflix/mediaclient/ui/R$Activity;->cr:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v0, 0x16

    const/4 v6, 0x1

    int-to-float v0, v0

    .line 156
    sget-object v7, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 157
    const-class v7, Landroid/content/Context;

    invoke-static {v7}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "Lookup.get<Context>().resources"

    invoke-static {v7, v8}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 156
    invoke-static {v6, v0, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0xd

    const/4 v8, 0x0

    .line 100
    invoke-static/range {v1 .. v8}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setDrawable$default(Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final x()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->f:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->d:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    return-object v0
.end method

.method private final y()Lo/SpellCheckSpan;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->o:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->d:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SpellCheckSpan;

    return-object v0
.end method

.method private final z()V
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->t()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment$StateListAnimator;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment$StateListAnimator;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->n:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->n:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->n:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->n:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->n:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 149
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->n()Lo/FrameMetricsObserver;

    move-result-object v0

    invoke-virtual {v0}, Lo/FrameMetricsObserver;->o()Lo/Cloneable;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 151
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_0

    const-string v3, "formDataObserverFactory"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->t()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;)Lo/BulletSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 149
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public d()V
    .locals 5

    .line 142
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->n()Lo/FrameMetricsObserver;

    move-result-object v0

    invoke-virtual {v0}, Lo/FrameMetricsObserver;->d()Lo/Cloneable;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 144
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_0

    const-string v3, "formDataObserverFactory"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->s()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->o()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;Landroid/view/View;)Lo/AccessibilityClickableSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 142
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public e(Lo/FrameMetricsObserver;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->b:Lo/FrameMetricsObserver;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic j()Lo/Explode;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->n()Lo/FrameMetricsObserver;

    move-result-object v0

    check-cast v0, Lo/Explode;

    return-object v0
.end method

.method public l()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->e:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public n()Lo/FrameMetricsObserver;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->b:Lo/FrameMetricsObserver;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final o()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->j:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->d:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-super {p0, p1}, Lo/DisplayListCanvas;->onAttach(Landroid/content/Context;)V

    .line 67
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->viewModelInitializer:Lo/FocusFinderHelper;

    if-nez p1, :cond_0

    const-string v0, "viewModelInitializer"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Lo/FocusFinderHelper;->e(Landroidx/fragment/app/Fragment;)Lo/FrameMetricsObserver;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->e(Lo/FrameMetricsObserver;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->dr:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/DisplayListCanvas;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->b()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-super {p0, p1, p2}, Lo/DisplayListCanvas;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 76
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->z()V

    .line 77
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->w()V

    .line 78
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->C()V

    .line 79
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->v()V

    .line 80
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->B()V

    return-void
.end method

.method public final q()Lo/NotificationAssistantService;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->m:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->d:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/NotificationAssistantService;

    return-object v0
.end method

.method public final r()V
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->n()Lo/FrameMetricsObserver;

    move-result-object v0

    invoke-virtual {v0}, Lo/FrameMetricsObserver;->e()V

    return-void
.end method

.method public final s()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->i:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->d:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method

.method public final t()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->g:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/paypal/PayPalFragment;->d:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    return-object v0
.end method
