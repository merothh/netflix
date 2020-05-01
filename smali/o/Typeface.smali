.class public Lo/Typeface;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TOUCH_EPICENTER_SIZE_DP:I = 0x30


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private mForceShowIcon:Z

.field private final mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mMenu:Lo/Mode;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private mPopup:Lo/Callback;

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Lo/MediaController$StateListAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/Mode;)V
    .locals 7

    .line 68
    sget v5, Lo/LoaderManager$StateListAnimator;->E:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lo/Typeface;-><init>(Landroid/content/Context;Lo/Mode;Landroid/view/View;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/Mode;Landroid/view/View;)V
    .locals 7

    .line 73
    sget v5, Lo/LoaderManager$StateListAnimator;->E:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lo/Typeface;-><init>(Landroid/content/Context;Lo/Mode;Landroid/view/View;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/Mode;Landroid/view/View;ZI)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 79
    invoke-direct/range {v0 .. v6}, Lo/Typeface;-><init>(Landroid/content/Context;Lo/Mode;Landroid/view/View;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/Mode;Landroid/view/View;ZII)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x800003

    .line 60
    iput v0, p0, Lo/Typeface;->mDropDownGravity:I

    .line 334
    new-instance v0, Lo/Typeface$5;

    invoke-direct {v0, p0}, Lo/Typeface$5;-><init>(Lo/Typeface;)V

    iput-object v0, p0, Lo/Typeface;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 85
    iput-object p1, p0, Lo/Typeface;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lo/Typeface;->mMenu:Lo/Mode;

    .line 87
    iput-object p3, p0, Lo/Typeface;->mAnchorView:Landroid/view/View;

    .line 88
    iput-boolean p4, p0, Lo/Typeface;->mOverflowOnly:Z

    .line 89
    iput p5, p0, Lo/Typeface;->mPopupStyleAttr:I

    .line 90
    iput p6, p0, Lo/Typeface;->mPopupStyleRes:I

    return-void
.end method

.method private createPopup()Lo/Callback;
    .locals 14

    .line 224
    iget-object v0, p0, Lo/Typeface;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 226
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 227
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 229
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 230
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 235
    :goto_0
    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 236
    iget-object v1, p0, Lo/Typeface;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lo/LoaderManager$ActionBar;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 242
    new-instance v0, Lo/SQLiteClosable;

    iget-object v2, p0, Lo/Typeface;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lo/Typeface;->mAnchorView:Landroid/view/View;

    iget v4, p0, Lo/Typeface;->mPopupStyleAttr:I

    iget v5, p0, Lo/Typeface;->mPopupStyleRes:I

    iget-boolean v6, p0, Lo/Typeface;->mOverflowOnly:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/SQLiteClosable;-><init>(Landroid/content/Context;Landroid/view/View;IIZ)V

    goto :goto_2

    .line 245
    :cond_2
    new-instance v0, Lo/BaseBundle;

    iget-object v8, p0, Lo/Typeface;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lo/Typeface;->mMenu:Lo/Mode;

    iget-object v10, p0, Lo/Typeface;->mAnchorView:Landroid/view/View;

    iget v11, p0, Lo/Typeface;->mPopupStyleAttr:I

    iget v12, p0, Lo/Typeface;->mPopupStyleRes:I

    iget-boolean v13, p0, Lo/Typeface;->mOverflowOnly:Z

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lo/BaseBundle;-><init>(Landroid/content/Context;Lo/Mode;Landroid/view/View;IIZ)V

    .line 250
    :goto_2
    iget-object v1, p0, Lo/Typeface;->mMenu:Lo/Mode;

    invoke-virtual {v0, v1}, Lo/Callback;->a(Lo/Mode;)V

    .line 251
    iget-object v1, p0, Lo/Typeface;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Lo/Callback;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 254
    iget-object v1, p0, Lo/Typeface;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lo/Callback;->d(Landroid/view/View;)V

    .line 255
    iget-object v1, p0, Lo/Typeface;->mPresenterCallback:Lo/MediaController$StateListAnimator;

    invoke-virtual {v0, v1}, Lo/Callback;->setCallback(Lo/MediaController$StateListAnimator;)V

    .line 256
    iget-boolean v1, p0, Lo/Typeface;->mForceShowIcon:Z

    invoke-virtual {v0, v1}, Lo/Callback;->d(Z)V

    .line 257
    iget v1, p0, Lo/Typeface;->mDropDownGravity:I

    invoke-virtual {v0, v1}, Lo/Callback;->b(I)V

    return-object v0
.end method

