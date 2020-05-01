.class public Lo/ExpandableListAdapter;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field private static final f:Landroid/view/animation/Interpolator;

.field private static final j:Landroid/view/animation/Interpolator;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:Landroid/widget/TextView;

.field private final e:Lo/FilterQueryProvider;

.field private g:Z

.field private final h:Landroid/animation/ValueAnimator;

.field private final i:Landroid/animation/ValueAnimator;

.field private final k:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3e6b851f    # 0.23f

    const v2, 0x3ea3d70a    # 0.32f

    .line 41
    invoke-static {v1, v0, v2, v0}, Lo/ObjectOutput;->e(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lo/ExpandableListAdapter;->j:Landroid/view/animation/Interpolator;

    const v0, 0x3f4147ae    # 0.755f

    const v1, 0x3d4ccccd    # 0.05f

    const v2, 0x3f5ae148    # 0.855f

    const v3, 0x3d75c28f    # 0.06f

    .line 42
    invoke-static {v0, v1, v2, v3}, Lo/ObjectOutput;->e(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lo/ExpandableListAdapter;->f:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, v0, v1}, Lo/ExpandableListAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lo/ExpandableListAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 43
    iput-boolean p3, p0, Lo/ExpandableListAdapter;->g:Z

    .line 46
    new-instance p3, Landroid/animation/ValueAnimator;

    invoke-direct {p3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p3, p0, Lo/ExpandableListAdapter;->i:Landroid/animation/ValueAnimator;

    .line 48
    new-instance p3, Landroid/animation/ValueAnimator;

    invoke-direct {p3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p3, p0, Lo/ExpandableListAdapter;->h:Landroid/animation/ValueAnimator;

    .line 50
    new-instance p3, Landroid/animation/ValueAnimator;

    invoke-direct {p3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p3, p0, Lo/ExpandableListAdapter;->k:Landroid/animation/ValueAnimator;

    .line 64
    sget p3, Lo/IHwInterface$LoaderManager;->j:I

    invoke-static {p1, p3, p0}, Lo/ExpandableListAdapter;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 65
    sget p1, Lo/IHwInterface$FragmentManager;->l:I

    invoke-virtual {p0, p1}, Lo/ExpandableListAdapter;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/ExpandableListAdapter;->d:Landroid/widget/TextView;

    .line 66
    sget-object p1, Lo/FilterQueryProvider;->e:Lo/FilterQueryProvider$Application;

    invoke-virtual {p0}, Lo/ExpandableListAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lo/FilterQueryProvider$Application;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lo/FilterQueryProvider;

    move-result-object p1

    iput-object p1, p0, Lo/ExpandableListAdapter;->e:Lo/FilterQueryProvider;

    .line 67
    new-instance p1, Lo/Filter;

    iget-object p2, p0, Lo/ExpandableListAdapter;->e:Lo/FilterQueryProvider;

    invoke-direct {p1, p2}, Lo/Filter;-><init>(Lo/FilterQueryProvider;)V

    invoke-virtual {p0, p1}, Lo/ExpandableListAdapter;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object p1, p0, Lo/ExpandableListAdapter;->d:Landroid/widget/TextView;

    iget-object p2, p0, Lo/ExpandableListAdapter;->e:Lo/FilterQueryProvider;

    invoke-virtual {p2}, Lo/FilterQueryProvider;->d()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 69
    iget-object p1, p0, Lo/ExpandableListAdapter;->d:Landroid/widget/TextView;

    iget-object p2, p0, Lo/ExpandableListAdapter;->e:Lo/FilterQueryProvider;

    invoke-virtual {p2}, Lo/FilterQueryProvider;->h()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p1, p0, Lo/ExpandableListAdapter;->e:Lo/FilterQueryProvider;

    invoke-virtual {p1}, Lo/FilterQueryProvider;->n()I

    move-result p1

    iput p1, p0, Lo/ExpandableListAdapter;->c:I

    .line 72
    iget p1, p0, Lo/ExpandableListAdapter;->c:I

    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/ExpandableListAdapter;->a:I

    .line 73
    invoke-virtual {p0}, Lo/ExpandableListAdapter;->getPaddingStart()I

    move-result p1

    invoke-virtual {p0}, Lo/ExpandableListAdapter;->getPaddingEnd()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lo/ExpandableListAdapter;->b:I

    const/4 p1, 0x0

    .line 76
    invoke-virtual {p0, p1}, Lo/ExpandableListAdapter;->setAlpha(F)V

    const/16 p1, 0x8

    .line 77
    invoke-virtual {p0, p1}, Lo/ExpandableListAdapter;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lo/ExpandableListAdapter;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/ExpandableListAdapter;->i:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private a(IIIILandroid/view/animation/Interpolator;)V
    .locals 3

    .line 119
    iget-object v0, p0, Lo/ExpandableListAdapter;->h:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lo/ExpandableListAdapter;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 123
    :cond_0
    iget-object v0, p0, Lo/ExpandableListAdapter;->h:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 124
    iget-object p1, p0, Lo/ExpandableListAdapter;->h:Landroid/animation/ValueAnimator;

    new-instance p2, Lo/ExpandableListAdapter$5;

    invoke-direct {p2, p0}, Lo/ExpandableListAdapter$5;-><init>(Lo/ExpandableListAdapter;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 131
    iget-object p1, p0, Lo/ExpandableListAdapter;->h:Landroid/animation/ValueAnimator;

    new-instance p2, Lo/ExpandableListAdapter$1;

    invoke-direct {p2, p0}, Lo/ExpandableListAdapter$1;-><init>(Lo/ExpandableListAdapter;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 139
    iget-object p1, p0, Lo/ExpandableListAdapter;->h:Landroid/animation/ValueAnimator;

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 140
    iget-object p1, p0, Lo/ExpandableListAdapter;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 141
    iget-object p1, p0, Lo/ExpandableListAdapter;->h:Landroid/animation/ValueAnimator;

    int-to-long p2, p4

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 142
    iget-object p1, p0, Lo/ExpandableListAdapter;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic b(Lo/ExpandableListAdapter;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/ExpandableListAdapter;->h:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private varargs b([Landroid/animation/ValueAnimator;)Z
    .locals 4

    .line 185
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 186
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static synthetic d(Lo/ExpandableListAdapter;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/ExpandableListAdapter;->k:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private d(IIIILandroid/view/animation/Interpolator;Z)V
    .locals 3

    .line 89
    iget-object v0, p0, Lo/ExpandableListAdapter;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lo/ExpandableListAdapter;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 93
    :cond_0
    iget-object v0, p0, Lo/ExpandableListAdapter;->i:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 94
    iget-object p1, p0, Lo/ExpandableListAdapter;->i:Landroid/animation/ValueAnimator;

    new-instance p2, Lo/ExpandableListAdapter$2;

    invoke-direct {p2, p0}, Lo/ExpandableListAdapter$2;-><init>(Lo/ExpandableListAdapter;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 102
    iget-object p1, p0, Lo/ExpandableListAdapter;->i:Landroid/animation/ValueAnimator;

    new-instance p2, Lo/ExpandableListAdapter$3;

    invoke-direct {p2, p0, p6}, Lo/ExpandableListAdapter$3;-><init>(Lo/ExpandableListAdapter;Z)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 112
    iget-object p1, p0, Lo/ExpandableListAdapter;->i:Landroid/animation/ValueAnimator;

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 113
    iget-object p1, p0, Lo/ExpandableListAdapter;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 114
    iget-object p1, p0, Lo/ExpandableListAdapter;->i:Landroid/animation/ValueAnimator;

    int-to-long p2, p4

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 115
    iget-object p1, p0, Lo/ExpandableListAdapter;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic e(Lo/ExpandableListAdapter;)Landroid/widget/TextView;
    .locals 0

    .line 24
    iget-object p0, p0, Lo/ExpandableListAdapter;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method private e(FFII)V
    .locals 3

    .line 146
    iget-object v0, p0, Lo/ExpandableListAdapter;->k:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lo/ExpandableListAdapter;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 150
    :cond_0
    iget-object v0, p0, Lo/ExpandableListAdapter;->k:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 151
    iget-object p1, p0, Lo/ExpandableListAdapter;->k:Landroid/animation/ValueAnimator;

    new-instance p2, Lo/ExpandableListAdapter$4;

    invoke-direct {p2, p0}, Lo/ExpandableListAdapter$4;-><init>(Lo/ExpandableListAdapter;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 160
    iget-object p1, p0, Lo/ExpandableListAdapter;->k:Landroid/animation/ValueAnimator;

    new-instance p2, Lo/ExpandableListAdapter$8;

    invoke-direct {p2, p0}, Lo/ExpandableListAdapter$8;-><init>(Lo/ExpandableListAdapter;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 174
    iget-object p1, p0, Lo/ExpandableListAdapter;->k:Landroid/animation/ValueAnimator;

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 175
    iget-object p1, p0, Lo/ExpandableListAdapter;->k:Landroid/animation/ValueAnimator;

    int-to-long p2, p4

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 176
    iget-object p1, p0, Lo/ExpandableListAdapter;->k:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 11

    .line 194
    iget-boolean v0, p0, Lo/ExpandableListAdapter;->g:Z

    if-nez v0, :cond_2

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lo/ExpandableListAdapter;->k:Landroid/animation/ValueAnimator;

    const/4 v7, 0x0

    aput-object v1, v0, v7

    iget-object v1, p0, Lo/ExpandableListAdapter;->i:Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/ExpandableListAdapter;->h:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Lo/ExpandableListAdapter;->b([Landroid/animation/ValueAnimator;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 197
    :cond_0
    invoke-virtual {p0, v7}, Lo/ExpandableListAdapter;->setVisibility(I)V

    .line 198
    iput-boolean v2, p0, Lo/ExpandableListAdapter;->g:Z

    .line 200
    iget-object v0, p0, Lo/ExpandableListAdapter;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lo/ExpandableListAdapter;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lo/ExpandableListAdapter;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v7, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-int v0, v0

    .line 201
    iget v1, p0, Lo/ExpandableListAdapter;->b:I

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    int-to-double v4, v2

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double v4, v4, v8

    double-to-int v2, v4

    mul-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    .line 203
    div-int/lit8 v1, v3, 0x2

    mul-int/lit8 v8, v1, -0x1

    .line 206
    invoke-virtual {p0}, Lo/ExpandableListAdapter;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v4, p0, Lo/ExpandableListAdapter;->c:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 207
    invoke-virtual {p0, v7, v7, v7, v7}, Lo/ExpandableListAdapter;->setPadding(IIII)V

    .line 210
    iget-object v1, p0, Lo/ExpandableListAdapter;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 211
    iget-object v0, p0, Lo/ExpandableListAdapter;->d:Landroid/widget/TextView;

    iget v1, p0, Lo/ExpandableListAdapter;->a:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 214
    invoke-virtual {p0}, Lo/ExpandableListAdapter;->requestLayout()V

    const/4 v9, 0x0

    .line 217
    invoke-virtual {p0, v9}, Lo/ExpandableListAdapter;->setAlpha(F)V

    .line 218
    iget-object v0, p0, Lo/ExpandableListAdapter;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v10, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 222
    sget-object v6, Lo/ExpandableListAdapter;->j:Landroid/view/animation/Interpolator;

    const/4 v8, 0x1

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lo/ExpandableListAdapter;->d(IIIILandroid/view/animation/Interpolator;Z)V

    .line 223
    iget v1, p0, Lo/ExpandableListAdapter;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lo/ExpandableListAdapter;->j:Landroid/view/animation/Interpolator;

    invoke-direct/range {v0 .. v5}, Lo/ExpandableListAdapter;->a(IIIILandroid/view/animation/Interpolator;)V

    .line 224
    invoke-direct {p0, v9, v10, v7, v7}, Lo/ExpandableListAdapter;->e(FFII)V

    goto :goto_0

    :cond_1
    const/16 v4, 0x320

    const/16 v5, 0x64

    .line 227
    sget-object v6, Lo/ExpandableListAdapter;->j:Landroid/view/animation/Interpolator;

    const/4 v7, 0x1

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lo/ExpandableListAdapter;->d(IIIILandroid/view/animation/Interpolator;Z)V

    const/4 v2, 0x0

    const/16 v3, 0x320

    const/16 v4, 0x64

    .line 228
    sget-object v5, Lo/ExpandableListAdapter;->j:Landroid/view/animation/Interpolator;

    move v1, v8

    invoke-direct/range {v0 .. v5}, Lo/ExpandableListAdapter;->a(IIIILandroid/view/animation/Interpolator;)V

    const/16 v0, 0xc8

    const/16 v1, 0x64

    .line 229
    invoke-direct {p0, v9, v10, v0, v1}, Lo/ExpandableListAdapter;->e(FFII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 14

    .line 234
    iget-boolean v0, p0, Lo/ExpandableListAdapter;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lo/ExpandableListAdapter;->g:Z

    .line 239
    iget-object v1, p0, Lo/ExpandableListAdapter;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lo/ExpandableListAdapter;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lo/ExpandableListAdapter;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    float-to-int v1, v1

    .line 240
    iget v2, p0, Lo/ExpandableListAdapter;->b:I

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    int-to-double v3, v3

    const-wide v5, 0x3fc999999999999aL    # 0.2

    mul-double v3, v3, v5

    double-to-int v7, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 242
    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    .line 246
    invoke-virtual {p0}, Lo/ExpandableListAdapter;->getMeasuredWidth()I

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Lo/ExpandableListAdapter;->f:Landroid/view/animation/Interpolator;

    const/4 v11, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lo/ExpandableListAdapter;->d(IIIILandroid/view/animation/Interpolator;Z)V

    const/4 v12, 0x0

    .line 247
    sget-object v13, Lo/ExpandableListAdapter;->f:Landroid/view/animation/Interpolator;

    move-object v8, p0

    move v10, v1

    invoke-direct/range {v8 .. v13}, Lo/ExpandableListAdapter;->a(IIIILandroid/view/animation/Interpolator;)V

    .line 248
    invoke-direct {p0, v3, v2, v0, v0}, Lo/ExpandableListAdapter;->e(FFII)V

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {p0}, Lo/ExpandableListAdapter;->getMeasuredWidth()I

    move-result v6

    const/16 v8, 0x1f4

    const/16 v9, 0x64

    sget-object v10, Lo/ExpandableListAdapter;->f:Landroid/view/animation/Interpolator;

    const/4 v11, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lo/ExpandableListAdapter;->d(IIIILandroid/view/animation/Interpolator;Z)V

    const/4 v9, 0x0

    const/16 v11, 0x1f4

    const/16 v12, 0x64

    .line 251
    sget-object v13, Lo/ExpandableListAdapter;->f:Landroid/view/animation/Interpolator;

    move-object v8, p0

    move v10, v1

    invoke-direct/range {v8 .. v13}, Lo/ExpandableListAdapter;->a(IIIILandroid/view/animation/Interpolator;)V

    const/16 p1, 0xfa

    const/16 v0, 0x15e

    .line 252
    invoke-direct {p0, v3, v2, p1, v0}, Lo/ExpandableListAdapter;->e(FFII)V

    :goto_0
    return-void
.end method

.method public setText(I)V
    .locals 1

    .line 81
    iget-object v0, p0, Lo/ExpandableListAdapter;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lo/ExpandableListAdapter;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
