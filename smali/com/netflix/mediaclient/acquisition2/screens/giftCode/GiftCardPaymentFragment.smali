.class public final Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;
.super Lo/MergedConfiguration;
.source ""


# static fields
.field static final synthetic d:[Lo/amT;


# instance fields
.field public a:Lo/MutableChar;

.field private final c:Ljava/lang/String;

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

.field private final j:Lo/aka;

.field private final k:Lo/ams;

.field private final l:Lo/ams;

.field private final m:Lo/ams;

.field private final n:Lo/ams;

.field private o:Ljava/util/HashMap;

.field public safetyNetClientWrapper:Lcom/netflix/mediaclient/acquisition/util/SafetyNetClientWrapper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public signupLogger:Lo/TextClassificationManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public viewModelInitializer:Lo/MutableLong;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;

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

    const-string v4, "giftCodeFormView"

    const-string v5, "getGiftCodeFormView()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "zipCodeFormView"

    const-string v5, "getZipCodeFormView()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "giftCardButton"

    const-string v5, "getGiftCardButton()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

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

    const/4 v3, 0x5

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

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "upgradePlanDetailsView"

    const-string v4, "getUpgradePlanDetailsView()Lcom/netflix/mediaclient/acquisition2/components/upgradeOnUs/UpgradePlanDetailsView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->d:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lo/MergedConfiguration;-><init>()V

    .line 35
    sget-object v0, Lcom/netflix/cl/model/AppView;->paymentGiftCard:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->e:Lcom/netflix/cl/model/AppView;

    const-string v0, "paymentGiftCard"

    .line 38
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->c:Ljava/lang/String;

    .line 52
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qO:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->f:Lo/ams;

    .line 54
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vD:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->h:Lo/ams;

    .line 58
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment$formViews$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment$formViews$2;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;)V

    check-cast v0, Lo/alB;

    invoke-static {v0}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->j:Lo/aka;

    .line 60
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hh:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->i:Lo/ams;

    .line 62
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vN:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->g:Lo/ams;

    .line 64
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hi:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->l:Lo/ams;

    .line 65
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rB:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->n:Lo/ams;

    .line 67
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cc:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->k:Lo/ams;

    .line 69
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mu:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->m:Lo/ams;

    return-void
.end method

