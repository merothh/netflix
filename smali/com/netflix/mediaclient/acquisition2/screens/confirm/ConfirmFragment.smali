.class public final Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;
.super Lo/VisibilityPropagation;
.source ""


# static fields
.field static final synthetic d:[Lo/amT;


# instance fields
.field public a:Lo/ArrayMap;

.field public adapterFactory:Lo/VoiceInteractionManagerInternal;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final b:Lcom/netflix/cl/model/AppView;

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

.field private final p:Lo/ams;

.field private final q:Lo/ams;

.field private r:Lo/VrListenerService;

.field private final s:Lo/ams;

.field private final t:Lo/ams;

.field public viewModelInitializer:Lo/ArraySet;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private w:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;

    const/16 v1, 0xe

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

    const-string v4, "editPaymentView"

    const-string v5, "getEditPaymentView()Lcom/netflix/mediaclient/acquisition2/components/editPayment/EditPaymentView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "accountInformation"

    const-string v5, "getAccountInformation()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "upgradedPlanAccountInformationView"

    const-string v5, "getUpgradedPlanAccountInformationView()Lcom/netflix/mediaclient/acquisition2/components/upgradeOnUs/UpgradedPlanAccountInformation;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "confirmPreHeader"

    const-string v5, "getConfirmPreHeader()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "confirmHeader"

    const-string v5, "getConfirmHeader()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "confirmDetails"

    const-string v5, "getConfirmDetails()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x8

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

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "confirmButton"

    const-string v5, "getConfirmButton()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0xa

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

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "koreaCheckBoxes"

    const-string v5, "getKoreaCheckBoxes()Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/KoreaCheckboxesView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "cvvField"

    const-string v4, "getCvvField()Landroidx/recyclerview/widget/RecyclerView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/16 v2, 0xd

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->d:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lo/VisibilityPropagation;-><init>()V

    const-string v0, "confirm"

    .line 39
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->e:Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/netflix/cl/model/AppView;->orderConfirmation:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->b:Lcom/netflix/cl/model/AppView;

    .line 44
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qO:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->j:Lo/ams;

    .line 47
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vD:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->i:Lo/ams;

    .line 50
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cc:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->g:Lo/ams;

    .line 53
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fv:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->h:Lo/ams;

    .line 56
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->a:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->f:Lo/ams;

    .line 59
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ug:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m:Lo/ams;

    .line 62
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cK:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->k:Lo/ams;

    .line 65
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cM:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->l:Lo/ams;

    .line 68
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cI:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->o:Lo/ams;

    .line 71
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->un:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->n:Lo/ams;

    .line 74
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cL:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->q:Lo/ams;

    .line 77
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->tR:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->t:Lo/ams;

    .line 80
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ja:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->s:Lo/ams;

    .line 83
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->dK:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->p:Lo/ams;

    return-void
.end method

.method private final A()V
    .locals 2

    .line 153
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->v()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment$ActionBar;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment$ActionBar;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final C()V
    .locals 3

    .line 112
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lo/ArrayMap;->a()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->w()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Lo/ArrayMap;->r()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->w()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->u()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Lo/ArrayMap;->s()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->y()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Lo/ArrayMap;->t()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lo/ArrayMap;->t()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->y()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lo/ArrayMap;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->N()Lo/VrListenerService;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->r:Lo/VrListenerService;

    .line 128
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->B()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->r:Lo/VrListenerService;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    goto :goto_2

    .line 130
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->B()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 133
    :goto_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->x()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Lo/ArrayMap;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setText(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lo/ArrayMap;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "it"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->a(Landroid/content/Context;)V

    .line 140
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->v()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Lo/ArrayMap;->n()Lo/AlignmentSpan;

    move-result-object v1

    invoke-virtual {v1}, Lo/AlignmentSpan;->b()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->J()V

    .line 142
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->F()V

    .line 144
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lo/ArrayMap;->w()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 145
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->G()V

    goto :goto_3

    .line 147
    :cond_5
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->M()V

    .line 148
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->L()V

    :goto_3
    return-void
.end method

.method private final E()Ljava/lang/String;
    .locals 3

    .line 212
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lo/ArrayMap;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 213
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Lo/ArrayMap;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v1, v2

    .line 214
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lo/anv;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final F()V
    .locals 2

    .line 169
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lo/ArrayMap;->m()Lo/SingleLineTransformationMethod;

    move-result-object v0

    invoke-virtual {v0}, Lo/SingleLineTransformationMethod;->a()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->K()V

    .line 171
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->D()Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->setVisibility(I)V

    goto :goto_0

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->J()V

    .line 174
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->z()Lo/QwertyKeyListener;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/QwertyKeyListener;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final G()V
    .locals 13

    .line 184
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->s()Lo/ReplacementSpan;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ReplacementSpan;->setVisibility(I)V

    .line 185
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->r()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lo/ArrayMap;->o()Lo/RelativeSizeSpan;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Lo/ArrayMap;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/RelativeSizeSpan;->e(Ljava/lang/String;)Lo/GhostView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 192
    invoke-virtual {v3}, Lo/GhostView;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lo/RelativeSizeSpan;->a(Ljava/lang/String;)Lo/GhostView;

    move-result-object v4

    .line 195
    invoke-virtual {v0}, Lo/RelativeSizeSpan;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->s()Lo/ReplacementSpan;

    move-result-object v2

    .line 199
    invoke-virtual {v0}, Lo/RelativeSizeSpan;->e()Ljava/lang/String;

    move-result-object v5

    .line 200
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->E()Ljava/lang/String;

    move-result-object v6

    .line 201
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lo/ArrayMap;->j()Ljava/lang/String;

    move-result-object v7

    .line 202
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lo/ArrayMap;->g()Z

    move-result v8

    .line 203
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lo/ArrayMap;->h()Z

    move-result v9

    .line 204
    iget-object v10, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->r:Lo/VrListenerService;

    .line 205
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment$initUpgradedAccountInformationView$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment$initUpgradedAccountInformationView$1;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;)V

    move-object v11, v0

    check-cast v11, Lo/alB;

    .line 206
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment$initUpgradedAccountInformationView$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment$initUpgradedAccountInformationView$2;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;)V

    move-object v12, v0

    check-cast v12, Lo/alB;

    .line 196
    invoke-virtual/range {v2 .. v12}, Lo/ReplacementSpan;->d(Lo/GhostView;Lo/GhostView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLo/VrListenerService;Lo/alB;Lo/alB;)V

    :cond_1
    return-void
