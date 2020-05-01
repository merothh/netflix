.class public final Lo/NO;
.super Lo/MenuInflater;
.source ""


# static fields
.field static final synthetic b:[Lo/amT;


# instance fields
.field private final a:Lo/ams;

.field private final c:Lo/ams;

.field private final d:Lo/ams;

.field private final e:Lo/ams;

.field private final h:Lo/ams;

.field private final j:Lo/ams;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/NO;

    const/4 v1, 0x6

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "radioButton"

    const-string v5, "getRadioButton()Landroid/widget/RadioButton;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "title"

    const-string v5, "getTitle()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "discount"

    const-string v5, "getDiscount()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "discountPrice"

    const-string v5, "getDiscountPrice()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "fullPrice"

    const-string v5, "getFullPrice()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "bestValue"

    const-string v4, "getBestValue()Lcom/netflix/mediaclient/android/widget/NetflixTextView;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sput-object v1, Lo/NO;->b:[Lo/amT;

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

    invoke-direct/range {v0 .. v5}, Lo/NO;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

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

    invoke-direct/range {v0 .. v5}, Lo/NO;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lo/MenuInflater;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    sget p2, Lo/NB$Application;->n:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/NO;->c:Lo/ams;

    .line 28
    sget p2, Lo/NB$Application;->k:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/NO;->a:Lo/ams;

    .line 29
    sget p2, Lo/NB$Application;->f:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/NO;->e:Lo/ams;

    .line 30
    sget p2, Lo/NB$Application;->l:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/NO;->d:Lo/ams;

    .line 31
    sget p2, Lo/NB$Application;->m:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/NO;->h:Lo/ams;

    .line 32
    sget p2, Lo/NB$Application;->a:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lo/NO;->j:Lo/ams;

    .line 37
    sget p2, Lo/NB$ActionBar;->b:I

    move-object p3, p0

    check-cast p3, Landroid/view/ViewGroup;

    .line 35
    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 23
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 24
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/NO;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/NO;->e:Lo/ams;

    sget-object v1, Lo/NO;->b:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final b()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/NO;->d:Lo/ams;

    sget-object v1, Lo/NO;->b:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final c()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/NO;->h:Lo/ams;

    sget-object v1, Lo/NO;->b:[Lo/amT;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final d()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/NO;->a:Lo/ams;

    sget-object v1, Lo/NO;->b:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method

.method private final e()Landroid/widget/RadioButton;
    .locals 3

    iget-object v0, p0, Lo/NO;->c:Lo/ams;

    sget-object v1, Lo/NO;->b:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    return-object v0
.end method

.method private final f()Lo/ImageSwitcher;
    .locals 3

    iget-object v0, p0, Lo/NO;->j:Lo/ams;

    sget-object v1, Lo/NO;->b:[Lo/amT;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    return-object v0
.end method


# virtual methods
.method public final setBestValue(Z)V
    .locals 1

    .line 43
    invoke-direct {p0}, Lo/NO;->f()Lo/ImageSwitcher;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;Z)V

    return-void
.end method

.method public final setDiscountPercentage(Ljava/lang/String;)V
    .locals 3

    const-string v0, "percent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lo/NO;->a()Lo/ImageSwitcher;

    move-result-object v1

    .line 69
    sget v2, Lo/NB$TaskDescription;->k:I

    invoke-static {v2}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v2

    .line 70
    invoke-virtual {v2, v0, p1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setDiscountPrice(Ljava/lang/CharSequence;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Lo/NO;->b()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setFullPrice(Ljava/lang/CharSequence;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Lo/NO;->c()Lo/ImageSwitcher;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setPaintFlags(I)V

    .line 82
    invoke-direct {p0}, Lo/NO;->c()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setOfferClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lo/NO;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 3

    const-string v0, "duration"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lo/NO;->d()Lo/ImageSwitcher;

    move-result-object v1

    .line 62
    sget v2, Lo/NB$TaskDescription;->l:I

    invoke-static {v2}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v2

    .line 63
    invoke-virtual {v2, v0, p1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setUserSelected(Z)V
    .locals 2

    .line 48
    invoke-direct {p0}, Lo/NO;->e()Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 49
    invoke-direct {p0}, Lo/NO;->a()Lo/ImageSwitcher;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0}, Lo/NO;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 52
    sget v1, Lo/NB$StateListAnimator;->c:I

    .line 50
    invoke-static {p1, v1}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lo/NO;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 55
    sget v1, Lo/NB$StateListAnimator;->a:I

    .line 53
    invoke-static {p1, v1}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p1

    .line 49
    :goto_0
    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setTextColor(I)V

    return-void
.end method
