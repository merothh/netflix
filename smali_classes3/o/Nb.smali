.class public final Lo/Nb;
.super Lo/MenuInflater;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Nb$Application;
    }
.end annotation


# static fields
.field static final synthetic e:[Lo/amT;


# instance fields
.field private final a:Lo/ams;

.field private final b:Lo/ams;

.field private final c:I

.field private final d:Lo/ams;

.field private final f:Lo/ams;

.field private final g:Lo/ams;

.field private final h:Lo/ams;

.field private final i:Lo/ams;

.field private final j:Lo/ams;

.field private final k:Lo/ams;

.field private final l:Lo/ams;

.field private final m:Lo/ams;

.field private final n:Lo/ams;

.field private final o:Lo/ams;

.field private r:Landroid/view/View$OnClickListener;

.field private t:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/Nb;

    const/16 v1, 0xd

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "title"

    const-string v5, "getTitle()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "description"

    const-string v5, "getDescription()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "tou"

    const-string v5, "getTou()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "link"

    const-string v5, "getLink()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "copyButton"

    const-string v5, "getCopyButton()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "shareOptionsGroup"

    const-string v5, "getShareOptionsGroup()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "shareOption1"

    const-string v5, "getShareOption1()Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralShareOptionView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "shareOption2"

    const-string v5, "getShareOption2()Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralShareOptionView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "shareOption3"

    const-string v5, "getShareOption3()Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralShareOptionView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "shareOption4"

    const-string v5, "getShareOption4()Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralShareOptionView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "linkSection"

    const-string v5, "getLinkSection()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "errorGroupStub"

    const-string v5, "getErrorGroupStub()Landroid/view/ViewStub;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "orView"

    const-string v4, "getOrView()Landroid/view/View;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/16 v2, 0xc

    aput-object v0, v1, v2

    sput-object v1, Lo/Nb;->e:[Lo/amT;

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

    invoke-direct/range {v0 .. v5}, Lo/Nb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

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

    invoke-direct/range {v0 .. v5}, Lo/Nb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lo/MenuInflater;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lo/Ng$StateListAnimator;->b:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lo/Nb;->c:I

    .line 26
    sget p2, Lo/Ng$ActionBar;->q:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Nb;->d:Lo/ams;

    .line 27
    sget p2, Lo/Ng$ActionBar;->j:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Nb;->a:Lo/ams;

    .line 28
    sget p2, Lo/Ng$ActionBar;->r:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Nb;->b:Lo/ams;

    .line 29
    sget p2, Lo/Ng$ActionBar;->h:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Nb;->j:Lo/ams;

    .line 30
    sget p2, Lo/Ng$ActionBar;->d:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Nb;->h:Lo/ams;

    .line 32
    sget p2, Lo/Ng$ActionBar;->a:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Nb;->i:Lo/ams;

    .line 34
    sget p2, Lo/Ng$ActionBar;->n:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Nb;->f:Lo/ams;

    .line 36
    sget p2, Lo/Ng$ActionBar;->m:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Nb;->g:Lo/ams;

    .line 38
    sget p2, Lo/Ng$ActionBar;->l:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Nb;->l:Lo/ams;

    .line 40
    sget p2, Lo/Ng$ActionBar;->t:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Nb;->n:Lo/ams;

    .line 42
    sget p2, Lo/Ng$ActionBar;->g:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Nb;->k:Lo/ams;

    .line 44
    sget p2, Lo/Ng$ActionBar;->c:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Nb;->o:Lo/ams;

    .line 46
    sget p2, Lo/Ng$ActionBar;->f:I

    invoke-static {p0, p2}, Lo/NfcV;->b(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/Nb;->m:Lo/ams;

    .line 60
    sget p2, Lo/Ng$Application;->c:I

    move-object p3, p0

    check-cast p3, Landroid/view/ViewGroup;

    invoke-static {p1, p2, p3}, Lo/MenuInflater;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    invoke-virtual {p0}, Lo/Nb;->e()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Lo/Nb;->e()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p2

    or-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 64
    invoke-virtual {p0}, Lo/Nb;->l()Landroid/view/ViewStub;

    move-result-object p1

    new-instance p2, Lo/Nb$4;

    invoke-direct {p2, p0}, Lo/Nb$4;-><init>(Lo/Nb;)V

    check-cast p2, Landroid/view/ViewStub$OnInflateListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 20
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 21
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/Nb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic c(Lo/Nb;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/Nb;->r:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private final c(Lo/AnalogClock;Lo/Nd;Lo/Nb$Application;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AnalogClock<",
            "Ljava/lang/Object;",
            ">;",
            "Lo/Nd;",
            "Lo/Nb$Application;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 139
    invoke-virtual {p2, p1}, Lo/Nd;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 141
    invoke-virtual {p2, v0}, Lo/Nd;->setVisibility(I)V

    .line 142
    invoke-virtual {p1}, Lo/AnalogClock;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Lo/Nd;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p0}, Lo/Nb;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lo/Ng$TaskDescription;->b:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lo/AnalogClock;->a()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Lo/Nd;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {p1}, Lo/AnalogClock;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/Nd;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 145
    new-instance v0, Lo/Nb$StateListAnimator;

    invoke-direct {v0, p3, p1}, Lo/Nb$StateListAnimator;-><init>(Lo/Nb$Application;Lo/AnalogClock;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Lo/Nd;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private final s()V
    .locals 1

    .line 76
    iget-object v0, p0, Lo/Nb;->t:Landroid/view/View;

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lo/Nb;->l()Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/Nb;->t:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private final t()Landroid/view/View;
    .locals 2

    .line 55
    iget-object v0, p0, Lo/Nb;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Lo/Ng$ActionBar;->i:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/Nb;->d:Lo/ams;

    sget-object v1, Lo/Nb;->e:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final b()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/Nb;->a:Lo/ams;

    sget-object v1, Lo/Nb;->e:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final c()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/Nb;->j:Lo/ams;

    sget-object v1, Lo/Nb;->e:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final d()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/Nb;->h:Lo/ams;

    sget-object v1, Lo/Nb;->e:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final e()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/Nb;->b:Lo/ams;

    sget-object v1, Lo/Nb;->e:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final f()Lo/Nd;
    .locals 3

    iget-object v0, p0, Lo/Nb;->n:Lo/ams;

    sget-object v1, Lo/Nb;->e:[Lo/amT;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Nd;

    return-object v0
.end method

.method public final g()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/Nb;->i:Lo/ams;

    sget-object v1, Lo/Nb;->e:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final h()Lo/Nd;
    .locals 3

    iget-object v0, p0, Lo/Nb;->f:Lo/ams;

    sget-object v1, Lo/Nb;->e:[Lo/amT;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Nd;

    return-object v0
.end method

.method public final i()Lo/Nd;
    .locals 3

    iget-object v0, p0, Lo/Nb;->g:Lo/ams;

    sget-object v1, Lo/Nb;->e:[Lo/amT;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Nd;

    return-object v0
.end method

.method public final j()Lo/Nd;
    .locals 3

    iget-object v0, p0, Lo/Nb;->l:Lo/ams;

    sget-object v1, Lo/Nb;->e:[Lo/amT;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Nd;

    return-object v0
.end method

.method public final k()Landroid/view/View;
    .locals 2

    .line 53
    iget-object v0, p0, Lo/Nb;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Lo/Ng$ActionBar;->k:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final l()Landroid/view/ViewStub;
    .locals 3

    iget-object v0, p0, Lo/Nb;->o:Lo/ams;

    sget-object v1, Lo/Nb;->e:[Lo/amT;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    return-object v0
.end method

.method public final m()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/Nb;->m:Lo/ams;

    sget-object v1, Lo/Nb;->e:[Lo/amT;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final n()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/Nb;->k:Lo/ams;

    sget-object v1, Lo/Nb;->e:[Lo/amT;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final o()V
    .locals 3

    .line 82
    invoke-virtual {p0}, Lo/Nb;->a()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    invoke-virtual {p0}, Lo/Nb;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    invoke-virtual {p0}, Lo/Nb;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    invoke-virtual {p0}, Lo/Nb;->e()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    invoke-virtual {p0}, Lo/Nb;->n()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    invoke-virtual {p0}, Lo/Nb;->m()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    :cond_0
    invoke-direct {p0}, Lo/Nb;->s()V

    .line 89
    iget-object v0, p0, Lo/Nb;->t:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :cond_1
    invoke-direct {p0}, Lo/Nb;->t()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :cond_2
    invoke-virtual {p0}, Lo/Nb;->k()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_3
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x3

    invoke-static {v0, v1, v2}, Lo/RemoteException;->e(Landroid/view/View;II)V

    return-void
.end method

.method public final p()V
    .locals 3

    .line 110
    invoke-virtual {p0}, Lo/Nb;->a()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    invoke-virtual {p0}, Lo/Nb;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    invoke-virtual {p0}, Lo/Nb;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    invoke-virtual {p0}, Lo/Nb;->e()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    invoke-virtual {p0}, Lo/Nb;->n()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    invoke-virtual {p0}, Lo/Nb;->m()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :cond_0
    invoke-virtual {p0}, Lo/Nb;->l()Landroid/view/ViewStub;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 117
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x3

    iget v2, p0, Lo/Nb;->c:I

    invoke-static {v0, v1, v2}, Lo/RemoteException;->e(Landroid/view/View;II)V

    return-void
.end method

.method public final q()V
    .locals 3

    .line 96
    invoke-virtual {p0}, Lo/Nb;->a()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    invoke-virtual {p0}, Lo/Nb;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    invoke-virtual {p0}, Lo/Nb;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    invoke-virtual {p0}, Lo/Nb;->e()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    invoke-virtual {p0}, Lo/Nb;->n()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    invoke-virtual {p0}, Lo/Nb;->m()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :cond_0
    invoke-direct {p0}, Lo/Nb;->s()V

    .line 103
    iget-object v0, p0, Lo/Nb;->t:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :cond_1
    invoke-direct {p0}, Lo/Nb;->t()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    :cond_2
    invoke-virtual {p0}, Lo/Nb;->k()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :cond_3
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x3

    invoke-static {v0, v1, v2}, Lo/RemoteException;->e(Landroid/view/View;II)V

    return-void
.end method

.method public final setErrorGroup(Landroid/view/View;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lo/Nb;->t:Landroid/view/View;

    return-void
.end method

.method public final setRetryButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "retryClickListener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lo/Nb;->r:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final setShareOptions(Lo/AnalogClock;Lo/AnalogClock;Lo/AnalogClock;Lo/AnalogClock;Lo/Nb$Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AnalogClock<",
            "Ljava/lang/Object;",
            ">;",
            "Lo/AnalogClock<",
            "Ljava/lang/Object;",
            ">;",
            "Lo/AnalogClock<",
            "Ljava/lang/Object;",
            ">;",
            "Lo/AnalogClock<",
            "Ljava/lang/Object;",
            ">;",
            "Lo/Nb$Application;",
            ")V"
        }
    .end annotation

    const-string v0, "onShareTargetClickListener"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lo/Nb;->h()Lo/Nd;

    move-result-object v0

    invoke-direct {p0, p1, v0, p5}, Lo/Nb;->c(Lo/AnalogClock;Lo/Nd;Lo/Nb$Application;)V

    .line 128
    invoke-virtual {p0}, Lo/Nb;->i()Lo/Nd;

    move-result-object p1

    invoke-direct {p0, p2, p1, p5}, Lo/Nb;->c(Lo/AnalogClock;Lo/Nd;Lo/Nb$Application;)V

    .line 129
    invoke-virtual {p0}, Lo/Nb;->j()Lo/Nd;

    move-result-object p1

    invoke-direct {p0, p3, p1, p5}, Lo/Nb;->c(Lo/AnalogClock;Lo/Nd;Lo/Nb$Application;)V

    .line 130
    invoke-virtual {p0}, Lo/Nb;->f()Lo/Nd;

    move-result-object p1

    invoke-direct {p0, p4, p1, p5}, Lo/Nb;->c(Lo/AnalogClock;Lo/Nd;Lo/Nb$Application;)V

    return-void
.end method

.method public final setupHeader(III)V
    .locals 2

    .line 156
    invoke-virtual {p0}, Lo/Nb;->a()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 157
    invoke-virtual {p0}, Lo/Nb;->a()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Lo/Nb;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {p0}, Lo/Nb;->b()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Lo/Nb;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
