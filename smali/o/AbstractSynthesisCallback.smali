.class public Lo/AbstractSynthesisCallback;
.super Landroidx/recyclerview/widget/RecyclerView$Intent;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/AndroidCharacter<",
        "*>;>",
        "Landroidx/recyclerview/widget/RecyclerView$Intent;"
    }
.end annotation


# static fields
.field static final synthetic e:[Lo/amT;


# instance fields
.field private final a:Lo/ams;

.field private final b:Lo/TextClassificationManager;

.field private final c:Lo/ams;

.field private final d:Lo/ams;

.field private final h:Lo/InputBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/AbstractSynthesisCallback;

    const/4 v1, 0x3

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "radioGroup"

    const-string v5, "getRadioGroup()Landroid/widget/RadioGroup;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "inputError"

    const-string v5, "getInputError()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "title"

    const-string v4, "getTitle()Landroid/widget/TextView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lo/AbstractSynthesisCallback;->e:[Lo/amT;

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

    .line 19
    invoke-direct {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Intent;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/AbstractSynthesisCallback;->b:Lo/TextClassificationManager;

    iput-object p2, p0, Lo/AbstractSynthesisCallback;->h:Lo/InputBinding;

    .line 22
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->qd:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/AbstractSynthesisCallback;->a:Lo/ams;

    .line 24
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->hX:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/AbstractSynthesisCallback;->c:Lo/ams;

    .line 26
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->tq:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lo/AbstractSynthesisCallback;->d:Lo/ams;

    return-void
.end method

.method private final e(Lo/AndroidCharacter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Lo/AndroidCharacter;->getShowValidationState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lo/AbstractSynthesisCallback;->b:Lo/TextClassificationManager;

    new-instance v1, Lcom/netflix/cl/model/event/session/action/ValidateInput;

    invoke-virtual {p1}, Lo/AndroidCharacter;->getInputKind()Lcom/netflix/cl/model/InputKind;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/cl/model/event/session/action/ValidateInput;-><init>(Lcom/netflix/cl/model/InputKind;)V

    check-cast v1, Lcom/netflix/cl/model/event/session/Session;

    invoke-virtual {v0, v1}, Lo/TextClassificationManager;->b(Lcom/netflix/cl/model/event/session/Session;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    iget-object v1, p0, Lo/AbstractSynthesisCallback;->h:Lo/InputBinding;

    invoke-virtual {p1, v1}, Lo/AndroidCharacter;->getError(Lo/InputBinding;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 39
    :goto_1
    invoke-virtual {p0}, Lo/AbstractSynthesisCallback;->e()Landroid/widget/TextView;

    move-result-object v4

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    invoke-virtual {p0}, Lo/AbstractSynthesisCallback;->e()Landroid/widget/TextView;

    move-result-object v2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p1}, Lo/AndroidCharacter;->getShowValidationState()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    if-eqz v3, :cond_3

    .line 44
    iget-object p1, p0, Lo/AbstractSynthesisCallback;->b:Lo/TextClassificationManager;

    invoke-virtual {p1, v0}, Lo/TextClassificationManager;->c(Ljava/lang/Long;)Lcom/netflix/cl/model/event/session/ValidateInputRejected;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 45
    iget-object v0, p0, Lo/AbstractSynthesisCallback;->b:Lo/TextClassificationManager;

    check-cast p1, Lcom/netflix/cl/model/event/session/SessionEnded;

    invoke-virtual {v0, p1}, Lo/TextClassificationManager;->a(Lcom/netflix/cl/model/event/session/SessionEnded;)Z

    goto :goto_3

    .line 48
    :cond_3
    iget-object p1, p0, Lo/AbstractSynthesisCallback;->b:Lo/TextClassificationManager;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo/TextClassificationManager;->b(J)Z

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public b(Lo/AndroidCharacter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Lo/AbstractSynthesisCallback;->e(Lo/AndroidCharacter;)V

    return-void
.end method

.method public final c()Landroid/widget/RadioGroup;
    .locals 3

    iget-object v0, p0, Lo/AbstractSynthesisCallback;->a:Lo/ams;

    sget-object v1, Lo/AbstractSynthesisCallback;->e:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    return-object v0
.end method

.method public final e()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/AbstractSynthesisCallback;->c:Lo/ams;

    sget-object v1, Lo/AbstractSynthesisCallback;->e:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final j()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/AbstractSynthesisCallback;->d:Lo/ams;

    sget-object v1, Lo/AbstractSynthesisCallback;->e:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method