.method private showPopup(IIZZ)V
    .locals 3

    .line 263
    invoke-virtual {p0}, Lo/Typeface;->getPopup()Lo/Callback;

    move-result-object v0

    .line 264
    invoke-virtual {v0, p4}, Lo/Callback;->a(Z)V

    if-eqz p3, :cond_1

    .line 270
    iget p3, p0, Lo/Typeface;->mDropDownGravity:I

    iget-object p4, p0, Lo/Typeface;->mAnchorView:Landroid/view/View;

    .line 271
    invoke-static {p4}, Lo/FilterWriter;->h(Landroid/view/View;)I

    move-result p4

    .line 270
    invoke-static {p3, p4}, Lo/Console;->e(II)I

    move-result p3

    and-int/lit8 p3, p3, 0x7

    const/4 p4, 0x5

    if-ne p3, p4, :cond_0

    .line 273
    iget-object p3, p0, Lo/Typeface;->mAnchorView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p1, p3

    .line 276
    :cond_0
    invoke-virtual {v0, p1}, Lo/Callback;->a(I)V

    .line 277
    invoke-virtual {v0, p2}, Lo/Callback;->c(I)V

    .line 283
    iget-object p3, p0, Lo/Typeface;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 p4, 0x42400000    # 48.0f

    mul-float p3, p3, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    float-to-int p3, p3

    .line 285
    new-instance p4, Landroid/graphics/Rect;

    sub-int v1, p1, p3

    sub-int v2, p2, p3

    add-int/2addr p1, p3

    add-int/2addr p2, p3

    invoke-direct {p4, v1, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 287
    invoke-virtual {v0, p4}, Lo/Callback;->c(Landroid/graphics/Rect;)V

    .line 290
    :cond_1
    invoke-virtual {v0}, Lo/Callback;->show()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 298
    invoke-virtual {p0}, Lo/Typeface;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lo/Typeface;->mPopup:Lo/Callback;

    invoke-virtual {v0}, Lo/Callback;->dismiss()V

    :cond_0
    return-void
.end method

.method public getGravity()I
    .locals 1

    .line 139
    iget v0, p0, Lo/Typeface;->mDropDownGravity:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 345
    invoke-virtual {p0}, Lo/Typeface;->getPopup()Lo/Callback;

    move-result-object v0

    invoke-virtual {v0}, Lo/Callback;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getPopup()Lo/Callback;
    .locals 1

    .line 156
    iget-object v0, p0, Lo/Typeface;->mPopup:Lo/Callback;

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0}, Lo/Typeface;->createPopup()Lo/Callback;

    move-result-object v0

    iput-object v0, p0, Lo/Typeface;->mPopup:Lo/Callback;

    .line 159
    :cond_0
    iget-object v0, p0, Lo/Typeface;->mPopup:Lo/Callback;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 320
    iget-object v0, p0, Lo/Typeface;->mPopup:Lo/Callback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Callback;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDismiss()V
    .locals 1

    const/4 v0, 0x0

    .line 312
    iput-object v0, p0, Lo/Typeface;->mPopup:Lo/Callback;

    .line 314
    iget-object v0, p0, Lo/Typeface;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 315
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lo/Typeface;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 1

    .line 118
    iput-boolean p1, p0, Lo/Typeface;->mForceShowIcon:Z

    .line 119
    iget-object v0, p0, Lo/Typeface;->mPopup:Lo/Callback;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, p1}, Lo/Callback;->d(Z)V

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 132
    iput p1, p0, Lo/Typeface;->mDropDownGravity:I

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lo/Typeface;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setPresenterCallback(Lo/MediaController$StateListAnimator;)V
    .locals 1

    .line 325
    iput-object p1, p0, Lo/Typeface;->mPresenterCallback:Lo/MediaController$StateListAnimator;

    .line 326
    iget-object v0, p0, Lo/Typeface;->mPopup:Lo/Callback;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0, p1}, Lo/Callback;->setCallback(Lo/MediaController$StateListAnimator;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 143
    invoke-virtual {p0}, Lo/Typeface;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public show(II)V
    .locals 0

    .line 149
    invoke-virtual {p0, p1, p2}, Lo/Typeface;->tryShow(II)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 150
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public tryShow()Z
    .locals 3

    .line 169
    invoke-virtual {p0}, Lo/Typeface;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 173
    :cond_0
    iget-object v0, p0, Lo/Typeface;->mAnchorView:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 177
    :cond_1
    invoke-direct {p0, v2, v2, v2, v2}, Lo/Typeface;->showPopup(IIZZ)V

    return v1
.end method

.method public tryShow(II)Z
    .locals 2

    .line 205
    invoke-virtual {p0}, Lo/Typeface;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 209
    :cond_0
    iget-object v0, p0, Lo/Typeface;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 213
    :cond_1
    invoke-direct {p0, p1, p2, v1, v1}, Lo/Typeface;->showPopup(IIZZ)V

    return v1
.end method
