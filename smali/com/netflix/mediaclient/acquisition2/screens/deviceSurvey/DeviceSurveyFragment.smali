.class public final Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;
.super Lo/FloatProperty;
.source ""


# static fields
.field static final synthetic e:[Lo/amT;


# instance fields
.field public a:Lo/KeyValueListParser;

.field private final b:Lcom/netflix/cl/model/AppView;

.field private final c:Ljava/lang/String;

.field public deviceSurveyDeviceContainerViewFactory:Lo/IntArray;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final f:Lo/ams;

.field private g:Ljava/util/HashMap;

.field private final h:Lo/ams;

.field private final j:Lo/ams;

.field public viewModelInitializer:Lo/JsonWriter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;

    const/4 v1, 0x3

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

    move-result-object v0

    const-string v3, "deviceSurveyDeviceContainer"

    const-string v4, "getDeviceSurveyDeviceContainer()Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyDeviceContainer;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->e:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lo/FloatProperty;-><init>()V

    const-string v0, "devicesurvey"

    .line 25
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->c:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/netflix/cl/model/AppView;->deviceSurvey:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->b:Lcom/netflix/cl/model/AppView;

    .line 30
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cY:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->f:Lo/ams;

    .line 32
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rB:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->h:Lo/ams;

    .line 34
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->el:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->j:Lo/ams;

    return-void
.end method

.method private final r()V
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->o()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment$StateListAnimator;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment$StateListAnimator;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->g:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->g:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->g:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/util/List;)V
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

    .line 66
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->n()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x0

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setStrings$default(Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;ILjava/lang/Object;)V

    .line 67
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->n()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->startAlignText()V

    return-void
.end method

.method public c()Lo/KeyValueListParser;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->a:Lo/KeyValueListParser;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public c(Lo/KeyValueListParser;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->a:Lo/KeyValueListParser;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->c:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic j()Lo/Explode;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->c()Lo/KeyValueListParser;

    move-result-object v0

    check-cast v0, Lo/Explode;

    return-object v0
.end method

.method public final k()Lo/FeatureFlagUtils;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->j:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->e:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/FeatureFlagUtils;

    return-object v0
.end method

.method public l()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->b:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public final m()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->deviceSurveyDeviceContainerViewFactory:Lo/IntArray;

    if-nez v0, :cond_0

    const-string v1, "deviceSurveyDeviceContainerViewFactory"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->k()Lo/FeatureFlagUtils;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/IntArray;->e(Lo/FeatureFlagUtils;)Lo/IconDrawableFactory;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->c()Lo/KeyValueListParser;

    move-result-object v1

    invoke-virtual {v1}, Lo/KeyValueListParser;->i()Lo/LauncherIcons;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/IconDrawableFactory;->b(Lo/LauncherIcons;)V

    return-void
.end method

.method public final n()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->h:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->e:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    return-object v0
.end method

.method public final o()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->f:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->e:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1}, Lo/FloatProperty;->onAttach(Landroid/content/Context;)V

    .line 44
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->viewModelInitializer:Lo/JsonWriter;

    if-nez p1, :cond_0

    const-string v0, "viewModelInitializer"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Lo/JsonWriter;->a(Landroidx/fragment/app/Fragment;)Lo/KeyValueListParser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->c(Lo/KeyValueListParser;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->bx:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/FloatProperty;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->b()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-super {p0, p1, p2}, Lo/FloatProperty;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->c()Lo/KeyValueListParser;

    move-result-object p1

    invoke-virtual {p1}, Lo/KeyValueListParser;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->c()Lo/KeyValueListParser;

    move-result-object p2

    invoke-virtual {p2}, Lo/KeyValueListParser;->f()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->b(Ljava/lang/String;Ljava/util/List;)V

    .line 53
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->m()V

    .line 54
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/deviceSurvey/DeviceSurveyFragment;->r()V

    return-void
.end method
