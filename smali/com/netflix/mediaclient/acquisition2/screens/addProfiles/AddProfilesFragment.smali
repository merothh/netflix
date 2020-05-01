.class public final Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;
.super Lo/TransitionInflater;
.source ""


# static fields
.field static final synthetic e:[Lo/amT;


# instance fields
.field public a:Lo/SidePropagation;

.field private final b:Lcom/netflix/cl/model/AppView;

.field private final d:Ljava/lang/String;

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

.field private final o:Lo/aka;

.field private s:Ljava/util/HashMap;

.field public viewModelInitializer:Lo/Slide;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;

    const/16 v1, 0x9

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "ctaButton"

    const-string v5, "getCtaButton()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

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

    const/4 v3, 0x1

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

    const/4 v3, 0x2

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

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "ownerName"

    const-string v5, "getOwnerName()Lcom/netflix/mediaclient/acquisition2/components/form2/profileEntryEditText/ProfileEntryEditTextCheckbox;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "userProfile1"

    const-string v5, "getUserProfile1()Lcom/netflix/mediaclient/acquisition2/components/form2/profileEntryEditText/ProfileEntryEditTextCheckbox;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "userProfile2"

    const-string v5, "getUserProfile2()Lcom/netflix/mediaclient/acquisition2/components/form2/profileEntryEditText/ProfileEntryEditTextCheckbox;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "userProfile3"

    const-string v5, "getUserProfile3()Lcom/netflix/mediaclient/acquisition2/components/form2/profileEntryEditText/ProfileEntryEditTextCheckbox;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "userProfile4"

    const-string v4, "getUserProfile4()Lcom/netflix/mediaclient/acquisition2/components/form2/profileEntryEditText/ProfileEntryEditTextCheckbox;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->e:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lo/TransitionInflater;-><init>()V

    const-string v0, "addprofiles"

    .line 29
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->d:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/netflix/cl/model/AppView;->addProfilesOnboarding:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->b:Lcom/netflix/cl/model/AppView;

    .line 34
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cY:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->f:Lo/ams;

    .line 36
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rB:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->i:Lo/ams;

    .line 38
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qO:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->h:Lo/ams;

    .line 40
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vD:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->g:Lo/ams;

    .line 43
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->lN:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->j:Lo/ams;

    .line 45
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uo:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->m:Lo/ams;

    .line 47
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ur:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->n:Lo/ams;

    .line 49
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->up:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->k:Lo/ams;

    .line 51
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uq:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->l:Lo/ams;

    .line 54
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment$profileViewList$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment$profileViewList$2;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;)V

    check-cast v0, Lo/alB;

    invoke-static {v0}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->o:Lo/aka;

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->s:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->s:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->s:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->s:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public a()Lo/SidePropagation;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->a:Lo/SidePropagation;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->s:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public b(Lo/SidePropagation;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->a:Lo/SidePropagation;

    return-void
.end method

.method public c()V
    .locals 4

    .line 132
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->a()Lo/SidePropagation;

    move-result-object v0

    invoke-virtual {v0}, Lo/SidePropagation;->g()Lo/Cloneable;

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_0

    const-string v3, "formDataObserverFactory"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->m()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;)Lo/BulletSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 132
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public d()V
    .locals 5

    .line 125
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->a()Lo/SidePropagation;

    move-result-object v0

    invoke-virtual {v0}, Lo/SidePropagation;->d()Lo/Cloneable;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v2, :cond_0

    const-string v3, "formDataObserverFactory"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->k()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->o()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;Landroid/view/View;)Lo/AccessibilityClickableSpan;

    move-result-object v2

    check-cast v2, Lo/ClassFormatError;

    .line 125
    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subHeadingStrings"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->n()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x0

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setStrings$default(Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;ILjava/lang/Object;)V

    .line 121
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->n()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->startAlignText()V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->d:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic j()Lo/Explode;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->a()Lo/SidePropagation;

    move-result-object v0

    check-cast v0, Lo/Explode;

    return-object v0
.end method

.method public final k()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->g:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->e:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method

.method public l()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->b:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public final m()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->f:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->e:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    return-object v0
.end method

.method public final n()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->i:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->e:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    return-object v0
.end method

