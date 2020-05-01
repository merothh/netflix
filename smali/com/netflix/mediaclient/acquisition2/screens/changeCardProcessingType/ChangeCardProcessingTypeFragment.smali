.class public final Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;
.super Lo/Transition;
.source ""


# static fields
.field static final synthetic a:[Lo/amT;


# instance fields
.field public c:Lo/TransitionListenerAdapter;

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

.field private k:Ljava/util/HashMap;

.field public viewModelInitializer:Lo/TranslationAnimationCreator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;

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

    const-string v4, "nextButton"

    const-string v5, "getNextButton()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "backButton"

    const-string v4, "getBackButton()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->a:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lo/Transition;-><init>()V

    .line 25
    sget-object v0, Lcom/netflix/cl/model/AppView;->cardProcessTypeInput:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->e:Lcom/netflix/cl/model/AppView;

    const-string v0, "paymentChangeCardProcessingType"

    .line 26
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->d:Ljava/lang/String;

    .line 35
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qO:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->j:Lo/ams;

    .line 37
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vD:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->i:Lo/ams;

    .line 38
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rB:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->g:Lo/ams;

    .line 40
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->lg:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->h:Lo/ams;

    .line 42
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->H:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->f:Lo/ams;

    return-void
.end method

.method private final p()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->w()V

    .line 59
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->y()V

    return-void
.end method

.method private final r()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->g:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->a:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    return-object v0
.end method

.method private final w()V
    .locals 7

    .line 63
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->r()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->k()Lo/TransitionListenerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lo/TransitionListenerAdapter;->e()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    .line 66
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->k()Lo/TransitionListenerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lo/TransitionListenerAdapter;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 63
    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setStrings$default(Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;ILjava/lang/Object;)V

    .line 68
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->r()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->startAlignText()V

    return-void
.end method

.method private final y()V
    .locals 3

    .line 72
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->q()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->k()Lo/TransitionListenerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lo/TransitionListenerAdapter;->f()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->q()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment$Application;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment$Application;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->s()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->k()Lo/TransitionListenerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lo/TransitionListenerAdapter;->h()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->s()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Application;->an:I

    sget v2, Lcom/netflix/mediaclient/ui/R$Application;->U:I

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->updateTextAndButtonColor(II)V

    .line 79
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->s()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment$ActionBar;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment$ActionBar;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->k:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->k:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->k:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->k:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->k:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 5

    .line 92
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->k()Lo/TransitionListenerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/TransitionListenerAdapter;->g()Lo/Cloneable;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    const-string v3, "formDataObserverFactory"

    if-nez v2, :cond_0

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->q()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v4

    invoke-virtual {v2, v4}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;)Lo/BulletSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 92
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    .line 96
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->k()Lo/TransitionListenerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/TransitionListenerAdapter;->g()Lo/Cloneable;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_1

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->s()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;)Lo/BulletSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 96
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public d()V
    .locals 5

    .line 85
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->k()Lo/TransitionListenerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/TransitionListenerAdapter;->d()Lo/Cloneable;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_0

    const-string v3, "formDataObserverFactory"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->t()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->m()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;Landroid/view/View;)Lo/AccessibilityClickableSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 85
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public e(Lo/TransitionListenerAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->c:Lo/TransitionListenerAdapter;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->d:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic j()Lo/Explode;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->k()Lo/TransitionListenerAdapter;

    move-result-object v0

    check-cast v0, Lo/Explode;

    return-object v0
.end method

.method public k()Lo/TransitionListenerAdapter;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->c:Lo/TransitionListenerAdapter;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public l()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->e:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public final m()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->j:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->a:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lo/Transition;->onAttach(Landroid/content/Context;)V

    .line 46
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->viewModelInitializer:Lo/TranslationAnimationCreator;

    if-nez p1, :cond_0

    const-string v0, "viewModelInitializer"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, p0}, Lo/TranslationAnimationCreator;->b(Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;)Lo/TransitionListenerAdapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->e(Lo/TransitionListenerAdapter;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->q:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/Transition;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->b()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-super {p0, p1, p2}, Lo/Transition;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 54
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->p()V

    return-void
.end method

.method public final q()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->h:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->a:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    return-object v0
.end method

.method public final s()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->f:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->a:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    return-object v0
.end method

.method public final t()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->i:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/changeCardProcessingType/ChangeCardProcessingTypeFragment;->a:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method
