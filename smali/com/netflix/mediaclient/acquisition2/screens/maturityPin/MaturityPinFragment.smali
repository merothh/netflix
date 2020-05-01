.class public final Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;
.super Lo/PathParser;
.source ""


# static fields
.field static final synthetic b:[Lo/amT;


# instance fields
.field public a:Lo/Range;

.field private final d:Lcom/netflix/cl/model/AppView;

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

.field private k:Ljava/util/HashMap;

.field private final n:Lo/ams;

.field public viewModelInitializer:Lo/Rational;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;

    const/4 v1, 0x6

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "verifyAgeExpandingView"

    const-string v5, "getVerifyAgeExpandingView()Lcom/netflix/mediaclient/acquisition2/components/expandingDropDownView/ExpandingDropDownView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "skipVerifyExpandingView"

    const-string v5, "getSkipVerifyExpandingView()Lcom/netflix/mediaclient/acquisition2/components/expandingDropDownView/ExpandingDropDownView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "maturityPinEntry"

    const-string v5, "getMaturityPinEntry()Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "maturityPinHeader"

    const-string v5, "getMaturityPinHeader()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "maturityPinSubheader"

    const-string v5, "getMaturityPinSubheader()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "skipVerifySubheader"

    const-string v4, "getSkipVerifySubheader()Landroid/widget/TextView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->b:[Lo/amT;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lo/PathParser;-><init>()V

    const-string v0, "maturityPin"

    .line 27
    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->e:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/netflix/cl/model/AppView;->ageVerificationDialog:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->d:Lcom/netflix/cl/model/AppView;

    .line 31
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->uA:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->i:Lo/ams;

    .line 34
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rF:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->g:Lo/ams;

    .line 37
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kd:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->f:Lo/ams;

    .line 40
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->ke:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->j:Lo/ams;

    .line 43
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->kf:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->h:Lo/ams;

    .line 46
    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->rH:I

    invoke-static {p0, v0}, Lo/NfcV;->b(Landroidx/fragment/app/Fragment;I)Lo/ams;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->n:Lo/ams;

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->k:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->k:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->k:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->k:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->k:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 5

    .line 117
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->k()Lo/Suggestion;

    move-result-object v0

    invoke-virtual {v0}, Lo/Suggestion;->i()Landroid/view/View;

    move-result-object v0

    .line 118
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->uz:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    .line 119
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->n()Lo/Range;

    move-result-object v1

    invoke-virtual {v1}, Lo/Range;->f()Lo/Cloneable;

    move-result-object v1

    .line 120
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->getViewLifecycleOwner()Lo/UnicodeScript;

    move-result-object v2

    .line 121
    iget-object v3, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->formDataObserverFactory:Lo/WallpaperSettingsActivity;

    if-nez v3, :cond_0

    const-string v4, "formDataObserverFactory"

    invoke-static {v4}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const-string v4, "verifyAgeCta"

    invoke-static {v0, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lo/WallpaperSettingsActivity;->e(Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;)Lo/BulletSpan;

    move-result-object v0

    check-cast v0, Lo/ClassFormatError;

    .line 119
    invoke-virtual {v1, v2, v0}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(Lo/Range;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->a:Lo/Range;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->e:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic j()Lo/Explode;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->n()Lo/Range;

    move-result-object v0

    check-cast v0, Lo/Explode;

    return-object v0
.end method

.method public final k()Lo/Suggestion;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->i:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->b:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Suggestion;

    return-object v0
.end method

.method public l()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->d:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public n()Lo/Range;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->a:Lo/Range;

    if-nez v0, :cond_0

    const-string v1, "viewModel"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lo/PathParser;->onAttach(Landroid/content/Context;)V

    .line 56
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->viewModelInitializer:Lo/Rational;

    if-nez p1, :cond_0

    const-string v0, "viewModelInitializer"

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Lo/Rational;->b(Landroidx/fragment/app/Fragment;)Lo/Range;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->e(Lo/Range;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->bH:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/PathParser;->onDestroyView()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->b()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-super {p0, p1, p2}, Lo/PathParser;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->p()V

    .line 68
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->v()V

    .line 69
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->y()V

    return-void
.end method

.method public final p()V
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->t()Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->n()Lo/Range;

    move-result-object v1

    invoke-virtual {v1}, Lo/Range;->k()Lo/AllCapsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->a(Lo/AllCapsTransformationMethod;)V

    return-void
.end method

.method public final q()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->h:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->b:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final r()Lo/Suggestion;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->g:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->b:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Suggestion;

    return-object v0
.end method

.method public final s()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->j:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->b:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final t()Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->f:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->b:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;

    return-object v0
.end method

.method public final v()V
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->k()Lo/Suggestion;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment$initClickListeners$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment$initClickListeners$1;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;)V

    check-cast v1, Lo/alA;

    invoke-virtual {v0, v1}, Lo/Suggestion;->setHeaderClickListener(Lo/alA;)V

    .line 87
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->r()Lo/Suggestion;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment$initClickListeners$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment$initClickListeners$2;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;)V

    check-cast v1, Lo/alA;

    invoke-virtual {v0, v1}, Lo/Suggestion;->setHeaderClickListener(Lo/alA;)V

    .line 97
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->r()Lo/Suggestion;

    move-result-object v0

    invoke-virtual {v0}, Lo/Suggestion;->i()Landroid/view/View;

    move-result-object v0

    .line 98
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->rE:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/HorizontalScrollView;

    .line 99
    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment$TaskDescription;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment$TaskDescription;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->k()Lo/Suggestion;

    move-result-object v0

    invoke-virtual {v0}, Lo/Suggestion;->i()Landroid/view/View;

    move-result-object v0

    .line 104
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->uz:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;

    .line 105
    new-instance v1, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment$Activity;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment$Activity;-><init>(Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/acquisition/view/NetflixSignupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final y()V
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->s()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->n()Lo/Range;

    move-result-object v1

    invoke-virtual {v1}, Lo/Range;->e()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->r()Lo/Suggestion;

    move-result-object v0

    invoke-virtual {v0}, Lo/Suggestion;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->n()Lo/Range;

    move-result-object v1

    invoke-virtual {v1}, Lo/Range;->g()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->q()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/screens/maturityPin/MaturityPinFragment;->n()Lo/Range;

    move-result-object v1

    invoke-virtual {v1}, Lo/Range;->j()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
