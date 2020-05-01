.class public Lo/GetChars;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field private static final COLOR_BACKGROUND_ATTR:[I

.field private static final IMPL:Lo/NoCopySpan;


# instance fields
.field private final mCardViewDelegate:Lo/InputFilter;

.field private mCompatPadding:Z

.field final mContentPadding:Landroid/graphics/Rect;

.field private mPreventCornerOverlap:Z

.field final mShadowBounds:Landroid/graphics/Rect;

.field mUserSetMinHeight:I

.field mUserSetMinWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010031

    aput v2, v0, v1

    .line 81
    sput-object v0, Lo/GetChars;->COLOR_BACKGROUND_ATTR:[I

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 86
    new-instance v0, Lo/Layout;

    invoke-direct {v0}, Lo/Layout;-><init>()V

    sput-object v0, Lo/GetChars;->IMPL:Lo/NoCopySpan;

    goto :goto_0

    .line 87
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 88
    new-instance v0, Lo/Editable;

    invoke-direct {v0}, Lo/Editable;-><init>()V

    sput-object v0, Lo/GetChars;->IMPL:Lo/NoCopySpan;

    goto :goto_0

    .line 90
    :cond_1
    new-instance v0, Lo/InputType;

    invoke-direct {v0}, Lo/InputType;-><init>()V

    sput-object v0, Lo/GetChars;->IMPL:Lo/NoCopySpan;

    .line 92
    :goto_0
    sget-object v0, Lo/GetChars;->IMPL:Lo/NoCopySpan;

    invoke-interface {v0}, Lo/NoCopySpan;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, v0}, Lo/GetChars;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 117
    sget v0, Lo/PersistableBundle$ActionBar;->b:I

    invoke-direct {p0, p1, p2, v0}, Lo/GetChars;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/GetChars;->mContentPadding:Landroid/graphics/Rect;

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/GetChars;->mShadowBounds:Landroid/graphics/Rect;

    .line 447
    new-instance v0, Lo/GetChars$1;

    invoke-direct {v0, p0}, Lo/GetChars$1;-><init>(Lo/GetChars;)V

    iput-object v0, p0, Lo/GetChars;->mCardViewDelegate:Lo/InputFilter;

    .line 123
    sget-object v0, Lo/PersistableBundle$TaskDescription;->c:[I

    sget v1, Lo/PersistableBundle$Activity;->c:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 126
    sget p3, Lo/PersistableBundle$TaskDescription;->d:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 127
    sget p3, Lo/PersistableBundle$TaskDescription;->d:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    :goto_0
    move-object v4, p3

    goto :goto_2

    .line 130
    :cond_0
    invoke-virtual {p0}, Lo/GetChars;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v1, Lo/GetChars;->COLOR_BACKGROUND_ATTR:[I

    invoke-virtual {p3, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 131
    invoke-virtual {p3, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 132
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p3, 0x3

    new-array p3, p3, [F

    .line 136
    invoke-static {v1, p3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x2

    .line 137
    aget p3, p3, v1

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float p3, p3, v1

    if-lez p3, :cond_1

    .line 138
    invoke-virtual {p0}, Lo/GetChars;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lo/PersistableBundle$Application;->e:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    goto :goto_1

    .line 139
    :cond_1
    invoke-virtual {p0}, Lo/GetChars;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lo/PersistableBundle$Application;->b:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 137
    :goto_1
    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    goto :goto_0

    .line 141
    :goto_2
    sget p3, Lo/PersistableBundle$TaskDescription;->e:I

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 142
    sget p3, Lo/PersistableBundle$TaskDescription;->i:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 143
    sget p3, Lo/PersistableBundle$TaskDescription;->h:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    .line 144
    sget v1, Lo/PersistableBundle$TaskDescription;->f:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lo/GetChars;->mCompatPadding:Z

    .line 145
    sget v1, Lo/PersistableBundle$TaskDescription;->g:I

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lo/GetChars;->mPreventCornerOverlap:Z

    .line 146
    sget v1, Lo/PersistableBundle$TaskDescription;->j:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 147
    iget-object v2, p0, Lo/GetChars;->mContentPadding:Landroid/graphics/Rect;

    sget v3, Lo/PersistableBundle$TaskDescription;->k:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 149
    iget-object v2, p0, Lo/GetChars;->mContentPadding:Landroid/graphics/Rect;

    sget v3, Lo/PersistableBundle$TaskDescription;->o:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 151
    iget-object v2, p0, Lo/GetChars;->mContentPadding:Landroid/graphics/Rect;

    sget v3, Lo/PersistableBundle$TaskDescription;->l:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 153
    iget-object v2, p0, Lo/GetChars;->mContentPadding:Landroid/graphics/Rect;

    sget v3, Lo/PersistableBundle$TaskDescription;->n:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    cmpl-float v1, v6, p3

    if-lez v1, :cond_2

    move v7, v6

    goto :goto_3

    :cond_2
    move v7, p3

    .line 158
    :goto_3
    sget p3, Lo/PersistableBundle$TaskDescription;->b:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lo/GetChars;->mUserSetMinWidth:I

    .line 159
    sget p3, Lo/PersistableBundle$TaskDescription;->a:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lo/GetChars;->mUserSetMinHeight:I

    .line 160
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    sget-object v1, Lo/GetChars;->IMPL:Lo/NoCopySpan;

    iget-object v2, p0, Lo/GetChars;->mCardViewDelegate:Lo/InputFilter;

    move-object v3, p1

    invoke-interface/range {v1 .. v7}, Lo/NoCopySpan;->b(Lo/InputFilter;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V

    return-void
.end method

.method static synthetic access$001(Lo/GetChars;IIII)V
    .locals 0

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method static synthetic access$101(Lo/GetChars;I)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method static synthetic access$201(Lo/GetChars;I)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method


# virtual methods
.method public getPreventCornerOverlap()Z
    .locals 1

    .line 424
    iget-boolean v0, p0, Lo/GetChars;->mPreventCornerOverlap:Z

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lo/GetChars;->mCompatPadding:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 232
    sget-object v0, Lo/GetChars;->IMPL:Lo/NoCopySpan;

    instance-of v0, v0, Lo/Layout;

    if-nez v0, :cond_2

    .line 233
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    sget-object v3, Lo/GetChars;->IMPL:Lo/NoCopySpan;

    iget-object v4, p0, Lo/GetChars;->mCardViewDelegate:Lo/InputFilter;

    invoke-interface {v3, v4}, Lo/NoCopySpan;->c(Lo/InputFilter;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 239
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 238
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 246
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 250
    :cond_1
    sget-object v1, Lo/GetChars;->IMPL:Lo/NoCopySpan;

    iget-object v2, p0, Lo/GetChars;->mCardViewDelegate:Lo/InputFilter;

    invoke-interface {v1, v2}, Lo/NoCopySpan;->e(Lo/InputFilter;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 252
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 251
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 258
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_2

    .line 260
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_2
    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 2

    .line 283
    sget-object v0, Lo/GetChars;->IMPL:Lo/NoCopySpan;

    iget-object v1, p0, Lo/GetChars;->mCardViewDelegate:Lo/InputFilter;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lo/NoCopySpan;->e(Lo/InputFilter;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 293
    sget-object v0, Lo/GetChars;->IMPL:Lo/NoCopySpan;

    iget-object v1, p0, Lo/GetChars;->mCardViewDelegate:Lo/InputFilter;

    invoke-interface {v0, v1, p1}, Lo/NoCopySpan;->e(Lo/InputFilter;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardElevation(F)V
    .locals 2

    .line 376
    sget-object v0, Lo/GetChars;->IMPL:Lo/NoCopySpan;

    iget-object v1, p0, Lo/GetChars;->mCardViewDelegate:Lo/InputFilter;

    invoke-interface {v0, v1, p1}, Lo/NoCopySpan;->d(Lo/InputFilter;F)V

    return-void
.end method

.method public setContentPadding(IIII)V
    .locals 1

    .line 226
    iget-object v0, p0, Lo/GetChars;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 227
    sget-object p1, Lo/GetChars;->IMPL:Lo/NoCopySpan;

    iget-object p2, p0, Lo/GetChars;->mCardViewDelegate:Lo/InputFilter;

    invoke-interface {p1, p2}, Lo/NoCopySpan;->a(Lo/InputFilter;)V

    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 2

    .line 402
    sget-object v0, Lo/GetChars;->IMPL:Lo/NoCopySpan;

    iget-object v1, p0, Lo/GetChars;->mCardViewDelegate:Lo/InputFilter;

    invoke-interface {v0, v1, p1}, Lo/NoCopySpan;->c(Lo/InputFilter;F)V

    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    .line 272
    iput p1, p0, Lo/GetChars;->mUserSetMinHeight:I

    .line 273
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0

    .line 266
    iput p1, p0, Lo/GetChars;->mUserSetMinWidth:I

    .line 267
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 1

    .line 441
    iget-boolean v0, p0, Lo/GetChars;->mPreventCornerOverlap:Z

    if-eq p1, v0, :cond_0

    .line 442
    iput-boolean p1, p0, Lo/GetChars;->mPreventCornerOverlap:Z

    .line 443
    sget-object p1, Lo/GetChars;->IMPL:Lo/NoCopySpan;

    iget-object v0, p0, Lo/GetChars;->mCardViewDelegate:Lo/InputFilter;

    invoke-interface {p1, v0}, Lo/NoCopySpan;->h(Lo/InputFilter;)V

    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 2

    .line 354
    sget-object v0, Lo/GetChars;->IMPL:Lo/NoCopySpan;

    iget-object v1, p0, Lo/GetChars;->mCardViewDelegate:Lo/InputFilter;

    invoke-interface {v0, v1, p1}, Lo/NoCopySpan;->e(Lo/InputFilter;F)V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1

    .line 203
    iget-boolean v0, p0, Lo/GetChars;->mCompatPadding:Z

    if-eq v0, p1, :cond_0

    .line 204
    iput-boolean p1, p0, Lo/GetChars;->mCompatPadding:Z

    .line 205
    sget-object p1, Lo/GetChars;->IMPL:Lo/NoCopySpan;

    iget-object v0, p0, Lo/GetChars;->mCardViewDelegate:Lo/InputFilter;

    invoke-interface {p1, v0}, Lo/NoCopySpan;->f(Lo/InputFilter;)V

    :cond_0
    return-void
.end method
