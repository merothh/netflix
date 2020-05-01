.class public final Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;
.super Lo/StrictJarManifestReader;
.source ""


# static fields
.field static final synthetic d:[Lo/amT;


# instance fields
.field private final a:Ljava/lang/String;

.field public adapterFactory:Lo/VoiceInteractionManagerInternal;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Lo/ProtoUtils;

.field private final e:Lcom/netflix/cl/model/AppView;

.field private final f:Lo/ams;

.field public formDataObserverFactory:Lo/WallpaperSettingsActivity;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private g:Lo/VrListenerService;

.field private final h:Lo/ams;

.field private final i:Lo/ams;

.field private final j:Lo/ams;

.field private l:Ljava/util/HashMap;

.field private final o:Lo/ams;

.field public viewModelInitializer:Lo/StrictJarVerifier;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;

    const/4 v1, 0x5

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

    move-result-object v0

    const-string v3, "textMeButton"

    const-string v4, "getTextMeButton()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->d:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lo/StrictJarManifestReader;-><init>()V

    const-string v0, "otpCode"

    .line 29
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->a:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/netflix/cl/model/AppView;->phoneNumberInput:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->e:Lcom/netflix/cl/model/AppView;

    .line 43
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qO:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->j:Lo/ams;

    .line 45
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vD:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->f:Lo/ams;

    .line 47
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rB:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->h:Lo/ams;

    .line 49
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->lZ:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->i:Lo/ams;

    .line 51
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->tc:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->o:Lo/ams;

    return-void
.end method

.method private final q()Landroidx/recyclerview/widget/RecyclerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->i:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->d:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method private final t()V
    .locals 4

    .line 70
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->p()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->m()Lo/ProtoUtils;

    move-result-object v1

    invoke-virtual {v1}, Lo/ProtoUtils;->g()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->s()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->m()Lo/ProtoUtils;

    move-result-object v1

    invoke-virtual {v1}, Lo/ProtoUtils;->j()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->m()Lo/ProtoUtils;

    move-result-object v2

    invoke-virtual {v2}, Lo/ProtoUtils;->h()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 72
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->s()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->startAlignText()V

    return-void
.end method

.method private final x()V
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->p()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment$TaskDescription;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment$TaskDescription;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final y()V
    .locals 5

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->adapterFactory:Lo/VoiceInteractionManagerInternal;

    if-nez v0, :cond_0

    const-string v1, "adapterFactory"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->m()Lo/ProtoUtils;

    move-result-object v1

    invoke-virtual {v1}, Lo/ProtoUtils;->f()Ljava/util/List;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lo/RecognizerIntent;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v3

    const-string v4, "viewLifecycleOwner"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/VoiceInteractionManagerInternal;->c(Ljava/util/List;Lo/RecognizerIntent;Lo/UnicodeScript;Z)Lo/VrListenerService;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lo/VrListenerService;->c()V

    .line 78
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->q()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 79
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->g:Lo/VrListenerService;

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->l:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->l:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->l:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->l:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public a(Lo/ProtoUtils;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->c:Lo/ProtoUtils;

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->l:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 104
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->m()Lo/ProtoUtils;

    move-result-object v0

    invoke-virtual {v0}, Lo/ProtoUtils;->i()Lo/Cloneable;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_0

    const-string v3, "formDataObserverFactory"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->p()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;)Lo/BulletSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 104
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public d()V
    .locals 5

    .line 97
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->m()Lo/ProtoUtils;

    move-result-object v0

    invoke-virtual {v0}, Lo/ProtoUtils;->d()Lo/Cloneable;

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_0

    const-string v3, "formDataObserverFactory"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->r()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->n()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;Landroid/view/View;)Lo/AccessibilityClickableSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 97
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 89
    invoke-super {p0}, Lo/StrictJarManifestReader;->e()V

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->g:Lo/VrListenerService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/VrListenerService;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->m()Lo/ProtoUtils;

    move-result-object v0

    invoke-virtual {v0}, Lo/ProtoUtils;->e()V

    :cond_0
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic j()Lo/Explode;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->m()Lo/ProtoUtils;

    move-result-object v0

    check-cast v0, Lo/Explode;

    return-object v0
.end method

.method public l()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->e:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public m()Lo/ProtoUtils;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->c:Lo/ProtoUtils;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final n()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->j:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->d:[Lo/amT;

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

    .line 54
    invoke-super {p0, p1}, Lo/StrictJarManifestReader;->onAttach(Landroid/content/Context;)V

    .line 55
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->viewModelInitializer:Lo/StrictJarVerifier;

    if-nez p1, :cond_0

    const-string v0, "viewModelInitializer"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Lo/StrictJarVerifier;->e(Landroidx/fragment/app/Fragment;)Lo/ProtoUtils;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->a(Lo/ProtoUtils;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->dh:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/StrictJarManifestReader;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->b()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-super {p0, p1, p2}, Lo/StrictJarManifestReader;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 64
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->t()V

    .line 65
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->y()V

    .line 66
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->x()V

    return-void
.end method

.method public final p()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->o:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->d:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    return-object v0
.end method

.method public final r()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->f:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->d:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method

.method public final s()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->h:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/otpPhoneEntry/OTPPhoneNumberFragment;->d:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    return-object v0
.end method
