.class public final Lo/QwertyKeyListener;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/acquisition/view/TermsAndConsentsComponent;
.implements Lo/PasswordTransformationMethod;


# static fields
.field static final synthetic d:[Lo/amT;


# instance fields
.field private final a:Lo/ams;

.field private final b:Lo/ams;

.field private final c:Lo/ams;

.field private final e:Lo/ams;

.field private f:Ljava/lang/String;

.field private h:Lo/MultiTapKeyListener;

.field private final i:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/QwertyKeyListener;

    const/4 v1, 0x5

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "allCheckBox"

    const-string v5, "getAllCheckBox()Landroid/widget/CheckBox;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "checkBoxesRecyclerView"

    const-string v5, "getCheckBoxesRecyclerView()Landroidx/recyclerview/widget/RecyclerView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "dividerView"

    const-string v5, "getDividerView()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "consentErrorMessage"

    const-string v5, "getConsentErrorMessage()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "bottomTermsTextView"

    const-string v4, "getBottomTermsTextView()Landroid/widget/TextView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lo/QwertyKeyListener;->d:[Lo/amT;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/QwertyKeyListener;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lo/QwertyKeyListener;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->p:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/QwertyKeyListener;->a:Lo/ams;

    .line 24
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->cj:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/QwertyKeyListener;->c:Lo/ams;

    .line 25
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->eW:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/QwertyKeyListener;->e:Lo/ams;

    .line 26
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->cN:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/QwertyKeyListener;->b:Lo/ams;

    .line 27
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->aJ:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/QwertyKeyListener;->i:Lo/ams;

    .line 32
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->cf:I

    move-object p3, p0

    check-cast p3, Landroid/view/ViewGroup;

    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p1, 0x1

    .line 33
    invoke-virtual {p0, p1}, Lo/QwertyKeyListener;->setOrientation(I)V

    .line 34
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, p1}, Lo/QwertyKeyListener;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    new-instance p1, Lo/MultiTapKeyListener;

    move-object p2, p0

    check-cast p2, Lcom/netflix/mediaclient/acquisition/view/TermsAndConsentsComponent;

    move-object p3, p0

    check-cast p3, Lo/PasswordTransformationMethod;

    invoke-direct {p1, p2, p3}, Lo/MultiTapKeyListener;-><init>(Lcom/netflix/mediaclient/acquisition/view/TermsAndConsentsComponent;Lo/PasswordTransformationMethod;)V

    iput-object p1, p0, Lo/QwertyKeyListener;->h:Lo/MultiTapKeyListener;

    .line 38
    invoke-virtual {p0}, Lo/QwertyKeyListener;->a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lo/QwertyKeyListener;->h:Lo/MultiTapKeyListener;

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Activity;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 40
    invoke-virtual {p0}, Lo/QwertyKeyListener;->c()Landroid/widget/CheckBox;

    move-result-object p1

    new-instance p2, Lo/QwertyKeyListener$5;

    invoke-direct {p2, p0}, Lo/QwertyKeyListener$5;-><init>(Lo/QwertyKeyListener;)V

    check-cast p2, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 47
    invoke-virtual {p0}, Lo/QwertyKeyListener;->c()Landroid/widget/CheckBox;

    move-result-object p1

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 18
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 19
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/QwertyKeyListener;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/recyclerview/widget/RecyclerView;
    .locals 3

    iget-object v0, p0, Lo/QwertyKeyListener;->c:Lo/ams;

    sget-object v1, Lo/QwertyKeyListener;->d:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public b()V
    .locals 2

    .line 86
    invoke-virtual {p0}, Lo/QwertyKeyListener;->c()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/QwertyKeyListener;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    invoke-virtual {p0}, Lo/QwertyKeyListener;->e()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final c()Landroid/widget/CheckBox;
    .locals 3

    iget-object v0, p0, Lo/QwertyKeyListener;->a:Lo/ams;

    sget-object v1, Lo/QwertyKeyListener;->d:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    return-object v0
.end method

.method public final d()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/QwertyKeyListener;->e:Lo/ams;

    sget-object v1, Lo/QwertyKeyListener;->d:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final e()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/QwertyKeyListener;->b:Lo/ams;

    sget-object v1, Lo/QwertyKeyListener;->d:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final g()Z
    .locals 2

    .line 98
    iget-object v0, p0, Lo/QwertyKeyListener;->h:Lo/MultiTapKeyListener;

    invoke-virtual {v0}, Lo/MultiTapKeyListener;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h()V
    .locals 3

    .line 77
    invoke-virtual {p0}, Lo/QwertyKeyListener;->c()Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setActivated(Z)V

    .line 78
    iget-object v0, p0, Lo/QwertyKeyListener;->h:Lo/MultiTapKeyListener;

    invoke-virtual {v0}, Lo/MultiTapKeyListener;->e()Z

    move-result v0

    .line 79
    invoke-virtual {p0}, Lo/QwertyKeyListener;->e()Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/QwertyKeyListener;->c()Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lo/QwertyKeyListener;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 80
    invoke-virtual {p0}, Lo/QwertyKeyListener;->a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lo/QwertyKeyListener$StateListAnimator;

    invoke-direct {v1, p0}, Lo/QwertyKeyListener$StateListAnimator;-><init>(Lo/QwertyKeyListener;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hasAcceptedRequiredCheckBoxes()Z
    .locals 2

    .line 92
    invoke-virtual {p0}, Lo/QwertyKeyListener;->h()V

    .line 93
    iget-object v0, p0, Lo/QwertyKeyListener;->h:Lo/MultiTapKeyListener;

    invoke-virtual {v0}, Lo/MultiTapKeyListener;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lo/QwertyKeyListener;->c()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lo/QwertyKeyListener;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final i()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/QwertyKeyListener;->i:Lo/ams;

    sget-object v1, Lo/QwertyKeyListener;->d:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final j()Lo/MultiTapKeyListener;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/QwertyKeyListener;->h:Lo/MultiTapKeyListener;

    return-object v0
.end method

.method public final setAllCheckBoxText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 53
    invoke-virtual {p0}, Lo/QwertyKeyListener;->c()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setBottomTermsText(Ljava/lang/String;)V
    .locals 2

    .line 58
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 59
    invoke-virtual {p0}, Lo/QwertyKeyListener;->i()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    :cond_2
    invoke-virtual {p0}, Lo/QwertyKeyListener;->i()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 63
    invoke-virtual {p0}, Lo/QwertyKeyListener;->i()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iput-object p1, p0, Lo/QwertyKeyListener;->f:Ljava/lang/String;

    return-void
.end method

.method public final setCheckBoxAdapter(Lo/MultiTapKeyListener;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lo/QwertyKeyListener;->h:Lo/MultiTapKeyListener;

    return-void
.end method

.method public final setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/MetaKeyKeyListener;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adapterData"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lo/QwertyKeyListener;->h:Lo/MultiTapKeyListener;

    invoke-virtual {v0, p1}, Lo/MultiTapKeyListener;->b(Ljava/util/List;)V

    .line 70
    invoke-virtual {p0}, Lo/QwertyKeyListener;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0}, Lo/QwertyKeyListener;->c()Landroid/widget/CheckBox;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 72
    invoke-virtual {p0}, Lo/QwertyKeyListener;->d()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
