.class public final Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;
.super Lo/MemoryIntArray;
.source ""


# static fields
.field static final synthetic c:[Lo/amT;


# instance fields
.field public b:Lo/Pair;

.field public changePlanViewBindingFactory:Lo/ConditionProviderService;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

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

.field private final l:Lo/ams;

.field private m:Ljava/util/HashMap;

.field private final n:Lo/ams;

.field private final o:Lo/ams;

.field public touViewBindingFactory:Lo/ImageSpan;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public viewModelInitializer:Lo/Patterns;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;

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

    const-string v4, "userMessage"

    const-string v5, "getUserMessage()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "submitButton"

    const-string v5, "getSubmitButton()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;"

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

    const-string v3, "touView"

    const-string v4, "getTouView()Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->c:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lo/MemoryIntArray;-><init>()V

    .line 30
    sget-object v0, Lcom/netflix/cl/model/AppView;->orderConfirmation:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->e:Lcom/netflix/cl/model/AppView;

    const-string v0, "orderConfirm"

    .line 33
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->d:Ljava/lang/String;

    .line 44
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qO:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->g:Lo/ams;

    .line 46
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vD:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->i:Lo/ams;

    .line 48
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nl:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->f:Lo/ams;

    .line 50
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->un:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->h:Lo/ams;

    .line 53
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sI:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->j:Lo/ams;

    .line 54
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rB:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->o:Lo/ams;

    .line 56
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cc:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->n:Lo/ams;

    .line 58
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->tR:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->l:Lo/ams;

    return-void
.end method

.method private final u()V
    .locals 3

    .line 92
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->q()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->m()Lo/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lo/Pair;->i()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->m()Lo/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lo/Pair;->o()Lo/AlignmentSpan;

    move-result-object v0

    invoke-virtual {v0}, Lo/AlignmentSpan;->c()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->m()Lo/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lo/Pair;->o()Lo/AlignmentSpan;

    move-result-object v1

    invoke-virtual {v1}, Lo/AlignmentSpan;->e()Ljava/lang/String;

    move-result-object v1

    .line 96
    new-instance v2, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment$initStartMembershipGiftClick$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment$initStartMembershipGiftClick$1;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;)V

    check-cast v2, Lo/alN;

    .line 93
    invoke-static {v0, v1, v2}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    .line 100
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->q()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment$TaskDescription;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment$TaskDescription;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final v()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->changePlanViewBindingFactory:Lo/ConditionProviderService;

    if-nez v0, :cond_0

    const-string v1, "changePlanViewBindingFactory"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->p()Lo/NotificationAssistantService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ConditionProviderService;->c(Lo/NotificationAssistantService;)Lo/NotificationListenerService;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->m()Lo/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lo/Pair;->q()Lo/NotificationStats;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment$ActionBar;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment$ActionBar;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lo/NotificationListenerService;->e(Lo/NotificationStats;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final w()V
    .locals 2

    .line 86
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->x()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->m()Lo/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lo/Pair;->j()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setHeadingString(Ljava/lang/CharSequence;)V

    .line 87
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->x()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->m()Lo/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lo/Pair;->n()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setStepLabelString(Ljava/lang/CharSequence;)V

    .line 88
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->x()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->startAlignText()V

    return-void
.end method

.method private final x()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->o:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->c:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    return-object v0
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->m:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->m:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->m:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->m:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public a(Lo/Pair;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->b:Lo/Pair;

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->m:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 115
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->m()Lo/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lo/Pair;->h()Lo/Cloneable;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_0

    const-string v3, "formDataObserverFactory"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->q()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;)Lo/BulletSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 115
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public d()V
    .locals 5

    .line 108
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->m()Lo/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lo/Pair;->d()Lo/Cloneable;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_0

    const-string v3, "formDataObserverFactory"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->s()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->n()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;Landroid/view/View;)Lo/AccessibilityClickableSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 108
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->d:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic j()Lo/Explode;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->m()Lo/Pair;

    move-result-object v0

    check-cast v0, Lo/Explode;

    return-object v0
.end method

.method public l()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->e:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public m()Lo/Pair;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->b:Lo/Pair;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final n()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->g:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->c:[Lo/amT;

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

    .line 61
    invoke-super {p0, p1}, Lo/MemoryIntArray;->onAttach(Landroid/content/Context;)V

    .line 62
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->viewModelInitializer:Lo/Patterns;

    if-nez p1, :cond_0

    const-string v0, "viewModelInitializer"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Lo/Patterns;->b(Landroidx/fragment/app/Fragment;)Lo/Pair;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->a(Lo/Pair;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->bQ:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/MemoryIntArray;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->b()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-super {p0, p1, p2}, Lo/MemoryIntArray;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 71
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->u()V

    .line 72
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->w()V

    .line 73
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->v()V

    .line 74
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->t()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->m()Lo/Pair;

    move-result-object p2

    invoke-virtual {p2}, Lo/Pair;->m()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setText(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->r()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->m()Lo/Pair;

    move-result-object p2

    invoke-virtual {p2}, Lo/Pair;->l()Lo/DigitsKeyListener;

    move-result-object p2

    invoke-virtual {p2}, Lo/DigitsKeyListener;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setText(Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->touViewBindingFactory:Lo/ImageSpan;

    if-nez p1, :cond_0

    const-string p2, "touViewBindingFactory"

    invoke-static {p2}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->y()Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/ImageSpan;->a(Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;)Lo/LineBackgroundSpan;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->m()Lo/Pair;

    move-result-object p2

    invoke-virtual {p2}, Lo/Pair;->k()Lo/ForegroundColorSpan;

    move-result-object p2

    check-cast p2, Lo/LeadingMarginSpan;

    invoke-virtual {p1, p2}, Lo/LineBackgroundSpan;->b(Lo/LeadingMarginSpan;)V

    return-void
.end method

.method public final p()Lo/NotificationAssistantService;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->n:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->c:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/NotificationAssistantService;

    return-object v0
.end method

.method public final q()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->j:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->c:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    return-object v0
.end method

.method public final r()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->f:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->c:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method

.method public final s()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->i:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->c:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method

.method public final t()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->h:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->c:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method

.method public final y()Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->l:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->c:[Lo/amT;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    return-object v0
.end method
