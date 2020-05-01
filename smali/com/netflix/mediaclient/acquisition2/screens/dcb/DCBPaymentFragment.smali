.class public final Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;
.super Lo/EventLogTags;
.source ""


# static fields
.field static final synthetic b:[Lo/amT;


# instance fields
.field private final a:Lcom/netflix/cl/model/AppView;

.field public adapterFactory:Lo/VoiceInteractionManagerInternal;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public changePlanViewBindingFactory:Lo/ConditionProviderService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field public e:Lo/FloatMath;

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

.field private final p:Lo/ams;

.field private final q:Lo/ams;

.field private final r:Lo/ams;

.field private s:Lo/VrListenerService;

.field private final t:Lo/ams;

.field public touViewBindingFactory:Lo/ImageSpan;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final u:Lo/ams;

.field private v:Ljava/util/HashMap;

.field public viewModelInitializer:Lo/Half;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;

    const/16 v1, 0xf

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

    const-string v4, "positiveView"

    const-string v5, "getPositiveView()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

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

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "subHeading"

    const-string v5, "getSubHeading()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "subHeading2"

    const-string v5, "getSubHeading2()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "postPaidLabel"

    const-string v5, "getPostPaidLabel()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x6

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

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "changePaymentErrorButton"

    const-string v5, "getChangePaymentErrorButton()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "mopLogosRecyclerView"

    const-string v5, "getMopLogosRecyclerView()Landroidx/recyclerview/widget/RecyclerView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x9

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

    const/16 v3, 0xa

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

    const/16 v3, 0xb

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

    const/16 v3, 0xc

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

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "touView"

    const-string v4, "getTouView()Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/16 v2, 0xe

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->b:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lo/EventLogTags;-><init>()V

    .line 35
    sget-object v0, Lcom/netflix/cl/model/AppView;->paymentDcb:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->a:Lcom/netflix/cl/model/AppView;

    const-string v0, "paymentDcb"

    .line 37
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->d:Ljava/lang/String;

    .line 39
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qO:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->j:Lo/ams;

    .line 40
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vD:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->f:Lo/ams;

    .line 41
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nl:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->g:Lo/ams;

    .line 42
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rB:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->i:Lo/ams;

    .line 43
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sB:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->h:Lo/ams;

    .line 44
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sE:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->m:Lo/ams;

    .line 45
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->np:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->l:Lo/ams;

    .line 46
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->lY:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->o:Lo/ams;

    .line 47
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cd:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->n:Lo/ams;

    .line 48
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kK:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->k:Lo/ams;

    .line 49
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ca:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->q:Lo/ams;

    .line 50
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cY:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->p:Lo/ams;

    .line 51
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mu:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->t:Lo/ams;

    .line 55
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cc:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->r:Lo/ams;

    .line 57
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->tR:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->u:Lo/ams;

    return-void
.end method

.method private final A()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->p:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->b:[Lo/amT;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    return-object v0
.end method

.method private final B()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->q:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->b:[Lo/amT;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final C()Landroidx/recyclerview/widget/RecyclerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->k:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->b:[Lo/amT;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method private final D()Lo/SpellCheckSpan;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->t:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->b:[Lo/amT;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SpellCheckSpan;

    return-object v0
.end method

.method private final E()V
    .locals 2

    .line 150
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->k()Lo/FloatMath;

    move-result-object v0

    invoke-virtual {v0}, Lo/FloatMath;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->v()Lo/ImageSwitcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private final F()V
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->adapterFactory:Lo/VoiceInteractionManagerInternal;

    if-nez v0, :cond_0

    const-string v1, "adapterFactory"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->k()Lo/FloatMath;

    move-result-object v1

    invoke-virtual {v1}, Lo/FloatMath;->s()Ljava/util/List;

    move-result-object v1

    .line 112
    move-object v2, p0

    check-cast v2, Lo/RecognizerIntent;

    .line 113
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v3

    const-string v4, "viewLifecycleOwner"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 110
    invoke-virtual {v0, v1, v2, v3, v4}, Lo/VoiceInteractionManagerInternal;->c(Ljava/util/List;Lo/RecognizerIntent;Lo/UnicodeScript;Z)Lo/VrListenerService;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lo/VrListenerService;->c()V

    .line 117
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->x()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 118
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->t()Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/acquisition/view/TermsAndConsentsComponent;

    invoke-virtual {v0, v1}, Lo/VrListenerService;->a(Lcom/netflix/mediaclient/acquisition/view/TermsAndConsentsComponent;)V

    .line 120
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->s:Lo/VrListenerService;

    return-void
.end method

.method private final G()V
    .locals 2

    .line 105
    new-instance v0, Lo/ImageSpan;

    invoke-direct {v0}, Lo/ImageSpan;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->t()Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ImageSpan;->e(Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;)Lo/EasyEditSpan;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->k()Lo/FloatMath;

    move-result-object v1

    invoke-virtual {v1}, Lo/FloatMath;->v()Lo/LocaleSpan;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/EasyEditSpan;->b(Lo/LocaleSpan;)V

    return-void
.end method

.method private final H()V
    .locals 2

    .line 140
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->q()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->k()Lo/FloatMath;

    move-result-object v1

    invoke-virtual {v1}, Lo/FloatMath;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setStepLabelString(Ljava/lang/CharSequence;)V

    .line 141
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->q()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->k()Lo/FloatMath;

    move-result-object v1

    invoke-virtual {v1}, Lo/FloatMath;->j()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setHeadingString(Ljava/lang/CharSequence;)V

    .line 142
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->q()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->k()Lo/FloatMath;

    move-result-object v1

    invoke-virtual {v1}, Lo/FloatMath;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setSubHeadingStrings(Ljava/util/List;)V

    .line 144
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->w()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->k()Lo/FloatMath;

    move-result-object v1

    invoke-virtual {v1}, Lo/FloatMath;->f()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->y()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->k()Lo/FloatMath;

    move-result-object v1

    invoke-virtual {v1}, Lo/FloatMath;->o()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->q()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->startAlignText()V

    return-void
.end method

.method private final I()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->changePlanViewBindingFactory:Lo/ConditionProviderService;

    if-nez v0, :cond_0

    const-string v1, "changePlanViewBindingFactory"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->p()Lo/NotificationAssistantService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ConditionProviderService;->c(Lo/NotificationAssistantService;)Lo/NotificationListenerService;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->k()Lo/FloatMath;

    move-result-object v1

    invoke-virtual {v1}, Lo/FloatMath;->t()Lo/NotificationStats;

    move-result-object v1

    .line 135
    new-instance v2, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment$Activity;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment$Activity;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    .line 133
    invoke-virtual {v0, v1, v2}, Lo/NotificationListenerService;->e(Lo/NotificationStats;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final J()V
    .locals 3

    .line 156
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->k()Lo/FloatMath;

    move-result-object v0

    invoke-virtual {v0}, Lo/FloatMath;->n()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    new-instance v1, Lcom/netflix/mediaclient/acquisition/adapters/MopLogosAdapter;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/acquisition/adapters/MopLogosAdapter;-><init>(Ljava/util/List;)V

    .line 158
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->C()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 159
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->C()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    :cond_0
    return-void
.end method

.method private final K()V
    .locals 3

    .line 201
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->A()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->k()Lo/FloatMath;

    move-result-object v1

    invoke-virtual {v1}, Lo/FloatMath;->x()Lo/AlignmentSpan;

    move-result-object v1

    invoke-virtual {v1}, Lo/AlignmentSpan;->b()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setText(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->k()Lo/FloatMath;

    move-result-object v0

    invoke-virtual {v0}, Lo/FloatMath;->x()Lo/AlignmentSpan;

    move-result-object v0

    invoke-virtual {v0}, Lo/AlignmentSpan;->c()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->k()Lo/FloatMath;

    move-result-object v1

    invoke-virtual {v1}, Lo/FloatMath;->x()Lo/AlignmentSpan;

    move-result-object v1

    invoke-virtual {v1}, Lo/AlignmentSpan;->e()Ljava/lang/String;

    move-result-object v1

    .line 206
    new-instance v2, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment$initCtaButton$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment$initCtaButton$1;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;)V

    check-cast v2, Lo/alN;

    .line 203
    invoke-static {v0, v1, v2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    .line 210
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->A()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment$StateListAnimator;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment$StateListAnimator;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final L()V
    .locals 3

    .line 175
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->D()Lo/SpellCheckSpan;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->k()Lo/FloatMath;

    move-result-object v1

    invoke-virtual {v1}, Lo/FloatMath;->w()Lo/RelativeSizeSpan;

    move-result-object v1

    .line 177
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->k()Lo/FloatMath;

    move-result-object v2

    invoke-virtual {v2}, Lo/FloatMath;->q()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-virtual {v0, v1, v2}, Lo/SpellCheckSpan;->a(Lo/RelativeSizeSpan;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->D()Lo/SpellCheckSpan;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/SpellCheckSpan;->setVisibility(I)V

    .line 181
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->D()Lo/SpellCheckSpan;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment$TaskDescription;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment$TaskDescription;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/SpellCheckSpan;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->p()Lo/NotificationAssistantService;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/NotificationAssistantService;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private final M()V
    .locals 2

    .line 164
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->k()Lo/FloatMath;

    move-result-object v0

    invoke-virtual {v0}, Lo/FloatMath;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->B()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->B()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment$ActionBar;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment$ActionBar;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->B()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final N()V
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->k()Lo/FloatMath;

    move-result-object v0

    invoke-virtual {v0}, Lo/FloatMath;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->u()Lo/ImageSwitcher;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment$Application;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment$Application;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->u()Lo/ImageSwitcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    goto :goto_0

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->u()Lo/ImageSwitcher;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static final synthetic d(Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;)Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->A()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object p0

    return-object p0
.end method

.method private final q()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->i:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->b:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    return-object v0
.end method

.method private final r()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->j:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->b:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final s()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->f:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->b:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method

.method private final u()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->n:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->b:[Lo/amT;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final v()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->l:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->b:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final w()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->h:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->b:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final x()Landroidx/recyclerview/widget/RecyclerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->o:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->b:[Lo/amT;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method private final y()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->m:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->b:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final z()V
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->o()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->k()Lo/FloatMath;

    move-result-object v1

    invoke-virtual {v1}, Lo/FloatMath;->u()Lo/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v1}, Lo/DigitsKeyListener;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->v:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->v:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->v:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->v:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public a(Lo/FloatMath;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->e:Lo/FloatMath;

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->v:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 223
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->k()Lo/FloatMath;

    move-result-object v0

    invoke-virtual {v0}, Lo/FloatMath;->p()Lo/Cloneable;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 225
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_0

    const-string v3, "formDataObserverFactory"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->A()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;)Lo/BulletSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 223
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public d()V
    .locals 5

    .line 216
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->k()Lo/FloatMath;

    move-result-object v0

    invoke-virtual {v0}, Lo/FloatMath;->d()Lo/Cloneable;

    move-result-object v0

    .line 217
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 218
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_0

    const-string v3, "formDataObserverFactory"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->s()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v3

    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->r()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;Landroid/view/View;)Lo/AccessibilityClickableSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 216
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 124
    invoke-super {p0}, Lo/EventLogTags;->e()V

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->s:Lo/VrListenerService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/VrListenerService;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->k()Lo/FloatMath;

    move-result-object v0

    invoke-virtual {v0}, Lo/FloatMath;->e()V

    :cond_0
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->d:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic j()Lo/Explode;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->k()Lo/FloatMath;

    move-result-object v0

    check-cast v0, Lo/Explode;

    return-object v0
.end method

.method public k()Lo/FloatMath;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->e:Lo/FloatMath;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public l()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->a:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public final o()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->g:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->b:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-super {p0, p1}, Lo/EventLogTags;->onAttach(Landroid/content/Context;)V

    .line 73
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->viewModelInitializer:Lo/Half;

    if-nez p1, :cond_0

    const-string v0, "viewModelInitializer"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Lo/Half;->e(Landroidx/fragment/app/Fragment;)Lo/FloatMath;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->a(Lo/FloatMath;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->dp:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/EventLogTags;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->b()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-super {p0, p1, p2}, Lo/EventLogTags;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 86
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->H()V

    .line 87
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->F()V

    .line 88
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->I()V

    .line 89
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->J()V

    .line 90
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->E()V

    .line 91
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->K()V

    .line 92
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->M()V

    .line 93
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->z()V

    .line 94
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->L()V

    .line 95
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->G()V

    .line 96
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->N()V

    .line 97
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->touViewBindingFactory:Lo/ImageSpan;

    if-nez p1, :cond_0

    const-string p2, "touViewBindingFactory"

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->t()Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/ImageSpan;->e(Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;)Lo/EasyEditSpan;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->k()Lo/FloatMath;

    move-result-object p2

    invoke-virtual {p2}, Lo/FloatMath;->v()Lo/LocaleSpan;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/EasyEditSpan;->b(Lo/LocaleSpan;)V

    return-void
.end method

.method public final p()Lo/NotificationAssistantService;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->r:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->b:[Lo/amT;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/NotificationAssistantService;

    return-object v0
.end method

.method public final t()Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->u:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/dcb/DCBPaymentFragment;->b:[Lo/amT;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    return-object v0
.end method
