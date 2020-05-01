.class public abstract Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;
.super Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;
    }
.end annotation


# static fields
.field static final synthetic b:[Lo/amT;


# instance fields
.field public a:Lo/Base64;

.field public adapterFactory:Lo/VoiceInteractionManagerInternal;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final c:Lo/ams;

.field public changePlanViewBindingFactory:Lo/ConditionProviderService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final d:Lo/ams;

.field private e:Lo/VrListenerService;

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

.field public koreaCheckboxesViewBindingFactory:Lo/TextKeyListener;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final l:Lo/ams;

.field private final m:Lo/ams;

.field private final n:Lo/ams;

.field private final o:Lo/ams;

.field private q:Ljava/util/HashMap;

.field private final r:Lo/ams;

.field public serviceManagerRunner:Lo/SpellCheckerSubtype;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final t:Lo/ams;

.field public touViewBindingFactory:Lo/ImageSpan;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public viewModelInitializer:Lo/ContainerHelpers;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;

    const/16 v1, 0xe

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "submitButton"

    const-string v5, "getSubmitButton()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

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

    const/4 v3, 0x1

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

    const/4 v3, 0x2

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

    const/4 v3, 0x3

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

    const/4 v3, 0x4

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

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "creditForm"

    const-string v5, "getCreditForm()Landroidx/recyclerview/widget/RecyclerView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x6

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

    move-result-object v3

    const-string v4, "mopLogosMultiLineLayout"

    const-string v5, "getMopLogosMultiLineLayout()Lcom/netflix/mediaclient/acquisition/view/MopLogosMultiLineLayout;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x9

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

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "koreaCheckboxes"

    const-string v5, "getKoreaCheckboxes()Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/KoreaCheckboxesView;"

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

    move-result-object v0

    const-string v3, "webView"

    const-string v4, "getWebView()Landroid/webkit/WebView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/16 v2, 0xd

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->b:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;-><init>()V

    .line 64
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sI:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->d:Lo/ams;

    .line 66
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rB:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->c:Lo/ams;

    .line 68
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cc:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->h:Lo/ams;

    .line 70
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qO:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->i:Lo/ams;

    .line 72
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vD:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->j:Lo/ams;

    .line 74
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nl:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->g:Lo/ams;

    .line 76
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cX:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->f:Lo/ams;

    .line 78
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->tR:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->m:Lo/ams;

    .line 80
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ca:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o:Lo/ams;

    .line 82
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kL:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->n:Lo/ams;

    .line 84
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->un:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->l:Lo/ams;

    .line 86
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ja:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->k:Lo/ams;

    .line 88
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mu:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->r:Lo/ams;

    .line 90
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vJ:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->t:Lo/ams;

    return-void
.end method

.method private final E()V
    .locals 2

    .line 166
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v0

    invoke-virtual {v0}, Lo/Base64;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->y()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->y()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$StateListAnimator;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$StateListAnimator;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->y()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final F()V
    .locals 2

    .line 182
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->s()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$TaskDescription;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$TaskDescription;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final G()V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->changePlanViewBindingFactory:Lo/ConditionProviderService;

    if-nez v0, :cond_0

    const-string v1, "changePlanViewBindingFactory"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->r()Lo/NotificationAssistantService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ConditionProviderService;->c(Lo/NotificationAssistantService;)Lo/NotificationListenerService;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v1

    invoke-virtual {v1}, Lo/Base64;->F()Lo/NotificationStats;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$Application;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$Application;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lo/NotificationListenerService;->e(Lo/NotificationStats;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final H()V
    .locals 3

    .line 155
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->getActivity()Lo/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v1

    invoke-virtual {v1}, Lo/Base64;->t()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initMopLogos$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initMopLogos$1;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;)V

    check-cast v2, Lo/alN;

    invoke-static {v0, v1, v2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    return-void
.end method

.method private final I()V
    .locals 3

    .line 188
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->M()V

    .line 190
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->s()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v1

    invoke-virtual {v1}, Lo/Base64;->N()Lo/AlignmentSpan;

    move-result-object v1

    invoke-virtual {v1}, Lo/AlignmentSpan;->b()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v0

    invoke-virtual {v0}, Lo/Base64;->N()Lo/AlignmentSpan;

    move-result-object v0

    invoke-virtual {v0}, Lo/AlignmentSpan;->c()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v1

    invoke-virtual {v1}, Lo/Base64;->N()Lo/AlignmentSpan;

    move-result-object v1

    invoke-virtual {v1}, Lo/AlignmentSpan;->e()Ljava/lang/String;

    move-result-object v1

    .line 195
    new-instance v2, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initPageText$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$initPageText$1;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;)V

    check-cast v2, Lo/alN;

    .line 192
    invoke-static {v0, v1, v2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    return-void
.end method

.method private final J()V
    .locals 2

    .line 208
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v0

    invoke-virtual {v0}, Lo/Base64;->H()Lo/RelativeSizeSpan;

    move-result-object v0

    invoke-virtual {v0}, Lo/RelativeSizeSpan;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->A()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v1

    invoke-virtual {v1}, Lo/Base64;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setText(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "it"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->A()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v1

    invoke-virtual {v1}, Lo/Base64;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setText(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final K()V
    .locals 2

    .line 222
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->x()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v1

    invoke-virtual {v1}, Lo/Base64;->M()Lo/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v1}, Lo/DigitsKeyListener;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private final L()V
    .locals 3

    .line 240
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v0

    invoke-virtual {v0}, Lo/Base64;->a()Z

    move-result v0

    .line 241
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v1

    invoke-virtual {v1}, Lo/Base64;->E()Lo/Base64OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lo/Base64OutputStream;->d()Z

    move-result v1

    .line 242
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v2

    invoke-virtual {v2}, Lo/Base64;->A()Z

    move-result v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->e:Lo/VrListenerService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/VrListenerService;->d()Z

    :cond_0
    return-void
.end method

.method private final M()V
    .locals 2

    .line 201
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->q()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v1

    invoke-virtual {v1}, Lo/Base64;->n()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setStepLabelString(Ljava/lang/CharSequence;)V

    .line 202
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->q()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v1

    invoke-virtual {v1}, Lo/Base64;->x()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setHeadingString(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->q()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v1

    invoke-virtual {v1}, Lo/Base64;->G()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setSubHeadingStrings(Ljava/util/List;)V

    .line 204
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->q()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->startAlignText()V

    return-void
.end method

.method private final N()V
    .locals 3

    .line 226
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->z()Lo/SpellCheckSpan;

    move-result-object v0

    .line 227
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v1

    invoke-virtual {v1}, Lo/Base64;->H()Lo/RelativeSizeSpan;

    move-result-object v1

    .line 228
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v2

    invoke-virtual {v2}, Lo/Base64;->E()Lo/Base64OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Lo/Base64OutputStream;->r()Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-virtual {v0, v1, v2}, Lo/SpellCheckSpan;->a(Lo/RelativeSizeSpan;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->z()Lo/SpellCheckSpan;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/SpellCheckSpan;->setVisibility(I)V

    .line 232
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->z()Lo/SpellCheckSpan;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$LoaderManager;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$LoaderManager;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/SpellCheckSpan;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->r()Lo/NotificationAssistantService;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/NotificationAssistantService;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private final O()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->koreaCheckboxesViewBindingFactory:Lo/TextKeyListener;

    if-nez v0, :cond_0

    const-string v1, "koreaCheckboxesViewBindingFactory"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->D()Lo/QwertyKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/TextKeyListener;->e(Lo/QwertyKeyListener;)Lo/LinkMovementMethod;

    move-result-object v0

    .line 250
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v1

    invoke-virtual {v1}, Lo/Base64;->K()Lo/SingleLineTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/LinkMovementMethod;->c(Lo/SingleLineTransformationMethod;)V

    return-void
.end method

.method private final P()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->touViewBindingFactory:Lo/ImageSpan;

    if-nez v0, :cond_0

    const-string v1, "touViewBindingFactory"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->w()Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ImageSpan;->e(Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;)Lo/EasyEditSpan;

    move-result-object v0

    .line 274
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v1

    invoke-virtual {v1}, Lo/Base64;->I()Lo/LocaleSpan;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/EasyEditSpan;->b(Lo/LocaleSpan;)V

    return-void
.end method

.method private final Q()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->serviceManagerRunner:Lo/SpellCheckerSubtype;

    if-nez v0, :cond_0

    const-string v1, "serviceManagerRunner"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$Activity;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$Activity;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;)V

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;

    invoke-interface {v0, v1}, Lo/SpellCheckerSubtype;->runWhenManagerIsReady(Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;)V

    return-void
.end method

.method private final R()Lcom/netflix/mediaclient/acquisition/view/TermsAndConsentsComponent;
    .locals 1

    .line 278
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v0

    invoke-virtual {v0}, Lo/Base64;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->D()Lo/QwertyKeyListener;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->w()Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/TermsAndConsentsComponent;

    return-object v0
.end method

.method private final S()V
    .locals 1

    .line 254
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v0

    invoke-virtual {v0}, Lo/Base64;->s()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->Q()V

    return-void
.end method

.method private final T()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lo/VrListenerService$Activity;",
            ">;"
        }
    .end annotation

    .line 303
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->C()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v2

    invoke-virtual {v2}, Lo/Base64;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v3

    invoke-virtual {v3}, Lo/Base64;->z()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$ActionBar;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    .line 306
    sget-object v2, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {v2}, Lo/EventLogger;->b()Lo/FontConfig;

    move-result-object v2

    invoke-virtual {v2}, Lo/FontConfig;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v0}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 307
    sget-object v2, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {v2}, Lo/EventLogger;->d()Lo/FontConfig;

    move-result-object v2

    invoke-virtual {v2}, Lo/FontConfig;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v0}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 305
    invoke-static {v1}, Lo/akI;->c([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private final a()V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->m()V

    .line 122
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->k()V

    .line 123
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->H()V

    .line 124
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->E()V

    .line 125
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->G()V

    .line 126
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->F()V

    .line 127
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->I()V

    .line 128
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->J()V

    .line 129
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->K()V

    .line 130
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->N()V

    .line 131
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->L()V

    .line 132
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->S()V

    return-void
.end method

.method private final d(Landroid/content/Context;)V
    .locals 2

    .line 217
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->A()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setSignupBannerInfoBlue(Landroid/content/Context;)V

    .line 218
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->A()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->da:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final k()V
    .locals 2

    .line 145
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v0

    invoke-virtual {v0}, Lo/Base64;->u()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->O()V

    .line 147
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->w()Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->setVisibility(I)V

    goto :goto_0

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->P()V

    .line 150
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->D()Lo/QwertyKeyListener;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/QwertyKeyListener;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final m()V
    .locals 6

    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->adapterFactory:Lo/VoiceInteractionManagerInternal;

    if-nez v0, :cond_0

    const-string v1, "adapterFactory"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v1

    invoke-virtual {v1}, Lo/Base64;->L()Ljava/util/List;

    move-result-object v1

    .line 137
    move-object v2, p0

    check-cast v2, Lo/RecognizerIntent;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v3

    const-string v4, "viewLifecycleOwner"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v4

    invoke-virtual {v4}, Lo/Base64;->m()Z

    move-result v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v5

    invoke-virtual {v5}, Lo/Base64;->s()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->T()Ljava/util/Map;

    move-result-object v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 136
    :goto_0
    invoke-virtual/range {v0 .. v5}, Lo/VoiceInteractionManagerInternal;->a(Ljava/util/List;Lo/RecognizerIntent;Lo/UnicodeScript;ZLjava/util/Map;)Lo/VrListenerService;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->e:Lo/VrListenerService;

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->e:Lo/VrListenerService;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lo/VrListenerService;->c()V

    .line 140
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->u()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->e:Lo/VrListenerService;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->e:Lo/VrListenerService;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->R()Lcom/netflix/mediaclient/acquisition/view/TermsAndConsentsComponent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/VrListenerService;->a(Lcom/netflix/mediaclient/acquisition/view/TermsAndConsentsComponent;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final A()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->l:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->b:[Lo/amT;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method

.method public abstract B()Lo/Base64;
.end method

.method public final C()Landroid/webkit/WebView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->t:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->b:[Lo/amT;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method public final D()Lo/QwertyKeyListener;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->k:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->b:[Lo/amT;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/QwertyKeyListener;

    return-object v0
.end method

.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->q:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->q:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->q:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->q:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->q:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public b(Lo/Base64;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->a:Lo/Base64;

    return-void
.end method

.method public c()V
    .locals 4

    .line 296
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v0

    invoke-virtual {v0}, Lo/Base64;->o()Lo/Cloneable;

    move-result-object v0

    .line 297
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 298
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_0

    const-string v3, "formDataObserverFactory"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->s()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;)Lo/BulletSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 296
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public d()V
    .locals 5

    .line 289
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v0

    invoke-virtual {v0}, Lo/Base64;->d()Lo/Cloneable;

    move-result-object v0

    .line 290
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 291
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_0

    const-string v3, "formDataObserverFactory"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->t()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->p()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;Landroid/view/View;)Lo/AccessibilityClickableSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 289
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 282
    invoke-super {p0}, Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;->e()V

    .line 283
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->e:Lo/VrListenerService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/VrListenerService;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v0

    invoke-virtual {v0}, Lo/Base64;->y()V

    :cond_0
    return-void
.end method

.method public synthetic j()Lo/Explode;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v0

    check-cast v0, Lo/Explode;

    return-object v0
.end method

.method public final n()Lo/ContainerHelpers;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->viewModelInitializer:Lo/ContainerHelpers;

    if-nez v0, :cond_0

    const-string v1, "viewModelInitializer"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public o()Lo/Base64;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->a:Lo/Base64;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;->onAttach(Landroid/content/Context;)V

    .line 109
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->B()Lo/Base64;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->b(Lo/Base64;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->D:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->b()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 95
    invoke-super {p0}, Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;->onResume()V

    .line 100
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->getActivity()Lo/Serializable;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    invoke-static {v0, v1}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o()Lo/Base64;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    new-instance v3, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$onResume$1$1;

    invoke-direct {v3, v0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment$onResume$1$1;-><init>(Lcom/netflix/mediaclient/acquisition/SignupNativeActivity;)V

    check-cast v3, Lo/alB;

    invoke-virtual {v1, v2, v3}, Lo/Base64;->d(Landroid/content/Context;Lo/alB;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition2/screens/AbstractNetworkFragment2;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 117
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->a()V

    return-void
.end method

.method public final p()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->i:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->b:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final q()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->c:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->b:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    return-object v0
.end method

.method public final r()Lo/NotificationAssistantService;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->h:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->b:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/NotificationAssistantService;

    return-object v0
.end method

.method public final s()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->d:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->b:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    return-object v0
.end method

.method public final t()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->j:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->b:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method

.method public final u()Landroidx/recyclerview/widget/RecyclerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->f:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->b:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public final v()Lcom/netflix/mediaclient/acquisition/view/MopLogosMultiLineLayout;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->n:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->b:[Lo/amT;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/MopLogosMultiLineLayout;

    return-object v0
.end method

.method public final w()Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->m:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->b:[Lo/amT;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    return-object v0
.end method

.method public final x()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->g:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->b:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method

.method public final y()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->o:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->b:[Lo/amT;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final z()Lo/SpellCheckSpan;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->r:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/creditDebit/CardPayFragment;->b:[Lo/amT;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SpellCheckSpan;

    return-object v0
.end method
