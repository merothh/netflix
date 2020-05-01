.class public final Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;
.super Lo/AlphaAnimation;
.source ""


# static fields
.field static final synthetic a:[Lo/amT;


# instance fields
.field private final b:Ljava/lang/String;

.field public d:Lo/AnticipateInterpolator;

.field private final e:Lcom/netflix/cl/model/AppView;

.field private final f:Lo/ams;

.field private final g:Lo/ams;

.field private final h:Lo/ams;

.field private final i:Lo/ams;

.field private final j:Lo/ams;

.field private final k:Lo/ams;

.field private final l:Lo/ams;

.field private final m:Lo/ams;

.field private final n:Lo/ams;

.field private final o:Lo/ams;

.field private s:Z

.field private t:Ljava/util/HashMap;

.field public viewModelInitializer:Lo/AnimationUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;

    const/16 v1, 0xa

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "verifyAgeExpandingView"

    const-string v5, "getVerifyAgeExpandingView()Lcom/netflix/mediaclient/acquisition2/components/expandingDropDownView/ExpandingDropDownView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "skipVerifyExpandingView"

    const-string v5, "getSkipVerifyExpandingView()Lcom/netflix/mediaclient/acquisition2/components/expandingDropDownView/ExpandingDropDownView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "birthMonthDropDown"

    const-string v5, "getBirthMonthDropDown()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/BirthMonthEditText;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "birthDateDropDown"

    const-string v5, "getBirthDateDropDown()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/BirthDateEditText;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "birthYearEditText"

    const-string v5, "getBirthYearEditText()Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "dobErrorText"

    const-string v5, "getDobErrorText()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "maturityPinEntry"

    const-string v5, "getMaturityPinEntry()Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "verifyAgeHeader"

    const-string v5, "getVerifyAgeHeader()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "verifyAgeSubheader"

    const-string v5, "getVerifyAgeSubheader()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "skipVerifySubheader"

    const-string v4, "getSkipVerifySubheader()Landroid/widget/TextView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/16 v2, 0x9

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->a:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lo/AlphaAnimation;-><init>()V

    const-string v0, "verifyAge"

    .line 31
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->b:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/netflix/cl/model/AppView;->ageVerificationDialog:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->e:Lcom/netflix/cl/model/AppView;

    .line 35
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uA:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->g:Lo/ams;

    .line 38
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rF:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->f:Lo/ams;

    .line 41
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->au:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->h:Lo/ams;

    .line 44
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->aw:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->j:Lo/ams;

    .line 47
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ay:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->i:Lo/ams;

    .line 50
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->eY:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->o:Lo/ams;

    .line 53
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kd:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->n:Lo/ams;

    .line 56
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ux:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->m:Lo/ams;

    .line 59
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uB:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->k:Lo/ams;

    .line 62
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rH:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->l:Lo/ams;

    return-void
.end method

.method private final C()V
    .locals 2

    .line 130
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->n()Lo/Suggestion;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment$initClickListeners$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment$initClickListeners$1;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;)V

    check-cast v1, Lo/alA;

    invoke-virtual {v0, v1}, Lo/Suggestion;->setHeaderClickListener(Lo/alA;)V

    .line 140
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->r()Lo/Suggestion;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment$initClickListeners$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment$initClickListeners$2;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;)V

    check-cast v1, Lo/alA;

    invoke-virtual {v0, v1}, Lo/Suggestion;->setHeaderClickListener(Lo/alA;)V

    .line 150
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->r()Lo/Suggestion;

    move-result-object v0

    invoke-virtual {v0}, Lo/Suggestion;->i()Landroid/view/View;

    move-result-object v0

    .line 151
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->rE:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    .line 152
    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment$TaskDescription;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment$TaskDescription;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->n()Lo/Suggestion;

    move-result-object v0

    invoke-virtual {v0}, Lo/Suggestion;->i()Landroid/view/View;

    move-result-object v0

    .line 157
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->uz:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    .line 158
    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment$Application;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment$Application;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final D()V
    .locals 3

    .line 98
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment$ActionBar;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment$ActionBar;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;)V

    .line 114
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->s()Lo/Time;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->o()Lo/AnticipateInterpolator;

    move-result-object v2

    invoke-virtual {v2}, Lo/AnticipateInterpolator;->p()Lo/DateUtils;

    move-result-object v2

    check-cast v2, Lo/TimeFormatter;

    check-cast v0, Lo/GraphicsOperations;

    invoke-virtual {v1, v2, v0}, Lo/Time;->d(Lo/TimeFormatter;Lo/GraphicsOperations;)V

    .line 115
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->t()Lo/StaticLayout;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->o()Lo/AnticipateInterpolator;

    move-result-object v2

    invoke-virtual {v2}, Lo/AnticipateInterpolator;->q()Lo/TextUtils;

    move-result-object v2

    check-cast v2, Lo/TimeFormatter;

    invoke-virtual {v1, v2, v0}, Lo/StaticLayout;->d(Lo/TimeFormatter;Lo/GraphicsOperations;)V

    .line 116
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->q()Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->o()Lo/AnticipateInterpolator;

    move-result-object v2

    invoke-virtual {v2}, Lo/AnticipateInterpolator;->r()Lo/Hyphenator;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;->d(Lo/Hyphenator;Lo/GraphicsOperations;)V

    .line 117
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->y()Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->o()Lo/AnticipateInterpolator;

    move-result-object v1

    invoke-virtual {v1}, Lo/AnticipateInterpolator;->t()Lo/AllCapsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->a(Lo/AllCapsTransformationMethod;)V

    return-void
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->s:Z

    return p0
