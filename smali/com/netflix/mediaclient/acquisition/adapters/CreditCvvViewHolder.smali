.class public final Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;
.super Lo/RecognitionService;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RecognitionService<",
        "Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lo/amT;

.field public static final Companion:Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder$Companion;

.field public static final TAG_CREDIT_CVV_TAKEOVER_DIALOG:Ljava/lang/String; = "creditCvvTakeoverDialog"


# instance fields
.field private final cvvDialogButton$delegate:Lo/ams;

.field private final cvvTextInput$delegate:Lo/ams;

.field private final cvvTrustMessage$delegate:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;

    const/4 v1, 0x3

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "cvvDialogButton"

    const-string v5, "getCvvDialogButton()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "cvvTrustMessage"

    const-string v5, "getCvvTrustMessage()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "cvvTextInput"

    const-string v4, "getCvvTextInput()Landroid/view/View;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;->$$delegatedProperties:[Lo/amT;

    new-instance v0, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder$Companion;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;->Companion:Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder$Companion;

    return-void
.end method

.method public constructor <init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V
    .locals 1

    const-string v0, "signupLogger"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lo/RecognitionService;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V

    .line 24
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->dG:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;->cvvDialogButton$delegate:Lo/ams;

    .line 25
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->dI:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;->cvvTrustMessage$delegate:Lo/ams;

    .line 26
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->hZ:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;->cvvTextInput$delegate:Lo/ams;

    return-void
.end method

.method public static final synthetic access$showCvvTakeoverDialog(Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;Z)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;->showCvvTakeoverDialog(Z)V

    return-void
.end method

.method private final getCvvDialogButton()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;->cvvDialogButton$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getCvvTextInput()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;->cvvTextInput$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getCvvTrustMessage()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;->cvvTrustMessage$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final showCvvTakeoverDialog(Z)V
    .locals 4

    .line 50
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;->getCvvDialogButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lo/Serializable;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lo/Serializable;

    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {v0}, Lo/Serializable;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v1

    invoke-virtual {v1}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object v1

    const-string v3, "it.supportFragmentManager.beginTransaction()"

    invoke-static {v1, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Lo/Serializable;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    const-string v3, "creditCvvTakeoverDialog"

    invoke-virtual {v0, v3}, Lo/SerializablePermission;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v1, v0}, Lo/UnsupportedEncodingException;->b(Landroidx/fragment/app/Fragment;)Lo/UnsupportedEncodingException;

    .line 56
    :cond_1
    invoke-virtual {v1, v2}, Lo/UnsupportedEncodingException;->c(Ljava/lang/String;)Lo/UnsupportedEncodingException;

    .line 58
    sget-object v0, Lo/NotifyingApp;->d:Lo/NotifyingApp$TaskDescription;

    invoke-virtual {v0, p1}, Lo/NotifyingApp$TaskDescription;->e(Z)Lo/NotifyingApp;

    move-result-object p1

    .line 59
    invoke-virtual {p1, v1, v3}, Lo/NotifyingApp;->show(Lo/UnsupportedEncodingException;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public bind(Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;)V
    .locals 3

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    move-object v0, p1

    check-cast v0, Lo/AndroidCharacter;

    invoke-super {p0, v0}, Lo/RecognitionService;->bind(Lo/AndroidCharacter;)V

    .line 32
    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;->getShowCvvTrustMessage()Z

    move-result v0

    const-string v1, "itemView"

    if-eqz v0, :cond_0

    .line 33
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;->getCvvTrustMessage()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/netflix/mediaclient/ui/R$Activity;->I:I

    invoke-static {v0, v2}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;->getCvvTextInput()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;->getShowCvvOnConfirm()Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->G:I

    invoke-static {v0, v1}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;->getCvvTrustMessage()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 44
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;->getCvvDialogButton()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder$bind$3;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder$bind$3;-><init>(Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic bind(Lo/AndroidCharacter;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/adapters/CreditCvvViewHolder;->bind(Lcom/netflix/mediaclient/acquisition/viewmodels/CVVFieldViewModel;)V

    return-void
.end method
