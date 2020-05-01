.class public final Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;
.super Lo/DisplayCutout;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$OnPaymentOptionSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment$Application;
    }
.end annotation


# static fields
.field static final synthetic a:[Lo/amT;


# instance fields
.field public adapterFactory:Lo/VoiceInteractionManagerInternal;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final b:Lcom/netflix/cl/model/AppView;

.field public c:Lo/FocusFinder;

.field private final e:Ljava/lang/String;

.field private final f:Lo/ams;

.field private final g:Lo/ams;

.field private final h:Lo/ams;

.field private final i:Lo/ams;

.field private final j:Lo/ams;

.field private final k:Lo/ams;

.field private l:Ljava/util/HashMap;

.field private final n:Lo/ams;

.field private final o:Lo/ams;

.field public paymentNavigationListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment$Application;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public paymentPresentationListener:Lo/TextClassificationConstants;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public viewModelInitializer:Lo/FallbackEventHandler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;

    const/16 v1, 0x8

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "warningView"

    const-string v5, "getWarningView()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "userMessageBanner"

    const-string v5, "getUserMessageBanner()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "mopRequiredMessage"

    const-string v5, "getMopRequiredMessage()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

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

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "paymentOptionRecyclerView"

    const-string v5, "getPaymentOptionRecyclerView()Landroidx/recyclerview/widget/RecyclerView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "skipStepOption"

    const-string v5, "getSkipStepOption()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "enterPaymentOption"

    const-string v5, "getEnterPaymentOption()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "alternatePaymentGroup"

    const-string v4, "getAlternatePaymentGroup()Landroid/view/View;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->a:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lo/DisplayCutout;-><init>()V

    const-string v0, "paymentContext"

    .line 30
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->e:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/netflix/cl/model/AppView;->paymentContext:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->b:Lcom/netflix/cl/model/AppView;

    .line 33
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vD:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->i:Lo/ams;

    .line 36
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->un:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->h:Lo/ams;

    .line 38
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kH:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->f:Lo/ams;

    .line 40
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rB:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->g:Lo/ams;

    .line 42
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->lU:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->j:Lo/ams;

    .line 44
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rD:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->o:Lo/ams;

    .line 46
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->fL:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->n:Lo/ams;

    .line 48
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->r:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->k:Lo/ams;

    return-void
.end method

.method public static final synthetic a(Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->w()V

    return-void
.end method

.method private final r()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->i:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->a:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method

.method private final u()V
    .locals 3

    .line 109
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->m()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->adapterFactory:Lo/VoiceInteractionManagerInternal;

    if-nez v0, :cond_0

    const-string v1, "adapterFactory"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    move-object v1, p0

    check-cast v1, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$OnPaymentOptionSelectedListener;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->d()Lo/FocusFinder;

    move-result-object v2

    invoke-virtual {v2}, Lo/FocusFinder;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/VoiceInteractionManagerInternal;->a(Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$OnPaymentOptionSelectedListener;Ljava/util/List;)Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->m()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    return-void
.end method

.method private final w()V
    .locals 3

    .line 92
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->m()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 93
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->p()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->d()Lo/FocusFinder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/FocusFinder;->d(Z)V

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->paymentPresentationListener:Lo/TextClassificationConstants;

    if-nez v0, :cond_0

    const-string v1, "paymentPresentationListener"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->d()Lo/FocusFinder;

    move-result-object v1

    invoke-virtual {v1}, Lo/FocusFinder;->i()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->l()Lcom/netflix/cl/model/AppView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/TextClassificationConstants;->d(Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/cl/model/AppView;)V

    return-void
.end method

.method private final x()V
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->t()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment$StateListAnimator;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment$StateListAnimator;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->q()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment$Activity;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment$Activity;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->l:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->l:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->l:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->l:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->l:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public c(Lo/FocusFinder;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->c:Lo/FocusFinder;

    return-void
.end method

.method public d()Lo/FocusFinder;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->c:Lo/FocusFinder;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->e:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic j()Lo/Explode;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->d()Lo/FocusFinder;

    move-result-object v0

    check-cast v0, Lo/Explode;

    return-object v0
.end method

.method public final k()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->f:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->a:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method

.method public l()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->b:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public final m()Landroidx/recyclerview/widget/RecyclerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->j:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->a:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public final n()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->g:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->a:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    return-object v0
.end method

.method public final o()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->h:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->a:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-super {p0, p1}, Lo/DisplayCutout;->onAttach(Landroid/content/Context;)V

    .line 61
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->viewModelInitializer:Lo/FallbackEventHandler;

    if-nez p1, :cond_0

    const-string v0, "viewModelInitializer"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Lo/FallbackEventHandler;->b(Landroidx/fragment/app/Fragment;)Lo/FocusFinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->c(Lo/FocusFinder;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->d()Lo/FocusFinder;

    move-result-object p3

    invoke-virtual {p3}, Lo/FocusFinder;->o()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 66
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->bK:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 68
    :cond_0
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->bN:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 87
    invoke-super {p0}, Lo/DisplayCutout;->onDestroyView()V

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->paymentPresentationListener:Lo/TextClassificationConstants;

    if-nez v0, :cond_0

    const-string v1, "paymentPresentationListener"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/TextClassificationConstants;->c()V

    .line 89
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->b()V

    return-void
.end method

.method public onPaymentOptionSelected(Lo/TransformationMethod2;)V
    .locals 5

    const-string v0, "paymentOptionViewModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->paymentNavigationListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string v1, "paymentNavigationListeners"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    .line 126
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment$Application;

    .line 116
    invoke-virtual {p1}, Lo/TransformationMethod2;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lo/TransformationMethod2;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lo/TransformationMethod2;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment$Application;->navigateToPaymentMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-super {p0, p1, p2}, Lo/DisplayCutout;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->n()Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->d()Lo/FocusFinder;

    move-result-object p1

    invoke-virtual {p1}, Lo/FocusFinder;->e()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->d()Lo/FocusFinder;

    move-result-object p1

    invoke-virtual {p1}, Lo/FocusFinder;->g()Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->d()Lo/FocusFinder;

    move-result-object p1

    invoke-virtual {p1}, Lo/FocusFinder;->h()Ljava/util/List;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;->setStrings$default(Lcom/netflix/mediaclient/acquisition/view/SignupHeadingView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;ILjava/lang/Object;)V

    .line 75
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->u()V

    .line 76
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->x()V

    .line 77
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->o()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->d()Lo/FocusFinder;

    move-result-object p2

    invoke-virtual {p2}, Lo/FocusFinder;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setText(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->k()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->d()Lo/FocusFinder;

    move-result-object p2

    invoke-virtual {p2}, Lo/FocusFinder;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setText(Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->r()Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->d()Lo/FocusFinder;

    move-result-object p2

    invoke-virtual {p2}, Lo/FocusFinder;->k()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/acquisition/view/SignupBannerView;->setText(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->d()Lo/FocusFinder;

    move-result-object p1

    invoke-virtual {p1}, Lo/FocusFinder;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->d()Lo/FocusFinder;

    move-result-object p1

    invoke-virtual {p1}, Lo/FocusFinder;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->w()V

    :cond_1
    return-void
.end method

.method public final p()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->k:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->a:[Lo/amT;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final q()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->n:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->a:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final s()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment$Application;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->paymentNavigationListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string v1, "paymentNavigationListeners"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final t()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->o:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/paymentContext/PaymentContextFragment;->a:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method