.end method

.method private final H()Z
    .locals 3

    .line 165
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->B()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->r:Lo/VrListenerService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/VrListenerService;->d()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private final I()Z
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lo/ArrayMap;->m()Lo/SingleLineTransformationMethod;

    move-result-object v0

    invoke-virtual {v0}, Lo/SingleLineTransformationMethod;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->z()Lo/QwertyKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Lo/QwertyKeyListener;->hasAcceptedRequiredCheckBoxes()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->D()Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->hasAcceptedRequiredCheckBoxes()Z

    move-result v0

    :goto_0
    return v0
.end method

.method private final J()V
    .locals 2

    .line 223
    new-instance v0, Lo/ImageSpan;

    invoke-direct {v0}, Lo/ImageSpan;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->D()Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ImageSpan;->e(Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;)Lo/EasyEditSpan;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Lo/ArrayMap;->l()Lo/LocaleSpan;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/EasyEditSpan;->b(Lo/LocaleSpan;)V

    return-void
.end method

.method private final K()V
    .locals 2

    .line 218
    new-instance v0, Lo/TextKeyListener;

    invoke-direct {v0}, Lo/TextKeyListener;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->z()Lo/QwertyKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/TextKeyListener;->e(Lo/QwertyKeyListener;)Lo/LinkMovementMethod;

    move-result-object v0

    .line 219
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Lo/ArrayMap;->m()Lo/SingleLineTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/LinkMovementMethod;->c(Lo/SingleLineTransformationMethod;)V

    return-void
.end method

