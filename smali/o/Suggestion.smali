.class public final Lo/Suggestion;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field static final synthetic a:[Lo/amT;


# instance fields
.field private final b:Lo/ams;

.field private final c:Lo/ams;

.field private final d:Lo/ams;

.field private final e:Lo/ams;

.field private f:I

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lo/Suggestion;

    const/4 v1, 0x4

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "expandingHeader"

    const-string v5, "getExpandingHeader()Landroid/view/View;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "expandingHeaderChevron"

    const-string v5, "getExpandingHeaderChevron()Landroid/widget/ImageView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "expandingHeaderText"

    const-string v5, "getExpandingHeaderText()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "expandingContainer"

    const-string v4, "getExpandingContainer()Landroid/widget/FrameLayout;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lo/Suggestion;->a:[Lo/amT;

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

    invoke-direct/range {v0 .. v5}, Lo/Suggestion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

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

    invoke-direct/range {v0 .. v5}, Lo/Suggestion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->gN:I

    invoke-static {p0, p3}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p3

    iput-object p3, p0, Lo/Suggestion;->e:Lo/ams;

    .line 27
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->gM:I

    invoke-static {p0, p3}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p3

    iput-object p3, p0, Lo/Suggestion;->d:Lo/ams;

    .line 28
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->gS:I

    invoke-static {p0, p3}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p3

    iput-object p3, p0, Lo/Suggestion;->c:Lo/ams;

    .line 29
    sget p3, Lcom/netflix/mediaclient/ui/R$Fragment;->gK:I

    invoke-static {p0, p3}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p3

    iput-object p3, p0, Lo/Suggestion;->b:Lo/ams;

    .line 35
    sget p3, Lcom/netflix/mediaclient/ui/R$Dialog;->bo:I

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p1, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p3, 0x1

    .line 36
    invoke-virtual {p0, p3}, Lo/Suggestion;->setOrientation(I)V

    .line 37
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast p3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, p3}, Lo/Suggestion;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    .line 41
    sget-object v0, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->ak:[I

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p3, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 45
    :try_start_0
    sget p3, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->al:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 46
    invoke-virtual {p0}, Lo/Suggestion;->a()Landroid/widget/TextView;

    move-result-object p3

    sget v0, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->al:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string p3, "styleAttrs"

    .line 49
    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lcom/netflix/mediaclient/ui/R$PictureInPictureParams;->aj:I

    invoke-static {p2, p3}, Lo/ViewStructure;->b(Landroid/content/res/TypedArray;I)I

    move-result p3

    .line 50
    invoke-virtual {p0}, Lo/Suggestion;->d()Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p1, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    invoke-virtual {p0}, Lo/Suggestion;->d()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 56
    new-instance p2, Lo/Suggestion$3;

    invoke-direct {p2, p0}, Lo/Suggestion$3;-><init>(Lo/Suggestion;)V

    check-cast p2, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :catchall_0
    move-exception p1

    .line 52
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILo/amc;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 22
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 23
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/Suggestion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final c(II)V
    .locals 4

    .line 99
    invoke-virtual {p0}, Lo/Suggestion;->d()Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lo/RestrictionsReceiver;

    invoke-direct {v1}, Lo/RestrictionsReceiver;-><init>()V

    check-cast v1, Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 p1, 0x1

    aput p2, v2, p1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-string p2, "animator"

    .line 100
    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 101
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    check-cast p2, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 102
    new-instance p2, Lo/Suggestion$Activity;

    invoke-direct {p2, p0}, Lo/Suggestion$Activity;-><init>(Lo/Suggestion;)V

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 108
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public static final synthetic d(Lo/Suggestion;I)V
    .locals 0

    .line 20
    iput p1, p0, Lo/Suggestion;->f:I

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lo/Suggestion;->c:Lo/ams;

    sget-object v1, Lo/Suggestion;->a:[Lo/amT;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final b()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lo/Suggestion;->d:Lo/ams;

    sget-object v1, Lo/Suggestion;->a:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final c()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lo/Suggestion;->e:Lo/ams;

    sget-object v1, Lo/Suggestion;->a:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final d()Landroid/widget/FrameLayout;
    .locals 3

    iget-object v0, p0, Lo/Suggestion;->b:Lo/ams;

    sget-object v1, Lo/Suggestion;->a:[Lo/amT;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lo/Suggestion;->h:Z

    return v0
.end method

.method public final f()V
    .locals 2

    .line 94
    iget v0, p0, Lo/Suggestion;->f:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/Suggestion;->c(II)V

    .line 95
    invoke-virtual {p0}, Lo/Suggestion;->b()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method

.method public final g()V
    .locals 1

    .line 68
    iget-boolean v0, p0, Lo/Suggestion;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/Suggestion;->j()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo/Suggestion;->f()V

    :goto_0
    return-void
.end method

.method public final h()V
    .locals 2

    .line 84
    invoke-virtual {p0}, Lo/Suggestion;->d()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 85
    invoke-virtual {p0}, Lo/Suggestion;->d()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p0}, Lo/Suggestion;->d()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final i()Landroid/view/View;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lo/Suggestion;->d()Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final j()V
    .locals 2

    .line 89
    iget v0, p0, Lo/Suggestion;->f:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lo/Suggestion;->c(II)V

    .line 90
    invoke-virtual {p0}, Lo/Suggestion;->b()Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method

.method public final setExpanded(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lo/Suggestion;->h:Z

    return-void
.end method

.method public final setHeaderClickListener(Lo/alA;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alA<",
            "-",
            "Landroid/view/View;",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lo/Suggestion;->c()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lo/ResolverTarget;

    invoke-direct {v1, p1}, Lo/ResolverTarget;-><init>(Lo/alA;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setHeaderText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lo/Suggestion;->a()Landroid/widget/TextView;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
