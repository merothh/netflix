.class Landroid/support/v7/app/AppCompatDelegateImplV9;
.super Landroid/support/v7/app/AppCompatDelegateImplBase;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Landroid/support/v4/view/LayoutInflaterFactory;
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;


# instance fields
.field private mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

.field mActionMode:Landroid/support/v7/view/ActionMode;

.field mActionModePopup:Landroid/widget/PopupWindow;

.field mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

.field private mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

.field private mClosingActionMenu:Z

.field private mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

.field private mEnableDefaultActionBarUp:Z

.field mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private mFeatureIndeterminateProgress:Z

.field private mFeatureProgress:Z

.field mInvalidatePanelMenuFeatures:I

.field mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field private mLongPressBackDown:Z

.field private mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

.field private mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

.field private mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

.field mShowActionModePopup:Ljava/lang/Runnable;

.field private mStatusGuard:Landroid/view/View;

.field private mSubDecor:Landroid/view/ViewGroup;

.field private mSubDecorInstalled:Z

.field private mTempRect1:Landroid/graphics/Rect;

.field private mTempRect2:Landroid/graphics/Rect;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplBase;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 125
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$1;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$1;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 148
    return-void
.end method

.method private applyFixedSizeWindow()V
    .locals 5

    .prologue
    .line 523
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    .line 529
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 530
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 531
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 532
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 530
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/v7/widget/ContentFrameLayout;->setDecorPadding(IIII)V

    .line 534
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 535
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 536
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 538
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 539
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    .line 540
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    .line 539
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 542
    :cond_0
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 543
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    .line 544
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    .line 543
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 546
    :cond_1
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 547
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    .line 548
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v3

    .line 547
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 550
    :cond_2
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 551
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    .line 552
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    .line 551
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 554
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 556
    invoke-virtual {v0}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    .line 557
    return-void
.end method

