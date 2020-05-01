.class public Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$SavedState;,
        Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$ActionBar;,
        Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$Activity;
    }
.end annotation


# static fields
.field private static final b:[I

.field private static final c:[I


# instance fields
.field protected final a:Lo/UEventObserver;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/TransactionTracker;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private i:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$Activity;

.field private j:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    .line 68
    sput-object v1, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->b:[I

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v2

    .line 69
    sput-object v0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->c:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, v0}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->d:Ljava/util/List;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->e:Z

    .line 89
    invoke-virtual {p0, p1}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->c(Landroid/content/Context;)Lo/UEventObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->a:Lo/UEventObserver;

    .line 90
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 92
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 93
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->a:Lo/UEventObserver;

    invoke-virtual {v2, v1}, Lo/UEventObserver;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object v2, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->a:Lo/UEventObserver;

    invoke-virtual {v2, p0}, Lo/UEventObserver;->setTabView(Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;)V

    .line 98
    sget-object v2, Lo/IHwInterface$Fragment;->B:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 100
    sget p2, Lo/IHwInterface$Fragment;->G:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const p3, 0x1010038

    if-eqz p2, :cond_0

    .line 101
    iget-object p2, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->a:Lo/UEventObserver;

    sget v2, Lo/IHwInterface$Fragment;->G:I

    .line 102
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 101
    invoke-virtual {p2, v2}, Lo/UEventObserver;->setIconTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object p2, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->a:Lo/UEventObserver;

    .line 105
    invoke-direct {p0, p3}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 104
    invoke-virtual {p2, v2}, Lo/UEventObserver;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 107
    :goto_0
    sget p2, Lo/IHwInterface$Fragment;->H:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 108
    iget-object p2, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->a:Lo/UEventObserver;

    sget p3, Lo/IHwInterface$Fragment;->H:I

    .line 109
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 108
    invoke-virtual {p2, p3}, Lo/UEventObserver;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 111
    :cond_1
    iget-object p2, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->a:Lo/UEventObserver;

    .line 112
    invoke-direct {p0, p3}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->c(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 111
    invoke-virtual {p2, p3}, Lo/UEventObserver;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 114
    :goto_1
    sget p2, Lo/IHwInterface$Fragment;->D:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 115
    sget p2, Lo/IHwInterface$Fragment;->D:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p0, p2}, Lo/FilterWriter;->a(Landroid/view/View;F)V

    .line 119
    :cond_2
    sget p2, Lo/IHwInterface$Fragment;->z:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 120
    iget-object p3, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->a:Lo/UEventObserver;

    invoke-virtual {p3, p2}, Lo/UEventObserver;->setItemBackgroundRes(I)V

    .line 122
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    iget-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->a:Lo/UEventObserver;

    invoke-virtual {p0, p1, v1}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->a:Lo/UEventObserver;

    new-instance p2, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$3;

    invoke-direct {p2, p0}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$3;-><init>(Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;)V

    invoke-virtual {p1, p2}, Lo/UEventObserver;->setTabClickListener(Lo/UEventObserver$TaskDescription;)V

    return-void
.end method

.method private c(I)Landroid/content/res/ColorStateList;
    .locals 9

    .line 345
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 346
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    .line 349
    invoke-static {p1, v3}, Lo/DialogInterface;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 351
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Lo/LoaderManager$StateListAnimator;->D:I

    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    .line 355
    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 356
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 357
    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v4, 0x3

    new-array v5, v4, [[I

    sget-object v6, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->c:[I

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->b:[I

    aput-object v6, v5, v2

    sget-object v6, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->EMPTY_STATE_SET:[I

    const/4 v8, 0x2

    aput-object v6, v5, v8

    new-array v4, v4, [I

    sget-object v6, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->c:[I

    .line 362
    invoke-virtual {p1, v6, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    aput p1, v4, v7

    aput v0, v4, v2

    aput v1, v4, v8

    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method


# virtual methods
.method protected a(I)Lo/TransactionTracker;
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/TransactionTracker;

    .line 283
    invoke-virtual {v1}, Lo/TransactionTracker;->c()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Z)V
    .locals 1

    .line 434
    iget-boolean v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 436
    iget-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->a:Lo/UEventObserver;

    invoke-virtual {p1}, Lo/UEventObserver;->a()V

    goto :goto_0

    .line 438
    :cond_1
    iget-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->a:Lo/UEventObserver;

    invoke-virtual {p1}, Lo/UEventObserver;->d()V

    :goto_0
    return-void
.end method

.method public b(Lo/TransactionTracker;)Z
    .locals 3

    .line 448
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->j:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$ActionBar;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/TransactionTracker;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->d()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 449
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->j:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$ActionBar;

    invoke-interface {v0, p1}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$ActionBar;->d(Lo/TransactionTracker;)V

    return v1

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->i:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$Activity;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$Activity;->e(Lo/TransactionTracker;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected c(Landroid/content/Context;)Lo/UEventObserver;
    .locals 1

    .line 135
    new-instance v0, Lo/UEventObserver;

    invoke-direct {v0, p1}, Lo/UEventObserver;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->a:Lo/UEventObserver;

    invoke-virtual {v0}, Lo/UEventObserver;->b()I

    move-result v0

    return v0
.end method

.method public d(I)Lcom/netflix/android/widgetry/widget/tabs/BadgeView;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->a:Lo/UEventObserver;

    invoke-virtual {v0, p1}, Lo/UEventObserver;->b(I)Lcom/netflix/android/widgetry/widget/tabs/BadgeView;

    move-result-object p1

    return-object p1
.end method

.method public e(I)Z
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->a:Lo/UEventObserver;

    invoke-virtual {v0, p1}, Lo/UEventObserver;->a(I)Z

    move-result p1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 379
    instance-of v0, p1, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$SavedState;

    if-nez v0, :cond_0

    .line 380
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 383
    :cond_0
    check-cast p1, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$SavedState;

    .line 384
    invoke-virtual {p1}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 385
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->a:Lo/UEventObserver;

    iget p1, p1, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$SavedState;->b:I

    invoke-virtual {v0, p1}, Lo/UEventObserver;->c(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 370
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 371
    new-instance v1, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$SavedState;

    invoke-direct {v1, v0}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 372
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->a:Lo/UEventObserver;

    invoke-virtual {v0}, Lo/UEventObserver;->b()I

    move-result v0

    iput v0, v1, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$SavedState;->b:I

    .line 373
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$SavedState;->c:Landroid/os/Bundle;

    return-object v1
.end method

.method public setItemBackgroundResource(I)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->a:Lo/UEventObserver;

    invoke-virtual {v0, p1}, Lo/UEventObserver;->setItemBackgroundRes(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->a:Lo/UEventObserver;

    invoke-virtual {v0, p1}, Lo/UEventObserver;->setIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->a:Lo/UEventObserver;

    invoke-virtual {v0, p1}, Lo/UEventObserver;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setLabelVisibility(Z)V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->a:Lo/UEventObserver;

    invoke-virtual {v0, p1}, Lo/UEventObserver;->setLabelVisibility(Z)V

    return-void
.end method

.method public setOnTabReselectedListener(Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$ActionBar;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->j:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$ActionBar;

    return-void
.end method

.method public setOnTabSelectedListener(Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$Activity;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->i:Lcom/netflix/android/widgetry/widget/tabs/BottomTabView$Activity;

    return-void
.end method

.method public setSelectedTabId(IZ)V
    .locals 0

    .line 298
    invoke-virtual {p0, p1}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->a(I)Lo/TransactionTracker;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 301
    invoke-virtual {p0, p1}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->b(Lo/TransactionTracker;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 302
    iget-object p2, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->a:Lo/UEventObserver;

    invoke-virtual {p2, p1}, Lo/UEventObserver;->setSelectedTab(Lo/TransactionTracker;)V

    goto :goto_0

    .line 305
    :cond_0
    iget-object p2, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->a:Lo/UEventObserver;

    invoke-virtual {p2, p1}, Lo/UEventObserver;->setSelectedTab(Lo/TransactionTracker;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTabs(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/TransactionTracker;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 176
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BottomTabView only supports 5 tabs"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 179
    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->setUpdateSuspended(Z)V

    .line 180
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 181
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->a:Lo/UEventObserver;

    invoke-virtual {v1, p1}, Lo/UEventObserver;->e(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 183
    invoke-virtual {p0, p1}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->setUpdateSuspended(Z)V

    .line 184
    invoke-virtual {p0, v0}, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->a(Z)V

    return-void
.end method

.method public setUpdateSuspended(Z)V
    .locals 0

    .line 443
    iput-boolean p1, p0, Lcom/netflix/android/widgetry/widget/tabs/BottomTabView;->e:Z

    return-void
.end method
