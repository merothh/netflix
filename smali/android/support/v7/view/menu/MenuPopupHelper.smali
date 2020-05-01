.class public Landroid/support/v7/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private mForceShowIcon:Z

.field private final mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private mPopup:Landroid/support/v7/view/menu/MenuPopup;

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZI)V
    .locals 7

    .prologue
    .line 73
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;ZII)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const v0, 0x800003

    iput v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 330
    new-instance v0, Landroid/support/v7/view/menu/MenuPopupHelper$1;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/MenuPopupHelper$1;-><init>(Landroid/support/v7/view/menu/MenuPopupHelper;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 79
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 81
    iput-object p3, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 82
    iput-boolean p4, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    .line 83
    iput p5, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    .line 84
    iput p6, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    .line 85
    return-void
.end method

.method private createPopup()Landroid/support/v7/view/menu/MenuPopup;
    .locals 7

    .prologue
    .line 218
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 220
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 221
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 223
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 224
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 231
    :goto_0
    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 232
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$dimen;->abc_cascading_menus_min_smallest_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 234
    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    .line 237
    :goto_1
    if-eqz v0, :cond_3

    .line 238
    new-instance v0, Landroid/support/v7/view/menu/CascadingMenuPopup;

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    iget v3, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iget v4, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    iget-boolean v5, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/CascadingMenuPopup;-><init>(Landroid/content/Context;Landroid/view/View;IIZ)V

    .line 246
    :goto_2
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuPopup;->addMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 247
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 250
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuPopup;->setAnchorView(Landroid/view/View;)V

    .line 251
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuPopup;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 252
    iget-boolean v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuPopup;->setForceShowIcon(Z)V

    .line 253
    iget v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mDropDownGravity:I

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuPopup;->setGravity(I)V

    .line 255
    return-object v0

    .line 225
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-lt v2, v3, :cond_1

    .line 226
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 234
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 241
    :cond_3
    new-instance v0, Landroid/support/v7/view/menu/StandardMenuPopup;

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v3, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    iget v4, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iget v5, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    iget-boolean v6, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/StandardMenuPopup;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;IIZ)V

    goto :goto_2
.end method

.method private showPopup(IIZZ)V
    .locals 6

    .prologue
    .line 259
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuPopupHelper;->getPopup()Landroid/support/v7/view/menu/MenuPopup;

    move-result-object v0

    .line 260
    invoke-virtual {v0, p4}, Landroid/support/v7/view/menu/MenuPopup;->setShowTitle(Z)V

    .line 262
    if-eqz p3, :cond_1

    .line 266
    iget v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mDropDownGravity:I

    iget-object v2, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 267
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 266
    invoke-static {v1, v2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 268
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 269
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr p1, v1

    .line 272
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/MenuPopup;->setHorizontalOffset(I)V

    .line 273
    invoke-virtual {v0, p2}, Landroid/support/v7/view/menu/MenuPopup;->setVerticalOffset(I)V

    .line 279
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 280
    const/high16 v2, 0x42400000    # 48.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 281
    new-instance v2, Landroid/graphics/Rect;

    sub-int v3, p1, v1

    sub-int v4, p2, v1

    add-int v5, p1, v1

    add-int/2addr v1, p2

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 283
    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/MenuPopup;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 286
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuPopup;->show()V

    .line 287
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/view/menu/MenuPopup;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuPopup;->dismiss()V

    .line 297
    :cond_0
    return-void
.end method

.method public getPopup()Landroid/support/v7/view/menu/MenuPopup;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/view/menu/MenuPopup;

    if-nez v0, :cond_0

    .line 151
    invoke-direct {p0}, Landroid/support/v7/view/menu/MenuPopupHelper;->createPopup()Landroid/support/v7/view/menu/MenuPopup;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/view/menu/MenuPopup;

    .line 153
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/view/menu/MenuPopup;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/view/menu/MenuPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/view/menu/MenuPopup;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDismiss()V
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/view/menu/MenuPopup;

    .line 310
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 313
    :cond_0
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 100
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 1

    .prologue
    .line 112
    iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    .line 113
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/view/menu/MenuPopup;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/view/menu/MenuPopup;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/MenuPopup;->setForceShowIcon(Z)V

    .line 116
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 127
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 89
    return-void
.end method

.method public setPresenterCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .locals 1

    .prologue
    .line 321
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 322
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/view/menu/MenuPopup;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mPopup:Landroid/support/v7/view/menu/MenuPopup;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/MenuPopup;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 325
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 163
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    :goto_0
    return v0

    .line 167
    :cond_0
    iget-object v2, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    if-nez v2, :cond_1

    move v0, v1

    .line 168
    goto :goto_0

    .line 171
    :cond_1
    invoke-direct {p0, v1, v1, v1, v1}, Landroid/support/v7/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    goto :goto_0
.end method

.method public tryShow(II)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 199
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    :goto_0
    return v0

    .line 203
    :cond_0
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 204
    const/4 v0, 0x0

    goto :goto_0

    .line 207
    :cond_1
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/support/v7/view/menu/MenuPopupHelper;->showPopup(IIZZ)V

    goto :goto_0
.end method