.method private createSubDecor()Landroid/view/ViewGroup;
    .locals 8

    .prologue
    const v7, 0x1020002

    const/16 v6, 0x6d

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 343
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 345
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 347
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_0
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowNoTitle:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 352
    invoke-virtual {p0, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->requestWindowFeature(I)Z

    .line 357
    :cond_1
    :goto_0
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 358
    invoke-virtual {p0, v6}, Landroid/support/v7/app/AppCompatDelegateImplV9;->requestWindowFeature(I)Z

    .line 360
    :cond_2
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 361
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->requestWindowFeature(I)Z

    .line 363
    :cond_3
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mIsFloating:Z

    .line 364
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 367
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 369
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 373
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    if-nez v1, :cond_a

    .line 374
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mIsFloating:Z

    if-eqz v1, :cond_5

    .line 376
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_dialog_title_material:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 380
    iput-boolean v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    iput-boolean v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    move-object v2, v0

    .line 461
    :goto_1
    if-nez v2, :cond_d

    .line 462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mIsFloating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_4
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->requestWindowFeature(I)Z

    goto/16 :goto_0

    .line 381
    :cond_5
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    if-eqz v0, :cond_11

    .line 387
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 388
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v2, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 391
    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_9

    .line 392
    new-instance v0, Landroid/support/v7/view/ContextThemeWrapper;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, v2, v1}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 398
    :goto_2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_toolbar:I

    .line 399
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 401
    sget v1, Landroid/support/v7/appcompat/R$id;->decor_content_parent:I

    .line 402
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/DecorContentParent;

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    .line 403
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 408
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    if-eqz v1, :cond_6

    .line 409
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v1, v6}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V

    .line 411
    :cond_6
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureProgress:Z

    if-eqz v1, :cond_7

    .line 412
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V

    .line 414
    :cond_7
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureIndeterminateProgress:Z

    if-eqz v1, :cond_8

    .line 415
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V

    :cond_8
    move-object v2, v0

    .line 417
    goto/16 :goto_1

    .line 394
    :cond_9
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    goto :goto_2

    .line 419
    :cond_a
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    if-eqz v1, :cond_b

    .line 420
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 426
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_c

    .line 429
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$2;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$2;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    move-object v2, v1

    goto/16 :goto_1

    .line 423
    :cond_b
    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    goto :goto_3

    :cond_c
    move-object v0, v1

    .line 451
    check-cast v0, Landroid/support/v7/widget/FitWindowsViewGroup;

    new-instance v2, Landroid/support/v7/app/AppCompatDelegateImplV9$3;

    invoke-direct {v2, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$3;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    invoke-interface {v0, v2}, Landroid/support/v7/widget/FitWindowsViewGroup;->setOnFitSystemWindowsListener(Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V

    move-object v2, v1

    goto/16 :goto_1

    .line 472
    :cond_d
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-nez v0, :cond_e

    .line 473
    sget v0, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTitleView:Landroid/widget/TextView;

    .line 477
    :cond_e
    invoke-static {v2}, Landroid/support/v7/widget/ViewUtils;->makeOptionalFitsSystemWindows(Landroid/view/View;)V

    .line 479
    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    .line 482
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 483
    if-eqz v1, :cond_10

    .line 486
    :goto_4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_f

    .line 487
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 488
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 489
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 494
    :cond_f
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setId(I)V

    .line 495
    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ContentFrameLayout;->setId(I)V

    .line 499
    instance-of v4, v1, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_10

    .line 500
    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 505
    :cond_10
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 507
    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplV9$4;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$4;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ContentFrameLayout;->setAttachListener(Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;)V

    .line 517
    return-object v2

    :cond_11
    move-object v2, v3

    goto/16 :goto_1
.end method

.method private ensureSubDecor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 315
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    if-nez v0, :cond_2

    .line 316
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->createSubDecor()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    .line 319
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 320
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 324
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->applyFixedSizeWindow()V

    .line 326
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onSubDecorInstalled(Landroid/view/ViewGroup;)V

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    .line 335
    invoke-virtual {p0, v2, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    .line 336
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v0, :cond_2

    .line 337
    :cond_1
    const/16 v0, 0x6c

    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->invalidatePanelMenu(I)V

    .line 340
    :cond_2
    return-void
.end method

.method private initializePanelContent(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1282
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1299
    :goto_0
    return v1

    .line 1287
    :cond_0
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v0, :cond_1

    move v1, v2

    .line 1288
    goto :goto_0

    .line 1291
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    if-nez v0, :cond_2

    .line 1292
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    .line 1295
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->getListMenuView(Landroid/support/v7/view/menu/MenuPresenter$Callback;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v0

    .line 1297
    check-cast v0, Landroid/view/View;

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1299
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private initializePanelDecor(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z
    .locals 2

    .prologue
    .line 1188
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 1189
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;

    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/content/Context;)V

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    .line 1190
    const/16 v0, 0x51

    iput v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->gravity:I

    .line 1191
    const/4 v0, 0x1

    return v0
.end method

.method private initializePanelMenu(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1239
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    .line 1242
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    const/16 v2, 0x6c

    if-ne v0, v2, :cond_4

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_4

    .line 1244
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1245
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1246
    sget v0, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v3, v0, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1248
    const/4 v0, 0x0

    .line 1249
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_3

    .line 1250
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1251
    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1252
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1253
    sget v4, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v0, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1260
    :goto_0
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_2

    .line 1261
    if-nez v0, :cond_1

    .line 1262
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1263
    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1265
    :cond_1
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_2
    move-object v2, v0

    .line 1268
    if-eqz v2, :cond_4

    .line 1269
    new-instance v0, Landroid/support/v7/view/ContextThemeWrapper;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1270
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1274
    :goto_1
    new-instance v1, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1275
    invoke-virtual {v1, p0}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 1276
    invoke-virtual {p1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->setMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 1278
    return v5

    .line 1256
    :cond_3
    sget v4, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private invalidatePanelMenu(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1603
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuFeatures:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuFeatures:I

    .line 1605
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuPosted:Z

    if-nez v0, :cond_0

    .line 1606
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1607
    iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuPosted:Z

    .line 1609
    :cond_0
    return-void
.end method

.method private onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 1457
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1458
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    .line 1459
    iget-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-nez v1, :cond_0

    .line 1460
    invoke-direct {p0, v0, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1464
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onKeyUpPanel(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1468
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_0

    move v0, v1

    .line 1517
    :goto_0
    return v0

    .line 1473
    :cond_0
    invoke-virtual {p0, p1, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v3

    .line 1474
    if-nez p1, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    .line 1475
    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    .line 1476
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1477
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1478
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1479
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->showOverflowMenu()Z

    move-result v2

    .line 1508
    :goto_1
    if-eqz v2, :cond_1

    .line 1509
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1511
    if-eqz v0, :cond_6

    .line 1512
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_1
    :goto_2
    move v0, v2

    .line 1517
    goto :goto_0

    .line 1482
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result v2

    goto :goto_1

    .line 1485
    :cond_3
    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-nez v0, :cond_4

    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    if-eqz v0, :cond_5

    .line 1488
    :cond_4
    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    .line 1490
    invoke-virtual {p0, v3, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    move v2, v0

    goto :goto_1

    .line 1491
    :cond_5
    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    if-eqz v0, :cond_7

    .line 1493
    iget-boolean v0, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v0, :cond_8

    .line 1496
    iput-boolean v1, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    .line 1497
    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1500
    :goto_3
    if-eqz v0, :cond_7

    .line 1502
    invoke-direct {p0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->openPanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 1514
    :cond_6
    const-string/jumbo v0, "AppCompatDelegate"

    const-string/jumbo v1, "Couldn\'t get audio manager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    move v2, v1

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_3
.end method

.method private openPanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 10

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v2, -0x2

    .line 1089
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1185
    :cond_0
    :goto_0
    return-void

    .line 1095
    :cond_1
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    if-nez v0, :cond_2

    .line 1096
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    .line 1097
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1098
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v5, 0x4

    if-ne v0, v5, :cond_3

    move v0, v9

    .line 1100
    :goto_1
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4

    move v4, v9

    .line 1103
    :goto_2
    if-eqz v0, :cond_2

    if-nez v4, :cond_0

    .line 1108
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1109
    if-eqz v0, :cond_5

    iget v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1111
    invoke-virtual {p0, p1, v9}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    goto :goto_0

    :cond_3
    move v0, v3

    .line 1098
    goto :goto_1

    :cond_4
    move v4, v3

    .line 1100
    goto :goto_2

    .line 1115
    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/WindowManager;

    .line 1116
    if-eqz v8, :cond_0

    .line 1121
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    if-eqz v0, :cond_c

    .line 1127
    :cond_6
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-nez v0, :cond_b

    .line 1129
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->initializePanelDecor(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1137
    :cond_7
    :goto_3
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->initializePanelContent(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->hasPanelItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1142
    if-nez v0, :cond_e

    .line 1143
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v1, v0

    .line 1146
    :goto_4
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->background:I

    .line 1147
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1149
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1150
    if-eqz v0, :cond_8

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_8

    .line 1151
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1153
    :cond_8
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1159
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1160
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_9
    move v1, v2

    .line 1171
    :cond_a
    :goto_5
    iput-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    .line 1173
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->x:I

    iget v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->y:I

    const/16 v5, 0x3ea

    const/high16 v6, 0x820000

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 1180
    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->gravity:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1181
    iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->windowAnimations:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1183
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-interface {v8, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1184
    iput-boolean v9, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    goto/16 :goto_0

    .line 1131
    :cond_b
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 1133
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_3

    .line 1162
    :cond_c
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 1165
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1166
    if-eqz v0, :cond_d

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, v1, :cond_a

    :cond_d
    move v1, v2

    goto :goto_5

    :cond_e
    move-object v1, v0

    goto :goto_4
.end method

.method private performPanelShortcut(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1579
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1599
    :cond_0
    :goto_0
    return v0

    .line 1587
    :cond_1
    iget-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_3

    .line 1589
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p2, p3, p4}, Landroid/support/v7/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1592
    :cond_3
    if-eqz v0, :cond_0

    .line 1594
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-nez v1, :cond_0

    .line 1595
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method private preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1303
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1403
    :cond_0
    :goto_0
    return v2

    .line 1308
    :cond_1
    iget-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    if-eqz v0, :cond_2

    move v2, v1

    .line 1309
    goto :goto_0

    .line 1312
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-eq v0, p1, :cond_3

    .line 1314
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    invoke-virtual {p0, v0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 1317
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v3

    .line 1319
    if-eqz v3, :cond_4

    .line 1320
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    invoke-interface {v3, v0}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 1323
    :cond_4
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    if-eqz v0, :cond_5

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    const/16 v4, 0x6c

    if-ne v0, v4, :cond_c

    :cond_5
    move v0, v1

    .line 1326
    :goto_1
    if-eqz v0, :cond_6

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v4, :cond_6

    .line 1329
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v4}, Landroid/support/v7/widget/DecorContentParent;->setMenuPrepared()V

    .line 1332
    :cond_6
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v4, :cond_12

    if-eqz v0, :cond_7

    .line 1333
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    instance-of v4, v4, Landroid/support/v7/app/ToolbarActionBar;

    if-nez v4, :cond_12

    .line 1336
    :cond_7
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v4, :cond_8

    iget-boolean v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v4, :cond_e

    .line 1337
    :cond_8
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v4, :cond_9

    .line 1338
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->initializePanelMenu(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v4, :cond_0

    .line 1343
    :cond_9
    if-eqz v0, :cond_b

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v4, :cond_b

    .line 1344
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    if-nez v4, :cond_a

    .line 1345
    new-instance v4, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    invoke-direct {v4, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    iput-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    .line 1347
    :cond_a
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    invoke-interface {v4, v5, v6}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 1352
    :cond_b
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1353
    iget v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v3, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1355
    invoke-virtual {p1, v7}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->setMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 1357
    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    invoke-interface {v0, v7, v1}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    goto/16 :goto_0

    :cond_c
    move v0, v2

    .line 1323
    goto :goto_1

    .line 1365
    :cond_d
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    .line 1370
    :cond_e
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1374
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v4, :cond_f

    .line 1375
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 1376
    iput-object v7, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1380
    :cond_f
    iget-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v3, v2, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1381
    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_10

    .line 1384
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;

    invoke-interface {v0, v7, v1}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 1386
    :cond_10
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto/16 :goto_0

    .line 1391
    :cond_11
    if-eqz p2, :cond_13

    .line 1392
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    .line 1391
    :goto_2
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 1393
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v1, :cond_14

    move v0, v1

    :goto_3
    iput-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->qwertyMode:Z

    .line 1394
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 1395
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1399
    :cond_12
    iput-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    .line 1400
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    .line 1401
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move v2, v1

    .line 1403
    goto/16 :goto_0

    .line 1392
    :cond_13
    const/4 v0, -0x1

    goto :goto_2

    :cond_14
    move v0, v2

    .line 1393
    goto :goto_3
.end method

.method private reopenMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 6

    .prologue
    const/16 v5, 0x6c

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1195
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    .line 1196
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    .line 1197
    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1199
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1201
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_4

    .line 1202
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1204
    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuPosted:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuFeatures:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 1206
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1207
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1210
    :cond_2
    invoke-virtual {p0, v4, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    .line 1214
    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    if-nez v2, :cond_3

    iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v3, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 1215
    invoke-interface {v0, v4, v2, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1216
    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1217
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->showOverflowMenu()Z

    .line 1236
    :cond_3
    :goto_0
    return-void

    .line 1221
    :cond_4
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 1222
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1223
    invoke-virtual {p0, v4, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    .line 1224
    iget-object v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v5, v1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 1230
    :cond_5
    invoke-virtual {p0, v4, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    .line 1232
    iput-boolean v3, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    .line 1233
    invoke-virtual {p0, v0, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 1235
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->openPanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private sanitizeWindowFeatureId(I)I
    .locals 2

    .prologue
    .line 1722
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 1723
    const-string/jumbo v0, "AppCompatDelegate"

    const-string/jumbo v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    const/16 p1, 0x6c

    .line 1732
    :cond_0
    :goto_0
    return p1

    .line 1726
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 1727
    const-string/jumbo v0, "AppCompatDelegate"

    const-string/jumbo v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    const/16 p1, 0x6d

    goto :goto_0
.end method

.method private shouldInheritContext(Landroid/view/ViewParent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1021
    if-nez p1, :cond_0

    move v0, v2

    .line 1039
    :goto_0
    return v0

    .line 1025
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    move-object v1, p1

    .line 1027
    :goto_1
    if-nez v1, :cond_1

    .line 1032
    const/4 v0, 0x1

    goto :goto_0

    .line 1033
    :cond_1
    if-eq v1, v3, :cond_2

    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .line 1034
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v2

    .line 1039
    goto :goto_0

    .line 1041
    :cond_3
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1
.end method

.method private throwFeatureRequestIfSubDecorInstalled()V
    .locals 2

    .prologue
    .line 1715
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    .line 1716
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1719
    :cond_0
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 299
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 300
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 301
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 303
    return-void
.end method

.method callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/view/LayoutInflater$Factory;

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v0, Landroid/view/LayoutInflater$Factory;

    .line 1079
    invoke-interface {v0, p2, p3, p4}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 1080
    if-eqz v0, :cond_0

    .line 1084
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method callOnPanelClosed(ILandroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 1522
    if-nez p3, :cond_1

    .line 1524
    if-nez p2, :cond_0

    .line 1525
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1526
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    aget-object p2, v0, p1

    .line 1530
    :cond_0
    if-eqz p2, :cond_1

    .line 1532
    iget-object p3, p2, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 1537
    :cond_1
    if-eqz p2, :cond_3

    iget-boolean v0, p2, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-nez v0, :cond_3

    .line 1546
    :cond_2
    :goto_0
    return-void

    .line 1540
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1544
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method checkCloseActionMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 2

    .prologue
    .line 1407
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mClosingActionMenu:Z

    if-eqz v0, :cond_0

    .line 1418
    :goto_0
    return-void

    .line 1411
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mClosingActionMenu:Z

    .line 1412
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->dismissPopups()V

    .line 1413
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1414
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1415
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1417
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mClosingActionMenu:Z

    goto :goto_0
.end method

.method closePanel(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1421
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    .line 1422
    return-void
.end method

.method closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1425
    if-eqz p2, :cond_1

    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    .line 1426
    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1427
    iget-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->checkCloseActionMenu(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 1454
    :cond_0
    :goto_0
    return-void

    .line 1431
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1432
    if-eqz v0, :cond_2

    iget-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 1433
    iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1435
    if-eqz p2, :cond_2

    .line 1436
    iget v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    invoke-virtual {p0, v0, p1, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->callOnPanelClosed(ILandroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V

    .line 1440
    :cond_2
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    .line 1441
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    .line 1442
    iput-boolean v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    .line 1445
    iput-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1449
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    .line 1451
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-ne v0, p1, :cond_0

    .line 1452
    iput-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    goto :goto_0
.end method

.method public createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 1004
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_1

    move v6, v7

    .line 1006
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

    if-nez v0, :cond_0

    .line 1007
    new-instance v0, Landroid/support/v7/app/AppCompatViewInflater;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

    .line 1011
    :cond_0
    if-eqz v6, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->shouldInheritContext(Landroid/view/ViewParent;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v5, v7

    .line 1013
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;

    .line 1016
    invoke-static {}, Landroid/support/v7/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1013
    invoke-virtual/range {v0 .. v8}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    move v6, v1

    .line 1004
    goto :goto_0

    :cond_2
    move v5, v1

    .line 1011
    goto :goto_1
.end method

.method dismissPopups()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1740
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 1741
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorContentParent;->dismissPopups()V

    .line 1744
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 1745
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1746
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1748
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1754
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 1756
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->endOnGoingFadeAnimation()V

    .line 1758
    invoke-virtual {p0, v2, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    .line 1759
    if-eqz v0, :cond_3

    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_3

    .line 1760
    iget-object v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->close()V

    .line 1762
    :cond_3
    return-void

    .line 1749
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 935
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_0

    .line 937
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 946
    :goto_0
    return v0

    .line 942
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 943
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 944
    if-nez v2, :cond_1

    .line 946
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, v1, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 944
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 946
    :cond_2
    invoke-virtual {p0, v1, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method doInvalidatePanelMenu(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1612
    invoke-virtual {p0, p1, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    .line 1614
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_1

    .line 1615
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1616
    iget-object v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Landroid/support/v7/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1617
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1618
    iput-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 1621
    :cond_0
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1622
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->clear()V

    .line 1624
    :cond_1
    iput-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z

    .line 1625
    iput-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    .line 1628
    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_3

    .line 1630
    invoke-virtual {p0, v3, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    .line 1631
    if-eqz v0, :cond_3

    .line 1632
    iput-boolean v3, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    .line 1633
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 1636
    :cond_3
    return-void
.end method

.method endOnGoingFadeAnimation()V
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 877
    :cond_0
    return-void
.end method

.method findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1549
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    .line 1550
    if-eqz v3, :cond_0

    array-length v0, v3

    :goto_0
    move v2, v1

    .line 1551
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1552
    aget-object v1, v3, v2

    .line 1553
    if-eqz v1, :cond_1

    iget-object v4, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_1

    move-object v0, v1

    .line 1557
    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    .line 1550
    goto :goto_0

    .line 1551
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1557
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 230
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 231
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1562
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    .line 1563
    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    .line 1564
    if-eqz v0, :cond_1

    .line 1565
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1567
    :cond_1
    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-object v0, v1

    .line 1570
    :cond_2
    aget-object v1, v0, p1

    .line 1571
    if-nez v1, :cond_3

    .line 1572
    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    invoke-direct {v1, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;-><init>(I)V

    aput-object v1, v0, p1

    move-object v0, v1

    .line 1574
    :goto_0
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public initWindowDecorActionBar()V
    .locals 3

    .prologue
    .line 173
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 175
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 180
    new-instance v1, Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    invoke-direct {v1, v0, v2}, Landroid/support/v7/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 185
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    goto :goto_0

    .line 182
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 183
    new-instance v1, Landroid/support/v7/app/WindowDecorActionBar;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Landroid/support/v7/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    goto :goto_1
.end method

.method public installViewFactory()V
    .locals 2

    .prologue
    .line 1047
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1048
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1049
    invoke-static {v0, p0}, Landroid/support/v4/view/LayoutInflaterCompat;->setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V

    .line 1057
    :cond_0
    :goto_0
    return-void

    .line 1051
    :cond_1
    invoke-static {v0}, Landroid/support/v4/view/LayoutInflaterCompat;->getFactory(Landroid/view/LayoutInflater;)Landroid/support/v4/view/LayoutInflaterFactory;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;

    if-nez v0, :cond_0

    .line 1053
    const-string/jumbo v0, "AppCompatDelegate"

    const-string/jumbo v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 708
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 709
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->invalidateOptionsMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    :goto_0
    return-void

    .line 711
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->invalidatePanelMenu(I)V

    goto :goto_0
.end method

.method onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 881
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v1, :cond_1

    .line 882
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v1}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 893
    :cond_0
    :goto_0
    return v0

    .line 887
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 888
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->collapseActionView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 893
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 238
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 248
    :cond_0
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatDrawableManager;->onConfigurationChanged(Landroid/content/Context;)V

    .line 251
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->applyDayNight()Z

    .line 252
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 152
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 156
    if-nez v0, :cond_1

    .line 157
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mEnableDefaultActionBarUp:Z

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1066
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 1067
    if-eqz v0, :cond_0

    .line 1072
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 307
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDelegateImplBase;->onDestroy()V

    .line 309
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->onDestroy()V

    .line 312
    :cond_0
    return-void
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 977
    sparse-switch p1, :sswitch_data_0

    .line 993
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    .line 996
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    :cond_0
    move v0, v1

    .line 998
    :goto_1
    return v0

    .line 979
    :sswitch_0
    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 987
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    :goto_2
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mLongPressBackDown:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 977
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 899
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    .line 900
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2}, Landroid/support/v7/app/ActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 930
    :cond_0
    :goto_0
    return v0

    .line 906
    :cond_1
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz v2, :cond_2

    .line 907
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->performPanelShortcut(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v2

    .line 909
    if-eqz v2, :cond_2

    .line 910
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-eqz v1, :cond_0

    .line 911
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    iput-boolean v0, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z

    goto :goto_0

    .line 921
    :cond_2
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    if-nez v2, :cond_3

    .line 922
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v2

    .line 923
    invoke-direct {p0, v2, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 924
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-direct {p0, v2, v3, p2, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->performPanelShortcut(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v3

    .line 925
    iput-boolean v1, v2, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z

    .line 926
    if-nez v3, :cond_0

    :cond_3
    move v0, v1

    .line 930
    goto :goto_0
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 950
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 973
    :cond_1
    :goto_0
    return v0

    .line 952
    :sswitch_0
    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onKeyUpPanel(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 955
    :sswitch_1
    iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mLongPressBackDown:Z

    .line 956
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mLongPressBackDown:Z

    .line 958
    invoke-virtual {p0, v1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v3

    .line 959
    if-eqz v3, :cond_2

    iget-boolean v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-eqz v4, :cond_2

    .line 960
    if-nez v2, :cond_1

    .line 964
    invoke-virtual {p0, v3, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    goto :goto_0

    .line 968
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 950
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 663
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 664
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 665
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v1

    .line 666
    if-eqz v1, :cond_0

    .line 667
    iget v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    invoke-interface {v0, v1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 670
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 1

    .prologue
    .line 675
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->reopenMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 676
    return-void
.end method

.method onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 651
    const/16 v1, 0x6c

    if-ne p1, v1, :cond_1

    .line 652
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 653
    if-eqz v1, :cond_0

    .line 654
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 658
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onPanelClosed(ILandroid/view/Menu;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 634
    const/16 v0, 0x6c

    if-ne p1, v0, :cond_1

    .line 635
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 636
    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    if-nez p1, :cond_0

    .line 642
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object v0

    .line 643
    iget-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_0

    .line 644
    invoke-virtual {p0, v0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 169
    return-void
.end method

.method public onPostResume()V
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_0

    .line 266
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 268
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    .line 258
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 260
    :cond_0
    return-void
.end method

.method onSubDecorInstalled(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 520
    return-void
.end method

.method onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    if-eqz v0, :cond_1

    .line 624
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 626
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 627
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public requestWindowFeature(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 561
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->sanitizeWindowFeatureId(I)I

    move-result v2

    .line 563
    iget-boolean v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_0

    .line 598
    :goto_0
    return v0

    .line 566
    :cond_0
    iget-boolean v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    if-eqz v3, :cond_1

    if-ne v2, v1, :cond_1

    .line 568
    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    .line 571
    :cond_1
    sparse-switch v2, :sswitch_data_0

    .line 598
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    goto :goto_0

    .line 573
    :sswitch_0
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 574
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    move v0, v1

    .line 575
    goto :goto_0

    .line 577
    :sswitch_1
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 578
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z

    move v0, v1

    .line 579
    goto :goto_0

    .line 581
    :sswitch_2
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 582
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    move v0, v1

    .line 583
    goto :goto_0

    .line 585
    :sswitch_3
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 586
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureProgress:Z

    move v0, v1

    .line 587
    goto :goto_0

    .line 589
    :sswitch_4
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 590
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureIndeterminateProgress:Z

    move v0, v1

    .line 591
    goto :goto_0

    .line 593
    :sswitch_5
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V

    .line 594
    iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindowNoTitle:Z

    move v0, v1

    .line 595
    goto :goto_0

    .line 571
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_2
        0x6c -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method public setContentView(I)V
    .locals 2

    .prologue
    .line 281
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 282
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 283
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 284
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 285
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 286
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 272
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 273
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 274
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 275
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 276
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 277
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 290
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V

    .line 291
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 292
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 293
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 295
    return-void
.end method

.method public setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 192
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 198
    instance-of v1, v0, Landroid/support/v7/app/WindowDecorActionBar;

    if-eqz v1, :cond_1

    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_1
    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mMenuInflater:Landroid/view/MenuInflater;

    .line 209
    if-eqz v0, :cond_2

    .line 210
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->onDestroy()V

    .line 213
    :cond_2
    if-eqz p1, :cond_3

    .line 214
    new-instance v1, Landroid/support/v7/app/ToolbarActionBar;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 215
    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-direct {v1, p1, v0, v2}, Landroid/support/v7/app/ToolbarActionBar;-><init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 216
    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 217
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/support/v7/app/ToolbarActionBar;->getWrappedWindowCallback()Landroid/view/Window$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 224
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->invalidateOptionsMenu()V

    goto :goto_0

    .line 219
    :cond_3
    iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 221
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_1
.end method

.method final shouldAnimateActionModeView()Z
    .locals 1

    .prologue
    .line 870
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 3

    .prologue
    .line 680
    if-nez p1, :cond_0

    .line 681
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ActionMode callback can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 684
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 688
    :cond_1
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/support/v7/view/ActionMode$Callback;)V

    .line 690
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 691
    if-eqz v1, :cond_2

    .line 692
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->startActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 693
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v1, :cond_2

    .line 694
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-interface {v1, v2}, Landroid/support/v7/app/AppCompatCallback;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 698
    :cond_2
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-nez v1, :cond_3

    .line 700
    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 703
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    return-object v0
.end method

.method startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 716
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->endOnGoingFadeAnimation()V

    .line 717
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    .line 721
    :cond_0
    instance-of v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    if-nez v0, :cond_1

    .line 723
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/support/v7/view/ActionMode$Callback;)V

    move-object p1, v0

    .line 727
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    .line 729
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    invoke-interface {v0, p1}, Landroid/support/v7/app/AppCompatCallback;->onWindowStartingSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 735
    :goto_0
    if-eqz v0, :cond_4

    .line 736
    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 861
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    if-eqz v0, :cond_3

    .line 862
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    invoke-interface {v0, v1}, Landroid/support/v7/app/AppCompatCallback;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 864
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    return-object v0

    .line 730
    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_0

    .line 738
    :cond_4
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    if-nez v0, :cond_5

    .line 739
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mIsFloating:Z

    if-eqz v0, :cond_8

    .line 741
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 742
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 743
    sget v5, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v0, v5, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 746
    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_7

    .line 747
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 748
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 749
    iget v0, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 751
    new-instance v0, Landroid/support/v7/view/ContextThemeWrapper;

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6, v2}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 752
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 757
    :goto_2
    new-instance v5, Landroid/support/v7/widget/ActionBarContextView;

    invoke-direct {v5, v0}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    .line 758
    new-instance v5, Landroid/widget/PopupWindow;

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionModePopupWindowStyle:I

    invoke-direct {v5, v0, v3, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 760
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/support/v4/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 762
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 763
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 765
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarSize:I

    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 767
    iget v4, v4, Landroid/util/TypedValue;->data:I

    .line 768
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 767
    invoke-static {v4, v0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 769
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/ActionBarContextView;->setContentHeight(I)V

    .line 770
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 771
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$5;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$5;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mShowActionModePopup:Ljava/lang/Runnable;

    .line 812
    :cond_5
    :goto_3
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_2

    .line 813
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->endOnGoingFadeAnimation()V

    .line 814
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->killMode()V

    .line 815
    new-instance v4, Landroid/support/v7/view/StandaloneActionMode;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_9

    move v0, v1

    :goto_4
    invoke-direct {v4, v5, v6, p1, v0}, Landroid/support/v7/view/StandaloneActionMode;-><init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Landroid/support/v7/view/ActionMode$Callback;Z)V

    .line 817
    invoke-virtual {v4}, Landroid/support/v7/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Landroid/support/v7/view/ActionMode$Callback;->onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 818
    invoke-virtual {v4}, Landroid/support/v7/view/ActionMode;->invalidate()V

    .line 819
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionBarContextView;->initForMode(Landroid/support/v7/view/ActionMode;)V

    .line 820
    iput-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    .line 822
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->shouldAnimateActionModeView()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 823
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 824
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 825
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplV9$6;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$6;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 853
    :cond_6
    :goto_5
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 854
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 754
    :cond_7
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    goto/16 :goto_2

    .line 802
    :cond_8
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    sget v4, Landroid/support/v7/appcompat/R$id;->action_mode_bar_stub:I

    .line 803
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewStubCompat;

    .line 804
    if-eqz v0, :cond_5

    .line 806
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 807
    invoke-virtual {v0}, Landroid/support/v7/widget/ViewStubCompat;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    goto/16 :goto_3

    :cond_9
    move v0, v2

    .line 815
    goto :goto_4

    .line 844
    :cond_a
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v0, v7}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 845
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 846
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 848
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 849
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_5

    .line 857
    :cond_b
    iput-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;

    goto/16 :goto_1

    :cond_c
    move-object v0, v3

    goto/16 :goto_0
.end method

.method updateStatusGuard(I)I
    .locals 8

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1645
    .line 1647
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_c

    .line 1648
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    .line 1649
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    .line 1650
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1653
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1654
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTempRect1:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 1655
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTempRect1:Landroid/graphics/Rect;

    .line 1656
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTempRect2:Landroid/graphics/Rect;

    .line 1658
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTempRect1:Landroid/graphics/Rect;

    .line 1659
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTempRect2:Landroid/graphics/Rect;

    .line 1660
    invoke-virtual {v1, v2, p1, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1662
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v5, v1, v4}, Landroid/support/v7/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1663
    iget v1, v4, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_4

    move v1, p1

    .line 1664
    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v4, v1, :cond_b

    .line 1666
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1668
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    if-nez v1, :cond_5

    .line 1669
    new-instance v1, Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    .line 1670
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$color;->abc_input_method_navigation_guard:I

    .line 1671
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1670
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1672
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v1, v3

    .line 1686
    :goto_1
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 1692
    :goto_2
    iget-boolean v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionMode:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    move p1, v2

    :cond_1
    move v7, v1

    move v1, v3

    move v3, v7

    .line 1702
    :goto_3
    if-eqz v3, :cond_2

    .line 1703
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    move v0, v1

    .line 1707
    :goto_4
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1708
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    if-eqz v0, :cond_9

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1711
    :cond_3
    return p1

    :cond_4
    move v1, v2

    .line 1663
    goto :goto_0

    .line 1676
    :cond_5
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1677
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, p1, :cond_6

    .line 1678
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1679
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v3, v2

    .line 1686
    goto :goto_2

    .line 1697
    :cond_8
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v1, :cond_a

    .line 1699
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v1, v2

    goto :goto_3

    .line 1708
    :cond_9
    const/16 v2, 0x8

    goto :goto_5

    :cond_a
    move v3, v2

    move v1, v2

    goto :goto_3

    :cond_b
    move v1, v2

    goto :goto_1

    :cond_c
    move v0, v2

    goto :goto_4
.end method