.end method

.method public static final synthetic c(Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->s:Z

    return-void
.end method

.method public static final synthetic d(Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->v()V

    return-void
.end method

.method private final v()V
    .locals 3

    .line 88
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->o()Lo/AnticipateInterpolator;

    move-result-object v0

    invoke-virtual {v0}, Lo/AnticipateInterpolator;->m()Z

    move-result v0

    .line 89
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->p()Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->t()Lo/StaticLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/StaticLayout;->setValidationState(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->s()Lo/Time;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/Time;->setValidationState(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->q()Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;->setValidationState(Z)V

    return-void
.end method

.method private final z()V
    .locals 3

    .line 121
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->u()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->o()Lo/AnticipateInterpolator;

    move-result-object v1

    invoke-virtual {v1}, Lo/AnticipateInterpolator;->i()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->w()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->o()Lo/AnticipateInterpolator;

    move-result-object v1

    invoke-virtual {v1}, Lo/AnticipateInterpolator;->f()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->x()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->o()Lo/AnticipateInterpolator;

    move-result-object v1

    invoke-virtual {v1}, Lo/AnticipateInterpolator;->l()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->n()Lo/Suggestion;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->o()Lo/AnticipateInterpolator;

    move-result-object v1

    invoke-virtual {v1}, Lo/AnticipateInterpolator;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "viewModel.verifyAgeExpandingHeaderText"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/Suggestion;->setHeaderText(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->r()Lo/Suggestion;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->o()Lo/AnticipateInterpolator;

    move-result-object v1

    invoke-virtual {v1}, Lo/AnticipateInterpolator;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "viewModel.skipVerifyExpandingHeaderText"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lo/Suggestion;->setHeaderText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->t:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->t:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->t:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->t:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->t:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(Lo/AnticipateInterpolator;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->d:Lo/AnticipateInterpolator;

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic j()Lo/Explode;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->o()Lo/AnticipateInterpolator;

    move-result-object v0

    check-cast v0, Lo/Explode;

    return-object v0
.end method

.method public l()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->e:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public final n()Lo/Suggestion;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->g:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->a:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Suggestion;

    return-object v0
.end method

.method public o()Lo/AnticipateInterpolator;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->d:Lo/AnticipateInterpolator;

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

    .line 68
    invoke-super {p0, p1}, Lo/AlphaAnimation;->onAttach(Landroid/content/Context;)V

    .line 69
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->viewModelInitializer:Lo/AnimationUtils;

    if-nez p1, :cond_0

    const-string v0, "viewModelInitializer"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Lo/AnimationUtils;->b(Landroidx/fragment/app/Fragment;)Lo/AnticipateInterpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->c(Lo/AnticipateInterpolator;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->bS:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/AlphaAnimation;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->b()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-super {p0, p1, p2}, Lo/AlphaAnimation;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 80
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->D()V

    .line 81
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->C()V

    .line 82
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->z()V

    return-void
.end method

.method public final p()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->o:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->a:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final q()Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->i:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->a:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;

    return-object v0
.end method

.method public final r()Lo/Suggestion;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->f:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->a:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Suggestion;

    return-object v0
.end method

.method public final s()Lo/Time;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->h:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->a:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Time;

    return-object v0
.end method

.method public final t()Lo/StaticLayout;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->j:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->a:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/StaticLayout;

    return-object v0
.end method

.method public final u()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->m:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->a:[Lo/amT;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final w()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->k:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->a:[Lo/amT;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final x()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->l:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->a:[Lo/amT;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final y()Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->n:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->a:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;

    return-object v0
.end method
