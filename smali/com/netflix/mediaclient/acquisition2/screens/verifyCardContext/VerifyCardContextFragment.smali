.class public final Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;
.super Lo/LinearInterpolator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment$Activity;
    }
.end annotation


# static fields
.field static final synthetic e:[Lo/amT;


# instance fields
.field private final b:Lcom/netflix/cl/model/AppView;

.field public c:Lo/LayoutAnimationController;

.field private final d:Ljava/lang/String;

.field private final f:Lo/ams;

.field private g:Ljava/util/HashMap;

.field private final h:Lo/ams;

.field private final i:Lo/ams;

.field private final j:Lo/ams;

.field public stringProvider:Lo/InputBinding;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public verifyCardContextClickListener:Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment$Activity;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public viewModelInitializer:Lo/OvershootInterpolator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;

    const/4 v1, 0x4

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "contextIcon"

    const-string v5, "getContextIcon()Landroid/widget/ImageView;"

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

    const-string v4, "contextButton"

    const-string v5, "getContextButton()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "userMessage"

    const-string v4, "getUserMessage()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->e:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lo/LinearInterpolator;-><init>()V

    const-string v0, "verifyCardContext"

    .line 29
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->d:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/netflix/cl/model/AppView;->paymentVerifyCardContext:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->b:Lcom/netflix/cl/model/AppView;

    .line 42
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cV:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->h:Lo/ams;

    .line 44
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rB:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->i:Lo/ams;

    .line 46
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->cQ:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->j:Lo/ams;

    .line 48
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->un:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->f:Lo/ams;

    return-void
.end method

.method public static synthetic d(Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 61
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p3

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 62
    sget p4, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aD:I

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->b(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;I)V

    return-void
.end method

.method private final p()V
    .locals 4

    .line 80
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->r()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->c()Lo/LayoutAnimationController;

    move-result-object v1

    invoke-virtual {v1}, Lo/LayoutAnimationController;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 81
    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->stringProvider:Lo/InputBinding;

    if-nez v2, :cond_0

    const-string v3, "stringProvider"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2, v1}, Lo/InputBinding;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 80
    :goto_0
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private final r()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->f:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->e:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method

.method private final s()V
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->m()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment$StateListAnimator;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment$StateListAnimator;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->g:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->g:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->g:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "subHeadingStrings"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->k()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-virtual {v0, p4}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setSubHeadingPixelWidth(I)V

    .line 65
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->k()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p1

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setStrings$default(Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public b(Lo/LayoutAnimationController;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->c:Lo/LayoutAnimationController;

    return-void
.end method

.method public c()Lo/LayoutAnimationController;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->c:Lo/LayoutAnimationController;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->d:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic j()Lo/Explode;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->c()Lo/LayoutAnimationController;

    move-result-object v0

    check-cast v0, Lo/Explode;

    return-object v0
.end method

.method public final k()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->i:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->e:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    return-object v0
.end method

.method public l()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->b:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public final m()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->j:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->e:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    return-object v0
.end method

.method public final n()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->h:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->e:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final o()Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment$Activity;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->verifyCardContextClickListener:Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment$Activity;

    if-nez v0, :cond_0

    const-string v1, "verifyCardContextClickListener"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-super {p0, p1}, Lo/LinearInterpolator;->onAttach(Landroid/content/Context;)V

    .line 52
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->viewModelInitializer:Lo/OvershootInterpolator;

    if-nez p1, :cond_0

    const-string v0, "viewModelInitializer"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lo/OvershootInterpolator;->e()Lo/LayoutAnimationController;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->b(Lo/LayoutAnimationController;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->u:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/LinearInterpolator;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->b()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-super {p0, p1, p2}, Lo/LinearInterpolator;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->c()Lo/LayoutAnimationController;

    move-result-object p2

    invoke-virtual {p2}, Lo/LayoutAnimationController;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->c()Lo/LayoutAnimationController;

    move-result-object p2

    invoke-virtual {p2}, Lo/LayoutAnimationController;->d()Ljava/util/List;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->d(Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;IILjava/lang/Object;)V

    .line 71
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->m()Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    move-result-object p2

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->av:I

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.button_verify_card)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->c()Lo/LayoutAnimationController;

    move-result-object p2

    invoke-virtual {p2}, Lo/LayoutAnimationController;->e()I

    move-result p2

    invoke-static {p1, p2}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->n()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->s()V

    .line 76
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCardContext/VerifyCardContextFragment;->p()V

    return-void
.end method