.method public final o()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->h:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->e:[Lo/amT;

    const/4 v2, 0x2

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

    .line 62
    invoke-super {p0, p1}, Lo/TransitionInflater;->onAttach(Landroid/content/Context;)V

    .line 63
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->viewModelInitializer:Lo/Slide;

    if-nez p1, :cond_0

    const-string v0, "viewModelInitializer"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Lo/Slide;->c(Landroidx/fragment/app/Fragment;)Lo/SidePropagation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->b(Lo/SidePropagation;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->by:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/TransitionInflater;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->b()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-super {p0, p1, p2}, Lo/TransitionInflater;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->a()Lo/SidePropagation;

    move-result-object p1

    invoke-virtual {p1}, Lo/SidePropagation;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->a()Lo/SidePropagation;

    move-result-object p2

    invoke-virtual {p2}, Lo/SidePropagation;->f()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->d(Ljava/lang/String;Ljava/util/List;)V

    .line 72
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->u()V

    .line 73
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->x()V

    return-void
.end method

.method public final p()Lo/ArrowKeyMovementMethod;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->l:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->e:[Lo/amT;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ArrowKeyMovementMethod;

    return-object v0
.end method

.method public final q()Lo/ArrowKeyMovementMethod;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->n:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->e:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ArrowKeyMovementMethod;

    return-object v0
.end method

.method public final r()Lo/ArrowKeyMovementMethod;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->k:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->e:[Lo/amT;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ArrowKeyMovementMethod;

    return-object v0
.end method

.method public final s()Lo/ArrowKeyMovementMethod;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->j:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->e:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ArrowKeyMovementMethod;

    return-object v0
.end method

.method public final t()Lo/ArrowKeyMovementMethod;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->m:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->e:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ArrowKeyMovementMethod;

    return-object v0
.end method

.method public final u()V
    .locals 4

    .line 86
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment$TaskDescription;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment$TaskDescription;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;)V

    .line 91
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->s()Lo/ArrowKeyMovementMethod;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->a()Lo/SidePropagation;

    move-result-object v2

    invoke-virtual {v2}, Lo/SidePropagation;->m()Lo/DateTimeKeyListener;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->a()Lo/SidePropagation;

    move-result-object v3

    invoke-virtual {v3}, Lo/SidePropagation;->i()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lo/ArrowKeyMovementMethod$Application;

    invoke-virtual {v1, v2, v3, v0}, Lo/ArrowKeyMovementMethod;->c(Lo/DateTimeKeyListener;Ljava/lang/String;Lo/ArrowKeyMovementMethod$Application;)V

    .line 92
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->t()Lo/ArrowKeyMovementMethod;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->a()Lo/SidePropagation;

    move-result-object v2

    invoke-virtual {v2}, Lo/SidePropagation;->l()Lo/DateTimeKeyListener;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->a()Lo/SidePropagation;

    move-result-object v3

    invoke-virtual {v3}, Lo/SidePropagation;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lo/ArrowKeyMovementMethod;->c(Lo/DateTimeKeyListener;Ljava/lang/String;Lo/ArrowKeyMovementMethod$Application;)V

    .line 93
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->q()Lo/ArrowKeyMovementMethod;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->a()Lo/SidePropagation;

    move-result-object v2

    invoke-virtual {v2}, Lo/SidePropagation;->o()Lo/DateTimeKeyListener;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->a()Lo/SidePropagation;

    move-result-object v3

    invoke-virtual {v3}, Lo/SidePropagation;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lo/ArrowKeyMovementMethod;->c(Lo/DateTimeKeyListener;Ljava/lang/String;Lo/ArrowKeyMovementMethod$Application;)V

    .line 94
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->r()Lo/ArrowKeyMovementMethod;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->a()Lo/SidePropagation;

    move-result-object v2

    invoke-virtual {v2}, Lo/SidePropagation;->k()Lo/DateTimeKeyListener;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->a()Lo/SidePropagation;

    move-result-object v3

    invoke-virtual {v3}, Lo/SidePropagation;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lo/ArrowKeyMovementMethod;->c(Lo/DateTimeKeyListener;Ljava/lang/String;Lo/ArrowKeyMovementMethod$Application;)V

    .line 95
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->p()Lo/ArrowKeyMovementMethod;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->a()Lo/SidePropagation;

    move-result-object v2

    invoke-virtual {v2}, Lo/SidePropagation;->t()Lo/DateTimeKeyListener;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->a()Lo/SidePropagation;

    move-result-object v3

    invoke-virtual {v3}, Lo/SidePropagation;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lo/ArrowKeyMovementMethod;->c(Lo/DateTimeKeyListener;Ljava/lang/String;Lo/ArrowKeyMovementMethod$Application;)V

    return-void
.end method

.method public final v()V
    .locals 8

    .line 99
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ArrowKeyMovementMethod;

    const/4 v2, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->y()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/ArrowKeyMovementMethod;

    .line 103
    invoke-static {v1, v4}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    if-eqz v5, :cond_3

    .line 104
    invoke-virtual {v1}, Lo/ArrowKeyMovementMethod;->a()Lo/DateTimeKeyListener;

    move-result-object v5

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lo/DateTimeKeyListener;->c()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v7

    .line 105
    :goto_1
    invoke-virtual {v4}, Lo/ArrowKeyMovementMethod;->a()Lo/DateTimeKeyListener;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lo/DateTimeKeyListener;->c()Ljava/lang/String;

    move-result-object v7

    .line 107
    :cond_2
    invoke-static {v5}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v7}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v5, v7}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    .line 111
    :cond_3
    invoke-virtual {v1, v2}, Lo/ArrowKeyMovementMethod;->setIsDuplicateName(Z)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final x()V
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->m()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment$Activity;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment$Activity;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/ArrowKeyMovementMethod;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/addProfiles/AddProfilesFragment;->o:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
