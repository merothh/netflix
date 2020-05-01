.class public Landroid/support/v7/widget/ActivityChooserView;
.super Landroid/view/ViewGroup;
.source "ActivityChooserView.java"


# instance fields
.field private final mActivityChooserContent:Landroid/support/v7/widget/LinearLayoutCompat;

.field final mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

.field private final mCallbacks:Landroid/support/v7/widget/ActivityChooserView$Callbacks;

.field private mDefaultActionButtonContentDescription:I

.field final mDefaultActivityButton:Landroid/widget/FrameLayout;

.field final mExpandActivityOverflowButton:Landroid/widget/FrameLayout;

.field private final mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

.field mInitialActivityCount:I

.field private mIsAttachedToWindow:Z

.field mIsSelectingDefaultActivity:Z

.field private final mListPopupMaxWidth:I

.field private mListPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

.field final mModelDataSetObserver:Landroid/database/DataSetObserver;

.field mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field mProvider:Landroid/support/v4/view/ActionProvider;


# virtual methods
.method public dismissPopup()Z
    .locals 2

    .prologue
    .line 392
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    .line 394
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 399
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getDataModel()Landroid/support/v7/widget/ActivityChooserModel;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v0

    return-object v0
.end method

.method getListPopupWindow()Landroid/support/v7/widget/ListPopupWindow;
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    if-nez v0, :cond_0

    .line 506
    new-instance v0, Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    .line 507
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 508
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 509
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->setModal(Z)V

    .line 510
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->mCallbacks:Landroid/support/v7/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 511
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->mCallbacks:Landroid/support/v7/widget/ActivityChooserView$Callbacks;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 513
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mListPopupWindow:Landroid/support/v7/widget/ListPopupWindow;

    return-object v0
.end method

.method public isShowingPopup()Z
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 413
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 414
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v0

    .line 415
    if-eqz v0, :cond_0

    .line 416
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->mModelDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    .line 418
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    .line 419
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 423
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 424
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_0

    .line 426
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->mModelDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActivityChooserModel;->unregisterObserver(Ljava/lang/Object;)V

    .line 428
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 430
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 432
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->dismissPopup()Z

    .line 435
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    .line 436
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 454
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mActivityChooserContent:Landroid/support/v7/widget/LinearLayoutCompat;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->layout(IIII)V

    .line 455
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->dismissPopup()Z

    .line 458
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 440
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mActivityChooserContent:Landroid/support/v7/widget/LinearLayoutCompat;

    .line 444
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 448
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/widget/ActivityChooserView;->measureChild(Landroid/view/View;II)V

    .line 449
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/ActivityChooserView;->setMeasuredDimension(II)V

    .line 450
    return-void
.end method

.method public setActivityChooserModel(Landroid/support/v7/widget/ActivityChooserModel;)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->setDataModel(Landroid/support/v7/widget/ActivityChooserModel;)V

    .line 284
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->dismissPopup()Z

    .line 286
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->showPopup()Z

    .line 288
    :cond_0
    return-void
.end method

.method public setDefaultActionButtonContentDescription(I)V
    .locals 0

    .prologue
    .line 496
    iput p1, p0, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActionButtonContentDescription:I

    .line 497
    return-void
.end method

.method public setExpandActivityOverflowButtonContentDescription(I)V
    .locals 2

    .prologue
    .line 316
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 318
    return-void
.end method

.method public setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mExpandActivityOverflowButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    return-void
.end method

.method public setInitialActivityCount(I)V
    .locals 0

    .prologue
    .line 482
    iput p1, p0, Landroid/support/v7/widget/ActivityChooserView;->mInitialActivityCount:I

    .line 483
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 471
    return-void
.end method

.method public setProvider(Landroid/support/v4/view/ActionProvider;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserView;->mProvider:Landroid/support/v4/view/ActionProvider;

    .line 326
    return-void
.end method

.method public showPopup()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 334
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserView;->mIsAttachedToWindow:Z

    if-nez v1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return v0

    .line 337
    :cond_1
    iput-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    .line 338
    iget v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mInitialActivityCount:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActivityChooserView;->showPopupUnchecked(I)V

    .line 339
    const/4 v0, 0x1

    goto :goto_0
.end method

.method showPopupUnchecked(I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 348
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No data model. Did you call #setDataModel?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 354
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;

    .line 355
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 357
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getActivityCount()I

    move-result v4

    .line 358
    if-eqz v0, :cond_5

    move v3, v1

    .line 359
    :goto_1
    const v5, 0x7fffffff

    if-eq p1, v5, :cond_6

    add-int/2addr v3, p1

    if-le v4, v3, :cond_6

    .line 361
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowFooterView(Z)V

    .line 362
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->setMaxActivityCount(I)V

    .line 368
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v3

    .line 369
    invoke-virtual {v3}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    .line 370
    iget-boolean v4, p0, Landroid/support/v7/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z

    if-nez v4, :cond_1

    if-nez v0, :cond_7

    .line 371
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowDefaultActivity(ZZ)V

    .line 375
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->measureContentWidth()I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/ActivityChooserView;->mListPopupMaxWidth:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 376
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ListPopupWindow;->setContentWidth(I)V

    .line 377
    invoke-virtual {v3}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 378
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_2

    .line 379
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mProvider:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ActionProvider;->subUiVisibilityChanged(Z)V

    .line 381
    :cond_2
    invoke-virtual {v3}, Landroid/support/v7/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$string;->abc_activitychooserview_choose_application:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 384
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 355
    goto :goto_0

    :cond_5
    move v3, v2

    .line 358
    goto :goto_1

    .line 364
    :cond_6
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowFooterView(Z)V

    .line 365
    iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->setMaxActivityCount(I)V

    goto :goto_2

    .line 373
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0, v2, v2}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->setShowDefaultActivity(ZZ)V

    goto :goto_3
.end method