.method private final A()V
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->u()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment$Activity;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment$Activity;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final B()V
    .locals 3

    .line 100
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->w()Lo/SpellCheckSpan;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->n()Lo/MutableChar;

    move-result-object v1

    invoke-virtual {v1}, Lo/MutableChar;->n()Lo/RelativeSizeSpan;

    move-result-object v1

    .line 102
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->n()Lo/MutableChar;

    move-result-object v2

    invoke-virtual {v2}, Lo/MutableChar;->f()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-virtual {v0, v1, v2}, Lo/SpellCheckSpan;->a(Lo/RelativeSizeSpan;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->w()Lo/SpellCheckSpan;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/SpellCheckSpan;->setVisibility(I)V

    .line 107
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->w()Lo/SpellCheckSpan;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment$TaskDescription;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment$TaskDescription;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/SpellCheckSpan;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->x()Lo/NotificationAssistantService;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/NotificationAssistantService;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private final C()V
    .locals 2

    .line 95
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->y()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->n()Lo/MutableChar;

    move-result-object v1

    invoke-virtual {v1}, Lo/MutableChar;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setStepLabelString(Ljava/lang/CharSequence;)V

    .line 96
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->y()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->startAlignText()V

    return-void
.end method

.method public static synthetic d(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 129
    check-cast p1, Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->c(Ljava/lang/String;)V

    return-void
.end method

.method private final v()V
    .locals 2

    .line 90
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->r()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->n()Lo/MutableChar;

    move-result-object v1

    invoke-virtual {v1}, Lo/MutableChar;->m()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->d(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;)V

    .line 91
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->p()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->n()Lo/MutableChar;

    move-result-object v1

    invoke-virtual {v1}, Lo/MutableChar;->l()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->d(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;)V

    return-void
.end method

.method private final w()Lo/SpellCheckSpan;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->m:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->d:[Lo/amT;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SpellCheckSpan;

    return-object v0
.end method

.method private final y()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->n:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->d:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    return-object v0
.end method

.method private final z()V
    .locals 3

    .line 115
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->x()Lo/NotificationAssistantService;

    move-result-object v0

    invoke-virtual {v0}, Lo/NotificationAssistantService;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->changePlanViewBindingFactory:Lo/ConditionProviderService;

    if-nez v0, :cond_0

    const-string v1, "changePlanViewBindingFactory"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->x()Lo/NotificationAssistantService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ConditionProviderService;->c(Lo/NotificationAssistantService;)Lo/NotificationListenerService;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->n()Lo/MutableChar;

    move-result-object v1

    invoke-virtual {v1}, Lo/MutableChar;->o()Lo/NotificationStats;

    move-result-object v1

    .line 119
    new-instance v2, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment$ActionBar;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment$ActionBar;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    .line 117
    invoke-virtual {v0, v1, v2}, Lo/NotificationListenerService;->e(Lo/NotificationStats;Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->o:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->o:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->o:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->o:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public a(Lo/MutableChar;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->a:Lo/MutableChar;

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->o:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 178
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->n()Lo/MutableChar;

    move-result-object v0

    invoke-virtual {v0}, Lo/MutableChar;->j()Lo/Cloneable;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 180
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_0

    const-string v3, "formDataObserverFactory"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->u()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;)Lo/BulletSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 178
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->n()Lo/MutableChar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/MutableChar;->d(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 5

    .line 171
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->n()Lo/MutableChar;

    move-result-object v0

    invoke-virtual {v0}, Lo/MutableChar;->d()Lo/Cloneable;

    move-result-object v0

    .line 172
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 173
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_0

    const-string v3, "formDataObserverFactory"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->q()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->s()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;Landroid/view/View;)Lo/AccessibilityClickableSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 171
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 134
    invoke-super {p0}, Lo/MergedConfiguration;->e()V

    .line 135
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->n()Lo/MutableChar;

    move-result-object v0

    invoke-virtual {v0}, Lo/MutableChar;->k()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->t()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 185
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;

    .line 136
    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->setShowValidationState(Z)V

    goto :goto_0

    :cond_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->n()Lo/MutableChar;

    move-result-object v0

    invoke-virtual {v0}, Lo/MutableChar;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 141
    invoke-static {p0, v0, v1, v0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->d(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 144
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->n()Lo/MutableChar;

    move-result-object v0

    invoke-virtual {v0}, Lo/MutableChar;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lo/amh;->c()V

    .line 145
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->safetyNetClientWrapper:Lcom/netflix/mediaclient/acquisition/util/SafetyNetClientWrapper;

    if-nez v1, :cond_4

    const-string v2, "safetyNetClientWrapper"

    invoke-static {v2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Lcom/netflix/mediaclient/acquisition/util/SafetyNetClientWrapper;->getClient()Lcom/google/android/gms/safetynet/SafetyNetClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/safetynet/SafetyNetClient;->verifyWithRecaptcha(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 146
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->getActivity()Lo/Serializable;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {}, Lo/amh;->c()V

    :cond_5
    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment$Application;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment$Application;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;)V

    check-cast v2, Lcom/google/android/gms/tasks/OnSuccessListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->getActivity()Lo/Serializable;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-static {}, Lo/amh;->c()V

    :cond_6
    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment$StateListAnimator;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment$StateListAnimator;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;)V

    check-cast v2, Lcom/google/android/gms/tasks/OnFailureListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->c:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic j()Lo/Explode;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->n()Lo/MutableChar;

    move-result-object v0

    check-cast v0, Lo/Explode;

    return-object v0
.end method

.method public final k()Lo/TextClassificationManager;
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->signupLogger:Lo/TextClassificationManager;

    if-nez v0, :cond_0

    const-string v1, "signupLogger"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public l()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->e:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public n()Lo/MutableChar;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->a:Lo/MutableChar;

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

    .line 72
    invoke-super {p0, p1}, Lo/MergedConfiguration;->onAttach(Landroid/content/Context;)V

    .line 73
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->viewModelInitializer:Lo/MutableLong;

    if-nez p1, :cond_0

    const-string v0, "viewModelInitializer"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Lo/MutableLong;->c(Landroidx/fragment/app/Fragment;)Lo/MutableChar;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->a(Lo/MutableChar;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->bR:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/MergedConfiguration;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->b()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-super {p0, p1, p2}, Lo/MergedConfiguration;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 82
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->A()V

    .line 83
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->C()V

    .line 84
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->z()V

    .line 85
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->B()V

    .line 86
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->v()V

    return-void
.end method

.method public final p()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->g:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->d:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;

    return-object v0
.end method

.method public final q()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->h:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->d:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method

.method public final r()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->i:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->d:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;

    return-object v0
.end method

.method public final s()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->f:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->d:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->j:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final u()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->l:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->d:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    return-object v0
.end method

.method public final x()Lo/NotificationAssistantService;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->k:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardPaymentFragment;->d:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/NotificationAssistantService;

    return-object v0
.end method
