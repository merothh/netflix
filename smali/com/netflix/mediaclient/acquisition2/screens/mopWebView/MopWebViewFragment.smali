.class public final Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;
.super Lo/PrintWriterPrinter;
.source ""


# static fields
.field static final synthetic a:[Lo/amT;


# instance fields
.field private final b:Ljava/lang/String;

.field public c:Lo/Slog;

.field private final d:Lcom/netflix/cl/model/AppView;

.field private final f:Lo/ams;

.field private g:Ljava/util/HashMap;

.field private final h:Lo/ams;

.field private final i:Lo/ams;

.field public signupLogger:Lo/TextClassificationManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public viewModelInitializer:Lo/SparseSetArray;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;

    const/4 v1, 0x3

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "webView"

    const-string v5, "getWebView()Landroid/webkit/WebView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "refreshButton"

    const-string v5, "getRefreshButton()Landroid/widget/FrameLayout;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "backButton"

    const-string v4, "getBackButton()Landroid/widget/FrameLayout;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->a:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lo/PrintWriterPrinter;-><init>()V

    .line 25
    sget-object v0, Lcom/netflix/cl/model/AppView;->webView:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->d:Lcom/netflix/cl/model/AppView;

    const-string v0, "paymentPaypalWebView"

    .line 28
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->b:Ljava/lang/String;

    .line 36
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vJ:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->f:Lo/ams;

    .line 38
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->qo:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->i:Lo/ams;

    .line 40
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->H:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->h:Lo/ams;

    return-void
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->k()V

    return-void
.end method

.method private final k()V
    .locals 8

    .line 58
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->m()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->a()Lo/Slog;

    move-result-object v1

    invoke-virtual {v1}, Lo/Slog;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 59
    sget-object v2, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities;->INSTANCE:Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->m()Landroid/webkit/WebView;

    move-result-object v3

    new-instance v0, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods$MopWebView;

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment$initWebView$1;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->a()Lo/Slog;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment$initWebView$1;-><init>(Lo/Slog;)V

    check-cast v1, Lo/alN;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v0, v1, v4, v5, v4}, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities$BridgeMethods$MopWebView;-><init>(Lo/alN;Landroid/os/Handler;ILo/amc;)V

    move-object v4, v0

    check-cast v4, Lcom/netflix/mediaclient/acquisition/util/BridgeMethodGroup;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities;->initWebView$default(Lcom/netflix/mediaclient/acquisition/util/AUIWebViewUtilities;Landroid/webkit/WebView;Lcom/netflix/mediaclient/acquisition/util/BridgeMethodGroup;ZILjava/lang/Object;)V

    return-void
.end method

.method private final q()V
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->n()Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment$ActionBar;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment$ActionBar;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->o()Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment$StateListAnimator;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment$StateListAnimator;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->g:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->g:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->g:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public a()Lo/Slog;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->c:Lo/Slog;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public c(Lo/Slog;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->c:Lo/Slog;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic j()Lo/Explode;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->a()Lo/Slog;

    move-result-object v0

    check-cast v0, Lo/Explode;

    return-object v0
.end method

.method public l()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->d:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public final m()Landroid/webkit/WebView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->f:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->a:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method public final n()Landroid/widget/FrameLayout;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->i:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->a:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final o()Landroid/widget/FrameLayout;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->h:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->a:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-super {p0, p1}, Lo/PrintWriterPrinter;->onAttach(Landroid/content/Context;)V

    .line 44
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->viewModelInitializer:Lo/SparseSetArray;

    if-nez p1, :cond_0

    const-string v0, "viewModelInitializer"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Lo/SparseSetArray;->e(Landroidx/fragment/app/Fragment;)Lo/Slog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->c(Lo/Slog;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->bF:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/PrintWriterPrinter;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->b()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-super {p0, p1, p2}, Lo/PrintWriterPrinter;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 53
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->q()V

    .line 54
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/mopWebView/MopWebViewFragment;->k()V

    return-void
.end method