.method private final L()V
    .locals 3

    .line 237
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment$Activity;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment$Activity;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 241
    new-instance v1, Lo/Tile;

    invoke-direct {v1}, Lo/Tile;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->t()Lo/ScheduleCalendar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/Tile;->e(Lo/ScheduleCalendar;)Lo/PersistentDataBlockManager;

    move-result-object v1

    .line 242
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Lo/ArrayMap;->q()Lo/OemLockManager;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lo/PersistentDataBlockManager;->b(Lo/OemLockManager;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final M()V
    .locals 3

    .line 228
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment$StateListAnimator;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment$StateListAnimator;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 232
    new-instance v1, Lo/ConditionProviderService;

    invoke-direct {v1}, Lo/ConditionProviderService;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->p()Lo/NotificationAssistantService;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/ConditionProviderService;->c(Lo/NotificationAssistantService;)Lo/NotificationListenerService;

    move-result-object v1

    .line 233
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Lo/ArrayMap;->k()Lo/NotificationStats;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lo/NotificationListenerService;->e(Lo/NotificationStats;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final N()Lo/VrListenerService;
    .locals 5

    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->adapterFactory:Lo/VoiceInteractionManagerInternal;

    if-nez v0, :cond_0

    const-string v1, "adapterFactory"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Lo/ArrayMap;->z()Ljava/util/List;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lo/RecognizerIntent;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v3

    const-string v4, "viewLifecycleOwner"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/VoiceInteractionManagerInternal;->c(Ljava/util/List;Lo/RecognizerIntent;Lo/UnicodeScript;Z)Lo/VrListenerService;

    move-result-object v0

    return-object v0
.end method

.method private final a(Landroid/content/Context;)V
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->x()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setSignupBannerInfoBlue(Landroid/content/Context;)V

    .line 180
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->x()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->da:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;)Z
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->H()Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;)Z
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->I()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final B()Landroidx/recyclerview/widget/RecyclerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->p:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->d:[Lo/amT;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public final D()Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->t:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->d:[Lo/amT;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    return-object v0
.end method

.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->w:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->w:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->w:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->w:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->w:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 257
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lo/ArrayMap;->f()Lo/Cloneable;

    move-result-object v0

    .line 258
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 259
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_0

    const-string v3, "formDataObserverFactory"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->v()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;)Lo/BulletSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 257
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public c(Lo/ArrayMap;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->a:Lo/ArrayMap;

    return-void
.end method

.method public d()V
    .locals 5

    .line 250
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Lo/ArrayMap;->d()Lo/Cloneable;

    move-result-object v0

    .line 251
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 252
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_0

    const-string v3, "formDataObserverFactory"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->q()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->o()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;Landroid/view/View;)Lo/AccessibilityClickableSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 250
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->e:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic j()Lo/Explode;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object v0

    check-cast v0, Lo/Explode;

    return-object v0
.end method

.method public l()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->b:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public m()Lo/ArrayMap;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->a:Lo/ArrayMap;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final o()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->j:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->d:[Lo/amT;

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

    .line 97
    invoke-super {p0, p1}, Lo/VisibilityPropagation;->onAttach(Landroid/content/Context;)V

    .line 98
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->viewModelInitializer:Lo/ArraySet;

    if-nez p1, :cond_0

    const-string v0, "viewModelInitializer"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Lo/ArraySet;->d(Landroidx/fragment/app/Fragment;)Lo/ArrayMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->c(Lo/ArrayMap;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->w:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/VisibilityPropagation;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->b()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-super {p0, p1, p2}, Lo/VisibilityPropagation;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 106
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->C()V

    .line 107
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->N()Lo/VrListenerService;

    .line 108
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->A()V

    return-void
.end method

.method public final p()Lo/NotificationAssistantService;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->g:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->d:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/NotificationAssistantService;

    return-object v0
.end method

.method public final q()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->i:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->d:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method

.method public final r()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->f:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->d:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final s()Lo/ReplacementSpan;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->d:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ReplacementSpan;

    return-object v0
.end method

.method public final t()Lo/ScheduleCalendar;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->h:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->d:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ScheduleCalendar;

    return-object v0
.end method

.method public final u()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->l:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->d:[Lo/amT;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final v()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->q:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->d:[Lo/amT;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    return-object v0
.end method

.method public final w()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->k:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->d:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final x()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->n:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->d:[Lo/amT;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method

.method public final y()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->o:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->d:[Lo/amT;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final z()Lo/QwertyKeyListener;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->s:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->d:[Lo/amT;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/QwertyKeyListener;

    return-object v0
.end method
