.class public abstract Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;
.super Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;
.source ""


# static fields
.field static final synthetic b:[Lo/amT;


# instance fields
.field public a:Lo/MathUtils;

.field public adapterFactory:Lo/VoiceInteractionManagerInternal;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private c:Lo/VrListenerService;

.field public changePlanViewBindingFactory:Lo/ConditionProviderService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final d:Lcom/netflix/cl/model/AppView;

.field private final e:Ljava/lang/String;

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

.field private final n:Lo/ams;

.field private final o:Lo/ams;

.field private t:Ljava/util/HashMap;

.field public touViewBindingFactory:Lo/ImageSpan;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public viewModelInitializer:Lo/MonthDisplayHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;

    const/16 v1, 0xa

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

    const-string v4, "userMessage"

    const-string v5, "getUserMessage()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "touView"

    const-string v5, "getTouView()Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "paymentForm"

    const-string v5, "getPaymentForm()Landroidx/recyclerview/widget/RecyclerView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "directDebitButton"

    const-string v5, "getDirectDebitButton()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x5

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

    const/4 v3, 0x6

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

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "changePaymentButton"

    const-string v5, "getChangePaymentButton()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "positiveView"

    const-string v4, "getPositiveView()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/16 v2, 0x9

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->b:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;-><init>()V

    .line 30
    sget-object v0, Lcom/netflix/cl/model/AppView;->paymentDirectDebit:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->d:Lcom/netflix/cl/model/AppView;

    const-string v0, "paymentDirectDebit"

    .line 34
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->e:Ljava/lang/String;

    .line 50
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qO:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->j:Lo/ams;

    .line 52
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vD:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->f:Lo/ams;

    .line 54
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->un:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->h:Lo/ams;

    .line 56
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->tR:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->g:Lo/ams;

    .line 58
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->lY:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->i:Lo/ams;

    .line 60
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->eU:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->o:Lo/ams;

    .line 62
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rB:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->n:Lo/ams;

    .line 64
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cc:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->m:Lo/ams;

    .line 66
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ca:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->k:Lo/ams;

    .line 67
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nl:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->l:Lo/ams;

    return-void
.end method

.method private final A()V
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->q()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->s()Lo/MathUtils;

    move-result-object v1

    invoke-virtual {v1}, Lo/MathUtils;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private final B()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->changePlanViewBindingFactory:Lo/ConditionProviderService;

    if-nez v0, :cond_0

    const-string v1, "changePlanViewBindingFactory"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->y()Lo/NotificationAssistantService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ConditionProviderService;->c(Lo/NotificationAssistantService;)Lo/NotificationListenerService;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->s()Lo/MathUtils;

    move-result-object v1

    invoke-virtual {v1}, Lo/MathUtils;->x()Lo/NotificationStats;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment$Application;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment$Application;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lo/NotificationListenerService;->e(Lo/NotificationStats;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final C()V
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->w()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->s()Lo/MathUtils;

    move-result-object v1

    invoke-virtual {v1}, Lo/MathUtils;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private final D()V
    .locals 5

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->adapterFactory:Lo/VoiceInteractionManagerInternal;

    if-nez v0, :cond_0

    const-string v1, "adapterFactory"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->s()Lo/MathUtils;

    move-result-object v1

    invoke-virtual {v1}, Lo/MathUtils;->z()Ljava/util/List;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lo/RecognizerIntent;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v3

    const-string v4, "viewLifecycleOwner"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/VoiceInteractionManagerInternal;->c(Ljava/util/List;Lo/RecognizerIntent;Lo/UnicodeScript;Z)Lo/VrListenerService;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lo/VrListenerService;->c()V

    .line 103
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 104
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->c:Lo/VrListenerService;

    return-void
.end method

.method private final G()V
    .locals 2

    .line 130
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->s()Lo/MathUtils;

    move-result-object v0

    invoke-virtual {v0}, Lo/MathUtils;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->u()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->u()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment$Activity;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment$Activity;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->u()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final I()V
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->v()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment$TaskDescription;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment$TaskDescription;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final a()Landroidx/recyclerview/widget/RecyclerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->i:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->b:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method private final k()V
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->v()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->s()Lo/MathUtils;

    move-result-object v1

    invoke-virtual {v1}, Lo/MathUtils;->p()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final m()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->n:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->b:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    return-object v0
.end method

.method private final z()V
    .locals 2

    .line 108
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->m()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->s()Lo/MathUtils;

    move-result-object v1

    invoke-virtual {v1}, Lo/MathUtils;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setStepLabelString(Ljava/lang/CharSequence;)V

    .line 109
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->m()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->s()Lo/MathUtils;

    move-result-object v1

    invoke-virtual {v1}, Lo/MathUtils;->e()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setHeadingString(Ljava/lang/CharSequence;)V

    .line 110
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->m()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->s()Lo/MathUtils;

    move-result-object v1

    invoke-virtual {v1}, Lo/MathUtils;->g()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setSubHeadingStrings(Ljava/util/List;)V

    .line 111
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->m()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->startAlignText()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->t:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->t:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->t:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->t:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->t:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public b(Lo/MathUtils;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->a:Lo/MathUtils;

    return-void
.end method

.method public c()V
    .locals 4

    .line 161
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->s()Lo/MathUtils;

    move-result-object v0

    invoke-virtual {v0}, Lo/MathUtils;->m()Lo/Cloneable;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 163
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_0

    const-string v3, "formDataObserverFactory"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->v()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;)Lo/BulletSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 161
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public d()V
    .locals 5

    .line 154
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->s()Lo/MathUtils;

    move-result-object v0

    invoke-virtual {v0}, Lo/MathUtils;->d()Lo/Cloneable;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 156
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_0

    const-string v3, "formDataObserverFactory"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->p()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->r()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;Landroid/view/View;)Lo/AccessibilityClickableSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 154
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 147
    invoke-super {p0}, Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;->e()V

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->c:Lo/VrListenerService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/VrListenerService;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->s()Lo/MathUtils;

    move-result-object v0

    invoke-virtual {v0}, Lo/MathUtils;->j()V

    :cond_0
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->e:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic j()Lo/Explode;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->s()Lo/MathUtils;

    move-result-object v0

    check-cast v0, Lo/Explode;

    return-object v0
.end method

.method public l()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->d:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public n()V
    .locals 2

    .line 119
    new-instance v0, Lo/ImageSpan;

    invoke-direct {v0}, Lo/ImageSpan;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->x()Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ImageSpan;->e(Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;)Lo/EasyEditSpan;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->s()Lo/MathUtils;

    move-result-object v1

    invoke-virtual {v1}, Lo/MathUtils;->w()Lo/LocaleSpan;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/EasyEditSpan;->b(Lo/LocaleSpan;)V

    .line 121
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->s()Lo/MathUtils;

    move-result-object v0

    invoke-virtual {v0}, Lo/MathUtils;->r()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->x()Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public abstract o()Lo/MathUtils;
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;->onAttach(Landroid/content/Context;)V

    .line 71
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->o()Lo/MathUtils;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->b(Lo/MathUtils;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->af:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->b()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 81
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->k()V

    .line 82
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->I()V

    .line 83
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->A()V

    .line 84
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->z()V

    .line 85
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->n()V

    .line 86
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->B()V

    .line 87
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->G()V

    .line 88
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->D()V

    .line 89
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->C()V

    return-void
.end method

.method public final p()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->f:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->b:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method

.method public final q()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->h:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->b:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method

.method public final r()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->j:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->b:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public s()Lo/MathUtils;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->a:Lo/MathUtils;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final t()Lo/MonthDisplayHelper;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->viewModelInitializer:Lo/MonthDisplayHelper;

    if-nez v0, :cond_0

    const-string v1, "viewModelInitializer"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final u()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->k:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->b:[Lo/amT;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final v()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->o:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->b:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    return-object v0
.end method

.method public final w()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->l:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->b:[Lo/amT;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method

.method public final x()Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->g:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->b:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    return-object v0
.end method

.method public final y()Lo/NotificationAssistantService;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->m:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/directDebit/DirectDebitFragment;->b:[Lo/amT;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/NotificationAssistantService;

    return-object v0
.end method
