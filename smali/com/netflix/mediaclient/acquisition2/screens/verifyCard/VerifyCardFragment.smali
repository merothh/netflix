.class public final Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;
.super Lo/AnticipateOvershootInterpolator;
.source ""


# static fields
.field static final synthetic b:[Lo/amT;


# instance fields
.field private final a:Lcom/netflix/cl/model/AppView;

.field private final c:Ljava/lang/String;

.field public d:Lo/ClipRectAnimation;

.field private final f:Lo/ams;

.field private g:Ljava/util/HashMap;

.field private final h:Lo/ams;

.field private final i:Lo/ams;

.field private final j:Lo/ams;

.field public viewModelInitializer:Lo/GridLayoutAnimationController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;

    const/4 v1, 0x4

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "signupHeading"

    const-string v5, "getSignupHeading()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "webView"

    const-string v5, "getWebView()Landroid/webkit/WebView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "webViewContainer"

    const-string v5, "getWebViewContainer()Landroid/widget/RelativeLayout;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "goBackButton"

    const-string v4, "getGoBackButton()Landroid/widget/TextView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->b:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lo/AnticipateOvershootInterpolator;-><init>()V

    const-string v0, "verifyCard"

    .line 27
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->c:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/netflix/cl/model/AppView;->paymentVerifyCard:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->a:Lcom/netflix/cl/model/AppView;

    .line 31
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rB:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->h:Lo/ams;

    .line 33
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vJ:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->f:Lo/ams;

    .line 35
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vG:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->j:Lo/ams;

    .line 37
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->hf:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->i:Lo/ams;

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 60
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object p3

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 61
    sget p4, Lcom/netflix/mediaclient/ui/R$TaskDescription;->aD:I

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->b(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;I)V

    return-void
.end method

.method private final b(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;I)V
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

    .line 63
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->o()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-virtual {v0, p4}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setSubHeadingPixelWidth(I)V

    .line 64
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->o()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

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

.method private final n()V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->k()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment$TaskDescription;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment$TaskDescription;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final s()V
    .locals 9

    .line 72
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->m()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->d()Lo/ClipRectAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lo/ClipRectAnimation;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->d()Lo/ClipRectAnimation;

    move-result-object v2

    invoke-virtual {v2}, Lo/ClipRectAnimation;->i()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 73
    sget-object v3, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities;->INSTANCE:Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities;

    .line 74
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->m()Landroid/webkit/WebView;

    move-result-object v4

    .line 75
    new-instance v0, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods$VerifyCard;

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment$initWebView$1;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->d()Lo/ClipRectAnimation;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment$initWebView$1;-><init>(Lo/ClipRectAnimation;)V

    check-cast v1, Lo/alA;

    const/4 v2, 0x0

    const/4 v5, 0x2

    invoke-direct {v0, v1, v2, v5, v2}, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods$VerifyCard;-><init>(Lo/alA;Landroid/os/Handler;ILo/amc;)V

    move-object v5, v0

    check-cast v5, Lcom/netflix/mediaclient/acquisition/util/BridgeMethodGroup;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 73
    invoke-static/range {v3 .. v8}, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities;->initWebView$default(Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities;Landroid/webkit/WebView;Lcom/netflix/mediaclient/acquisition/util/BridgeMethodGroup;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->g:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->g:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->g:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public a(Lo/ClipRectAnimation;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->d:Lo/ClipRectAnimation;

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public d()Lo/ClipRectAnimation;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->d:Lo/ClipRectAnimation;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->c:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic j()Lo/Explode;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->d()Lo/ClipRectAnimation;

    move-result-object v0

    check-cast v0, Lo/Explode;

    return-object v0
.end method

.method public final k()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->i:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->b:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public l()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->a:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public final m()Landroid/webkit/WebView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->f:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->b:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method public final o()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->h:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->b:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-super {p0, p1}, Lo/AnticipateOvershootInterpolator;->onAttach(Landroid/content/Context;)V

    .line 44
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->viewModelInitializer:Lo/GridLayoutAnimationController;

    if-nez p1, :cond_0

    const-string v0, "viewModelInitializer"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Lo/GridLayoutAnimationController;->c(Landroidx/fragment/app/Fragment;)Lo/ClipRectAnimation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->a(Lo/ClipRectAnimation;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->bP:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/AnticipateOvershootInterpolator;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->b()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-super {p0, p1, p2}, Lo/AnticipateOvershootInterpolator;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->d()Lo/ClipRectAnimation;

    move-result-object p1

    invoke-virtual {p1}, Lo/ClipRectAnimation;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->d()Lo/ClipRectAnimation;

    move-result-object p1

    invoke-virtual {p1}, Lo/ClipRectAnimation;->h()Ljava/util/List;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->a(Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;IILjava/lang/Object;)V

    .line 53
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->s()V

    .line 54
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->n()V

    return-void
.end method
