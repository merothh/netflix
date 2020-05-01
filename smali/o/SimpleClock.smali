.class public Lo/SimpleClock;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lo/SystemVibrator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SimpleClock$Activity;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/CharSequence;

.field protected b:Ljava/lang/CharSequence;

.field protected c:Lo/SimpleClock$Activity;

.field protected d:Ljava/lang/CharSequence;

.field protected e:Landroid/widget/ImageView;

.field private f:Lo/ImageSwitcher;

.field protected g:Ljava/lang/CharSequence;

.field private h:Lo/StatFs;

.field protected i:Ljava/lang/CharSequence;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/content/res/ColorStateList;

.field private l:Landroid/graphics/drawable/Drawable;

.field private final m:Ljava/lang/Runnable;

.field private n:Z

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:I

.field private q:Ljava/lang/CharSequence;

.field private r:Ljava/lang/CharSequence;

.field private s:Ljava/lang/CharSequence;

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Ljava/lang/CharSequence;

.field private v:Ljava/lang/CharSequence;

.field private w:Z

.field private y:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 147
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lo/SimpleClock;->n:Z

    .line 64
    new-instance v0, Lo/SimpleClock$5;

    invoke-direct {v0, p0}, Lo/SimpleClock$5;-><init>(Lo/SimpleClock;)V

    iput-object v0, p0, Lo/SimpleClock;->m:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lo/SimpleClock;->p:I

    .line 144
    iput-boolean p1, p0, Lo/SimpleClock;->w:Z

    const/4 p1, 0x0

    .line 148
    invoke-direct {p0, p1}, Lo/SimpleClock;->d(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 152
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lo/SimpleClock;->n:Z

    .line 64
    new-instance v0, Lo/SimpleClock$5;

    invoke-direct {v0, p0}, Lo/SimpleClock$5;-><init>(Lo/SimpleClock;)V

    iput-object v0, p0, Lo/SimpleClock;->m:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lo/SimpleClock;->p:I

    .line 144
    iput-boolean p1, p0, Lo/SimpleClock;->w:Z

    .line 153
    invoke-direct {p0, p2}, Lo/SimpleClock;->d(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 157
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lo/SimpleClock;->n:Z

    .line 64
    new-instance p3, Lo/SimpleClock$5;

    invoke-direct {p3, p0}, Lo/SimpleClock$5;-><init>(Lo/SimpleClock;)V

    iput-object p3, p0, Lo/SimpleClock;->m:Ljava/lang/Runnable;

    const/4 p3, 0x0

    .line 119
    iput p3, p0, Lo/SimpleClock;->p:I

    .line 144
    iput-boolean p1, p0, Lo/SimpleClock;->w:Z

    .line 158
    invoke-direct {p0, p2}, Lo/SimpleClock;->d(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 1

    .line 247
    iget v0, p0, Lo/SimpleClock;->p:I

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lo/SimpleClock;->j:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 252
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lo/SimpleClock;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lo/SimpleClock;->a()V

    return-void
.end method

.method static synthetic b(Lo/SimpleClock;Landroidx/coordinatorlayout/widget/CoordinatorLayout;IZ)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lo/SimpleClock;->e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;IZ)V

    return-void
.end method

.method private c()V
    .locals 4

    .line 349
    iget-object v0, p0, Lo/SimpleClock;->c:Lo/SimpleClock$Activity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 351
    invoke-interface {v0, p0, v1}, Lo/SimpleClock$Activity;->d(Lo/SystemVibrator;I)V

    const-wide/16 v2, 0x438

    .line 353
    invoke-direct {p0, v1, v2, v3}, Lo/SimpleClock;->d(IJ)V

    :cond_0
    return-void
.end method

.method private c(J)V
    .locals 5

    .line 275
    iget-object v0, p0, Lo/SimpleClock;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageAlpha()I

    move-result v0

    .line 279
    iget v1, p0, Lo/SimpleClock;->p:I

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    move-object v1, v2

    move-object v3, v1

    goto :goto_0

    .line 286
    :cond_0
    iget-object v2, p0, Lo/SimpleClock;->o:Landroid/graphics/drawable/Drawable;

    .line 287
    iget-object v1, p0, Lo/SimpleClock;->q:Ljava/lang/CharSequence;

    .line 288
    iget-object v3, p0, Lo/SimpleClock;->u:Ljava/lang/CharSequence;

    goto :goto_0

    .line 281
    :cond_1
    iget-object v2, p0, Lo/SimpleClock;->l:Landroid/graphics/drawable/Drawable;

    .line 282
    iget-object v1, p0, Lo/SimpleClock;->r:Ljava/lang/CharSequence;

    .line 283
    iget-object v3, p0, Lo/SimpleClock;->v:Ljava/lang/CharSequence;

    goto :goto_0

    .line 291
    :cond_2
    iget-object v2, p0, Lo/SimpleClock;->t:Landroid/graphics/drawable/Drawable;

    .line 292
    iget-object v1, p0, Lo/SimpleClock;->s:Ljava/lang/CharSequence;

    .line 293
    iget-object v3, p0, Lo/SimpleClock;->y:Ljava/lang/CharSequence;

    .line 296
    :goto_0
    iget-object v4, p0, Lo/SimpleClock;->e:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    iget-object v2, p0, Lo/SimpleClock;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 298
    iget-object v0, p0, Lo/SimpleClock;->f:Lo/ImageSwitcher;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 299
    invoke-virtual {p0, v3}, Lo/SimpleClock;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 300
    invoke-direct {p0, p1, p2}, Lo/SimpleClock;->e(J)V

    return-void
.end method

.method private c(Landroidx/coordinatorlayout/widget/CoordinatorLayout;IZ)V
    .locals 12

    .line 358
    iget-object v0, p0, Lo/SimpleClock;->c:Lo/SimpleClock$Activity;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lo/SimpleClock;->h:Lo/StatFs;

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Lo/StatFs;

    invoke-virtual {p0}, Lo/SimpleClock;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lo/SimpleClock;->c:Lo/SimpleClock$Activity;

    iget-object v4, p0, Lo/SimpleClock;->d:Ljava/lang/CharSequence;

    iget-object v5, p0, Lo/SimpleClock;->a:Ljava/lang/CharSequence;

    iget-object v6, p0, Lo/SimpleClock;->i:Ljava/lang/CharSequence;

    iget-object v7, p0, Lo/SimpleClock;->b:Ljava/lang/CharSequence;

    iget-object v8, p0, Lo/SimpleClock;->g:Ljava/lang/CharSequence;

    iget-boolean v9, p0, Lo/SimpleClock;->n:Z

    iget-boolean v10, p0, Lo/SimpleClock;->w:Z

    .line 368
    invoke-virtual {p0}, Lo/SimpleClock;->getLayoutDirection()I

    move-result v11

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lo/StatFs;-><init>(Landroid/content/Context;Lo/SimpleClock$Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZI)V

    iput-object v0, p0, Lo/SimpleClock;->h:Lo/StatFs;

    .line 370
    :cond_0
    invoke-virtual {p0}, Lo/SimpleClock;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 371
    iget-object v0, p0, Lo/SimpleClock;->h:Lo/StatFs;

    invoke-virtual {v0, p1, p0, p2}, Lo/StatFs;->e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lo/SystemVibrator;I)V

    .line 372
    iget-object p1, p0, Lo/SimpleClock;->c:Lo/SimpleClock$Activity;

    invoke-interface {p1, p0, p3}, Lo/SimpleClock$Activity;->c(Lo/SystemVibrator;Z)V

    return-void

    .line 359
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "openOverlay called before user set a OnRateListener"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic d(Lo/SimpleClock;)Lo/StatFs;
    .locals 0

    .line 32
    iget-object p0, p0, Lo/SimpleClock;->h:Lo/StatFs;

    return-object p0
.end method

.method private d(IJ)V
    .locals 1

    .line 262
    iget v0, p0, Lo/SimpleClock;->p:I

    if-eq v0, p1, :cond_0

    .line 263
    iput p1, p0, Lo/SimpleClock;->p:I

    .line 264
    invoke-direct {p0, p2, p3}, Lo/SimpleClock;->c(J)V

    :cond_0
    return-void
.end method

.method private d(Landroid/util/AttributeSet;)V
    .locals 4

    .line 169
    invoke-virtual {p0}, Lo/SimpleClock;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lo/IHwInterface$LoaderManager;->h:I

    invoke-static {v0, v1, p0}, Lo/SimpleClock;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 170
    sget v0, Lo/IHwInterface$FragmentManager;->N:I

    invoke-virtual {p0, v0}, Lo/SimpleClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/SimpleClock;->e:Landroid/widget/ImageView;

    .line 171
    sget v0, Lo/IHwInterface$FragmentManager;->L:I

    invoke-virtual {p0, v0}, Lo/SimpleClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ImageSwitcher;

    iput-object v0, p0, Lo/SimpleClock;->f:Lo/ImageSwitcher;

    .line 173
    invoke-virtual {p0}, Lo/SimpleClock;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lo/IHwInterface$Fragment;->bR:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 175
    sget v0, Lo/IHwInterface$Fragment;->cd:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/SimpleClock;->q:Ljava/lang/CharSequence;

    .line 176
    sget v0, Lo/IHwInterface$Fragment;->cb:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/SimpleClock;->r:Ljava/lang/CharSequence;

    .line 177
    sget v0, Lo/IHwInterface$Fragment;->bZ:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/SimpleClock;->s:Ljava/lang/CharSequence;

    .line 179
    sget v0, Lo/IHwInterface$Fragment;->bW:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/SimpleClock;->u:Ljava/lang/CharSequence;

    .line 180
    sget v0, Lo/IHwInterface$Fragment;->bU:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/SimpleClock;->v:Ljava/lang/CharSequence;

    .line 181
    sget v0, Lo/IHwInterface$Fragment;->bY:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/SimpleClock;->y:Ljava/lang/CharSequence;

    .line 183
    sget v0, Lo/IHwInterface$Fragment;->bX:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/SimpleClock;->d:Ljava/lang/CharSequence;

    .line 184
    sget v0, Lo/IHwInterface$Fragment;->bS:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/SimpleClock;->a:Ljava/lang/CharSequence;

    .line 185
    sget v0, Lo/IHwInterface$Fragment;->bP:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/SimpleClock;->i:Ljava/lang/CharSequence;

    .line 186
    sget v0, Lo/IHwInterface$Fragment;->bT:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/SimpleClock;->b:Ljava/lang/CharSequence;

    .line 187
    sget v0, Lo/IHwInterface$Fragment;->bQ:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/SimpleClock;->g:Ljava/lang/CharSequence;

    .line 189
    invoke-virtual {p0}, Lo/SimpleClock;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lo/IHwInterface$TaskDescription;->l:I

    invoke-static {v0, v1}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lo/AccessibilityRecord;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/SimpleClock;->o:Landroid/graphics/drawable/Drawable;

    .line 190
    invoke-virtual {p0}, Lo/SimpleClock;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lo/IHwInterface$TaskDescription;->f:I

    invoke-static {v0, v1}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lo/AccessibilityRecord;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/SimpleClock;->l:Landroid/graphics/drawable/Drawable;

    .line 191
    invoke-virtual {p0}, Lo/SimpleClock;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lo/IHwInterface$TaskDescription;->m:I

    invoke-static {v0, v1}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lo/AccessibilityRecord;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/SimpleClock;->t:Landroid/graphics/drawable/Drawable;

    .line 193
    sget v0, Lo/IHwInterface$Fragment;->ca:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iput-object v0, p0, Lo/SimpleClock;->k:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {p0}, Lo/SimpleClock;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lo/IHwInterface$StateListAnimator;->f:I

    invoke-static {v0, v1}, Lo/OnSystemUiVisibilityChangeListener;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lo/SimpleClock;->k:Landroid/content/res/ColorStateList;

    .line 199
    :goto_0
    sget v0, Lo/IHwInterface$Fragment;->cc:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lo/SimpleClock;->f:Lo/ImageSwitcher;

    const/4 v1, 0x0

    sget v2, Lo/IHwInterface$Fragment;->cc:I

    iget-object v3, p0, Lo/SimpleClock;->f:Lo/ImageSwitcher;

    invoke-virtual {v3}, Lo/ImageSwitcher;->getTextSize()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lo/ImageSwitcher;->setTextSize(IF)V

    .line 202
    :cond_1
    sget v0, Lo/IHwInterface$Fragment;->bV:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lo/SimpleClock;->setDark(Z)V

    .line 204
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const-wide/16 v0, 0x0

    .line 206
    invoke-direct {p0, v0, v1}, Lo/SimpleClock;->c(J)V

    return-void
.end method

.method private e(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 239
    iget-object v0, p0, Lo/SimpleClock;->m:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lo/SimpleClock;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 240
    iget-object v0, p0, Lo/SimpleClock;->m:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Lo/SimpleClock;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 242
    :cond_0
    invoke-direct {p0}, Lo/SimpleClock;->a()V

    :goto_0
    return-void
.end method

.method private e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;IZ)V
    .locals 1

    .line 339
    iget v0, p0, Lo/SimpleClock;->p:I

    if-nez v0, :cond_0

    .line 341
    invoke-direct {p0, p1, p2, p3}, Lo/SimpleClock;->c(Landroidx/coordinatorlayout/widget/CoordinatorLayout;IZ)V

    goto :goto_0

    .line 344
    :cond_0
    invoke-direct {p0}, Lo/SimpleClock;->c()V

    :goto_0
    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 271
    iget v0, p0, Lo/SimpleClock;->p:I

    return v0
.end method

.method protected c(Lo/SimpleClock$Activity;)Lo/SimpleClock$Activity;
    .locals 1

    .line 376
    new-instance v0, Lo/SimpleClock$3;

    invoke-direct {v0, p0, p1}, Lo/SimpleClock$3;-><init>(Lo/SimpleClock;Lo/SimpleClock$Activity;)V

    return-object v0
.end method

.method public d()Landroid/widget/ImageView;
    .locals 1

    .line 410
    iget-object v0, p0, Lo/SimpleClock;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method public e()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 233
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 234
    iput-object p1, p0, Lo/SimpleClock;->j:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDark(Z)V
    .locals 2

    .line 218
    iput-boolean p1, p0, Lo/SimpleClock;->n:Z

    .line 219
    iget-object p1, p0, Lo/SimpleClock;->f:Lo/ImageSwitcher;

    iget-boolean v0, p0, Lo/SimpleClock;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/SimpleClock;->k:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo/SimpleClock;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lo/IHwInterface$StateListAnimator;->l:I

    invoke-static {v0, v1}, Lo/OnSystemUiVisibilityChangeListener;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 221
    invoke-virtual {p0}, Lo/SimpleClock;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean v0, p0, Lo/SimpleClock;->n:Z

    if-eqz v0, :cond_1

    sget v0, Lo/IHwInterface$StateListAnimator;->f:I

    goto :goto_1

    :cond_1
    sget v0, Lo/IHwInterface$StateListAnimator;->l:I

    :goto_1
    invoke-static {p1, v0}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lo/SimpleClock;->setIconColor(I)V

    return-void
.end method

.method public setIconColor(I)V
    .locals 1

    .line 225
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 226
    iget-object v0, p0, Lo/SimpleClock;->o:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lo/AccessibilityRecord;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 227
    iget-object v0, p0, Lo/SimpleClock;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lo/AccessibilityRecord;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 228
    iget-object v0, p0, Lo/SimpleClock;->t:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lo/AccessibilityRecord;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setOnRateListener(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lo/SimpleClock$Activity;ZI)V
    .locals 2

    .line 304
    invoke-virtual {p0}, Lo/SimpleClock;->isClickable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p0, v1}, Lo/SimpleClock;->setClickable(Z)V

    .line 307
    :cond_0
    invoke-virtual {p0}, Lo/SimpleClock;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    invoke-virtual {p0, v1}, Lo/SimpleClock;->setFocusable(Z)V

    .line 310
    :cond_1
    invoke-virtual {p0, p2}, Lo/SimpleClock;->c(Lo/SimpleClock$Activity;)Lo/SimpleClock$Activity;

    move-result-object p2

    iput-object p2, p0, Lo/SimpleClock;->c:Lo/SimpleClock$Activity;

    .line 311
    new-instance p2, Lo/SimpleClock$1;

    invoke-direct {p2, p0, p1, p4}, Lo/SimpleClock$1;-><init>(Lo/SimpleClock;Landroidx/coordinatorlayout/widget/CoordinatorLayout;I)V

    invoke-virtual {p0, p2}, Lo/SimpleClock;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p3, :cond_2

    .line 318
    new-instance p2, Lo/SimpleClock$4;

    invoke-direct {p2, p0, p1, p4}, Lo/SimpleClock$4;-><init>(Lo/SimpleClock;Landroidx/coordinatorlayout/widget/CoordinatorLayout;I)V

    invoke-virtual {p0, p2}, Lo/SimpleClock;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 325
    new-instance p1, Lo/SimpleClock$2;

    invoke-direct {p1, p0}, Lo/SimpleClock$2;-><init>(Lo/SimpleClock;)V

    invoke-virtual {p0, p1}, Lo/SimpleClock;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    return-void
.end method

.method public setRating(I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 258
    invoke-direct {p0, p1, v0, v1}, Lo/SimpleClock;->d(IJ)V

    return-void
.end method

.method public setRespectLayoutDirection(Z)V
    .locals 0

    .line 214
    iput-boolean p1, p0, Lo/SimpleClock;->w:Z

    return-void
.end method
