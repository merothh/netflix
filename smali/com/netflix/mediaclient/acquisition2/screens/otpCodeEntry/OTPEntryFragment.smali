.class public final Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;
.super Lo/ByteBufferDataSource;
.source ""


# static fields
.field static final synthetic c:[Lo/amT;


# instance fields
.field public adapterFactory:Lo/VoiceInteractionManagerInternal;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final b:Lcom/netflix/cl/model/AppView;

.field public d:Lo/SignatureNotFoundException;

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

.field private p:Lo/VrListenerService;

.field private final s:Lo/ams;

.field private t:Ljava/util/HashMap;

.field public viewModelInitializer:Lo/StrictJarManifest;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;

    const/16 v1, 0xb

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "paymentForm"

    const-string v5, "getPaymentForm()Landroidx/recyclerview/widget/RecyclerView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "resendCode"

    const-string v5, "getResendCode()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "additionalLinks"

    const-string v5, "getAdditionalLinks()Landroid/widget/LinearLayout;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "resendingCode"

    const-string v5, "getResendingCode()Landroid/widget/LinearLayout;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

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

    const/4 v3, 0x4

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

    const/4 v3, 0x5

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

    const/4 v3, 0x6

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

    const/4 v3, 0x7

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

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "changeMop"

    const-string v5, "getChangeMop()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x9

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

    const/16 v2, 0xa

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->c:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lo/ByteBufferDataSource;-><init>()V

    .line 34
    sget-object v0, Lcom/netflix/cl/model/AppView;->paymentDcbVerifyCode:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->b:Lcom/netflix/cl/model/AppView;

    const-string v0, "paymentDcbVerifyCode"

    .line 36
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->e:Ljava/lang/String;

    .line 45
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->lY:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->i:Lo/ams;

    .line 46
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qt:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->f:Lo/ams;

    .line 47
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->i:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->j:Lo/ams;

    .line 48
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qs:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->h:Lo/ams;

    .line 50
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->sV:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->g:Lo/ams;

    .line 52
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qO:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->n:Lo/ams;

    .line 54
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vD:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->m:Lo/ams;

    .line 56
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rB:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->l:Lo/ams;

    .line 58
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cY:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->o:Lo/ams;

    .line 60
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->bZ:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->k:Lo/ams;

    .line 62
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->nl:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->s:Lo/ams;

    return-void
.end method

.method private final A()V
    .locals 5

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->adapterFactory:Lo/VoiceInteractionManagerInternal;

    if-nez v0, :cond_0

    const-string v1, "adapterFactory"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->o()Lo/SignatureNotFoundException;

    move-result-object v1

    invoke-virtual {v1}, Lo/SignatureNotFoundException;->r()Ljava/util/List;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lo/RecognizerIntent;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v3

    const-string v4, "viewLifecycleOwner"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/VoiceInteractionManagerInternal;->c(Ljava/util/List;Lo/RecognizerIntent;Lo/UnicodeScript;Z)Lo/VrListenerService;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lo/VrListenerService;->c()V

    .line 131
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->u()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 132
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->p:Lo/VrListenerService;

    return-void
.end method

.method private final B()V
    .locals 9

    .line 164
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->p()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aD:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setSubHeadingPixelWidth(I)V

    .line 165
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->p()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v2

    .line 166
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->o()Lo/SignatureNotFoundException;

    move-result-object v0

    invoke-virtual {v0}, Lo/SignatureNotFoundException;->f()Ljava/lang/CharSequence;

    move-result-object v3

    .line 167
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->qC:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    .line 168
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->o()Lo/SignatureNotFoundException;

    move-result-object v0

    invoke-virtual {v0}, Lo/SignatureNotFoundException;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 165
    invoke-static/range {v2 .. v8}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setStrings$default(Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;ILjava/lang/Object;)V

    .line 170
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->p()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->startAlignText()V

    .line 172
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->x()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->o()Lo/SignatureNotFoundException;

    move-result-object v1

    invoke-virtual {v1}, Lo/SignatureNotFoundException;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setText(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->q()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->o()Lo/SignatureNotFoundException;

    move-result-object v1

    invoke-virtual {v1}, Lo/SignatureNotFoundException;->j()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->r()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->o()Lo/SignatureNotFoundException;

    move-result-object v1

    invoke-virtual {v1}, Lo/SignatureNotFoundException;->m()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final C()Landroid/widget/LinearLayout;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->h:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->c:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final D()V
    .locals 2

    .line 150
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->q()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$Application;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$Application;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->r()Lo/ImageSwitcher;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$TaskDescription;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$TaskDescription;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->v()Lo/ImageSwitcher;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$Activity;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$Activity;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final F()V
    .locals 3

    .line 194
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->o()Lo/SignatureNotFoundException;

    move-result-object v0

    invoke-virtual {v0}, Lo/SignatureNotFoundException;->q()Lo/Cloneable;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 196
    new-instance v2, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$StateListAnimator;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$StateListAnimator;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;)V

    check-cast v2, Lo/ClassFormatError;

    .line 194
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->C()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method private final b(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->o()Lo/SignatureNotFoundException;

    move-result-object v0

    invoke-virtual {v0}, Lo/SignatureNotFoundException;->p()Lo/TextLinksParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/TextLinksParams;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 120
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->u()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    .line 121
    sget-object v1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {v1}, Lo/EventLogger;->o()Lo/FontConfig;

    move-result-object v1

    invoke-virtual {v1}, Lo/FontConfig;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 122
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->ft:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 123
    check-cast p1, Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 125
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->e()V

    return-void
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->w()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method private final u()Landroidx/recyclerview/widget/RecyclerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->i:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->c:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method private final v()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->f:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->c:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final w()Landroid/widget/LinearLayout;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->j:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->c:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private final z()V
    .locals 4

    .line 88
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->o()Lo/SignatureNotFoundException;

    move-result-object v0

    invoke-virtual {v0}, Lo/SignatureNotFoundException;->p()Lo/TextLinksParams;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$initSMSRetrieverManager$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$initSMSRetrieverManager$1;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;)V

    check-cast v1, Lo/alA;

    .line 92
    sget-object v2, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$initSMSRetrieverManager$2;->e:Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$initSMSRetrieverManager$2;

    check-cast v2, Lo/alB;

    .line 96
    sget-object v3, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$initSMSRetrieverManager$3;->c:Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment$initSMSRetrieverManager$3;

    check-cast v3, Lo/alB;

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Lo/TextLinksParams;->b(Lo/alA;Lo/alB;Lo/alB;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->t:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->t:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->t:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->t:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->t:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 187
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->o()Lo/SignatureNotFoundException;

    move-result-object v0

    invoke-virtual {v0}, Lo/SignatureNotFoundException;->o()Lo/Cloneable;

    move-result-object v0

    .line 188
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_0

    const-string v3, "formDataObserverFactory"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->q()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;)Lo/BulletSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 187
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public c(Lo/SignatureNotFoundException;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->d:Lo/SignatureNotFoundException;

    return-void
.end method

.method public d()V
    .locals 5

    .line 180
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->o()Lo/SignatureNotFoundException;

    move-result-object v0

    invoke-virtual {v0}, Lo/SignatureNotFoundException;->d()Lo/Cloneable;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 182
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_0

    const-string v3, "formDataObserverFactory"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->s()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->t()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;Landroid/view/View;)Lo/AccessibilityClickableSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 180
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 142
    invoke-super {p0}, Lo/ByteBufferDataSource;->e()V

    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->p:Lo/VrListenerService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/VrListenerService;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->o()Lo/SignatureNotFoundException;

    move-result-object v0

    invoke-virtual {v0}, Lo/SignatureNotFoundException;->e()V

    :cond_0
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->e:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic j()Lo/Explode;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->o()Lo/SignatureNotFoundException;

    move-result-object v0

    check-cast v0, Lo/Explode;

    return-object v0
.end method

.method public final k()Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->g:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->c:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    return-object v0
.end method

.method public l()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->b:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public o()Lo/SignatureNotFoundException;
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->d:Lo/SignatureNotFoundException;

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

    .line 66
    invoke-super {p0, p1}, Lo/ByteBufferDataSource;->onAttach(Landroid/content/Context;)V

    .line 67
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->viewModelInitializer:Lo/StrictJarManifest;

    if-nez p1, :cond_0

    const-string v0, "viewModelInitializer"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Lo/StrictJarManifest;->d(Landroidx/fragment/app/Fragment;)Lo/SignatureNotFoundException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->c(Lo/SignatureNotFoundException;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->dm:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/ByteBufferDataSource;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->b()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-super {p0, p1, p2}, Lo/ByteBufferDataSource;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 76
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->B()V

    .line 77
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->D()V

    .line 78
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->F()V

    .line 79
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->A()V

    .line 80
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->y()V

    .line 82
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->o()Lo/SignatureNotFoundException;

    move-result-object p1

    invoke-virtual {p1}, Lo/SignatureNotFoundException;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->z()V

    :cond_0
    return-void
.end method

.method public final p()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->l:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->c:[Lo/amT;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    return-object v0
.end method

.method public final q()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->o:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->c:[Lo/amT;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    return-object v0
.end method

.method public final r()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->k:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->c:[Lo/amT;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method public final s()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->m:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->c:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method

.method public final t()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->n:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->c:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final x()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->s:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->c:[Lo/amT;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method

.method public y()V
    .locals 3

    .line 136
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->o()Lo/SignatureNotFoundException;

    move-result-object v0

    invoke-virtual {v0}, Lo/SignatureNotFoundException;->s()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->k()Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->setVisibility(I)V

    .line 138
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpCodeEntry/OTPEntryFragment;->k()Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
