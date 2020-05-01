.class public final Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;
.super Lo/ProtoParseException;
.source ""


# static fields
.field static final synthetic a:[Lo/amT;


# instance fields
.field public adapterFactory:Lo/VoiceInteractionManagerInternal;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final d:Lcom/netflix/cl/model/AppView;

.field public e:Lo/ActionProvider;

.field private final f:Lo/ams;

.field public formDataObserverFactory:Lo/WallpaperSettingsActivity;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final g:Lo/ams;

.field private h:Lo/VrListenerService;

.field private final i:Lo/ams;

.field private final j:Lo/ams;

.field private final k:Lo/ams;

.field private n:Ljava/util/HashMap;

.field private final o:Lo/ams;

.field public viewModelInitializer:Lo/AbsSavedState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;

    const/4 v1, 0x6

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

    const-string v4, "signupHeading"

    const-string v5, "getSignupHeading()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "phoneInputForm"

    const-string v5, "getPhoneInputForm()Landroidx/recyclerview/widget/RecyclerView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "sendSMSCodeButton"

    const-string v5, "getSendSMSCodeButton()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "noneOfTheAboveButton"

    const-string v4, "getNoneOfTheAboveButton()Lcom/netflix/mediaclient/android/widget/NetflixTextButton;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->a:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lo/ProtoParseException;-><init>()V

    const-string v0, "otpCode"

    .line 30
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->b:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/netflix/cl/model/AppView;->phoneNumberInput:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->d:Lcom/netflix/cl/model/AppView;

    .line 44
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qO:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->g:Lo/ams;

    .line 46
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vD:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->f:Lo/ams;

    .line 48
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rB:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->i:Lo/ams;

    .line 50
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->mf:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->j:Lo/ams;

    .line 52
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rs:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->k:Lo/ams;

    .line 54
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->lm:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->o:Lo/ams;

    return-void
.end method

.method private final p()Landroidx/recyclerview/widget/RecyclerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->j:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->a:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method private final w()V
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->q()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment$Application;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment$Application;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->r()Lo/HorizontalScrollView;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment$Activity;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment$Activity;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final x()V
    .locals 5

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->adapterFactory:Lo/VoiceInteractionManagerInternal;

    if-nez v0, :cond_0

    const-string v1, "adapterFactory"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->o()Lo/ActionProvider;

    move-result-object v1

    invoke-virtual {v1}, Lo/ActionProvider;->k()Ljava/util/List;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lo/RecognizerIntent;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v3

    const-string v4, "viewLifecycleOwner"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/VoiceInteractionManagerInternal;->c(Ljava/util/List;Lo/RecognizerIntent;Lo/UnicodeScript;Z)Lo/VrListenerService;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lo/VrListenerService;->c()V

    .line 83
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->p()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 84
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->h:Lo/VrListenerService;

    return-void
.end method

.method private final y()V
    .locals 4

    .line 74
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->q()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->o()Lo/ActionProvider;

    move-result-object v1

    invoke-virtual {v1}, Lo/ActionProvider;->h()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->r()Lo/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->o()Lo/ActionProvider;

    move-result-object v1

    invoke-virtual {v1}, Lo/ActionProvider;->j()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->t()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->o()Lo/ActionProvider;

    move-result-object v1

    invoke-virtual {v1}, Lo/ActionProvider;->o()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->o()Lo/ActionProvider;

    move-result-object v2

    invoke-virtual {v2}, Lo/ActionProvider;->n()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 77
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->t()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->startAlignText()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->n:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->n:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->n:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->n:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->n:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 113
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->o()Lo/ActionProvider;

    move-result-object v0

    invoke-virtual {v0}, Lo/ActionProvider;->g()Lo/Cloneable;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_0

    const-string v3, "formDataObserverFactory"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->q()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;)Lo/BulletSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 113
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public d()V
    .locals 5

    .line 106
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->o()Lo/ActionProvider;

    move-result-object v0

    invoke-virtual {v0}, Lo/ActionProvider;->d()Lo/Cloneable;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 108
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_0

    const-string v3, "formDataObserverFactory"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->s()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->n()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;Landroid/view/View;)Lo/AccessibilityClickableSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 106
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 98
    invoke-super {p0}, Lo/ProtoParseException;->e()V

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->h:Lo/VrListenerService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/VrListenerService;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->o()Lo/ActionProvider;

    move-result-object v0

    invoke-virtual {v0}, Lo/ActionProvider;->e()V

    :cond_0
    return-void
.end method

.method public e(Lo/ActionProvider;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->e:Lo/ActionProvider;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic j()Lo/Explode;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->o()Lo/ActionProvider;

    move-result-object v0

    check-cast v0, Lo/Explode;

    return-object v0
.end method

.method public l()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->d:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public final n()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->g:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->a:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public o()Lo/ActionProvider;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->e:Lo/ActionProvider;

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

    .line 57
    invoke-super {p0, p1}, Lo/ProtoParseException;->onAttach(Landroid/content/Context;)V

    .line 59
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->viewModelInitializer:Lo/AbsSavedState;

    if-nez p1, :cond_0

    const-string v0, "viewModelInitializer"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Lo/AbsSavedState;->b(Landroidx/fragment/app/Fragment;)Lo/ActionProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->e(Lo/ActionProvider;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->dj:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/ProtoParseException;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->b()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-super {p0, p1, p2}, Lo/ProtoParseException;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 68
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->y()V

    .line 69
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->x()V

    .line 70
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->w()V

    return-void
.end method

.method public final q()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->k:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->a:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    return-object v0
.end method

.method public final r()Lo/HorizontalScrollView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->o:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->a:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    return-object v0
.end method

.method public final s()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->f:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->a:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method

.method public final t()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->i:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/otpSelectPhone/OTPSelectPhoneNumberFragment;->a:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    return-object v0
.end method
