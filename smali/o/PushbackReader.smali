.class public Lo/PushbackReader;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field mBackStackId:I

.field mCancelable:Z

.field mDialog:Landroid/app/Dialog;

.field private mDismissRunnable:Ljava/lang/Runnable;

.field mDismissed:Z

.field private mHandler:Landroid/os/Handler;

.field mShownByMe:Z

.field mShowsDialog:Z

.field mStyle:I

.field mTheme:I

.field mViewDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 93
    new-instance v0, Lo/PushbackReader$3;

    invoke-direct {v0, p0}, Lo/PushbackReader$3;-><init>(Lo/PushbackReader;)V

    iput-object v0, p0, Lo/PushbackReader;->mDismissRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lo/PushbackReader;->mStyle:I

    .line 102
    iput v0, p0, Lo/PushbackReader;->mTheme:I

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lo/PushbackReader;->mCancelable:Z

    .line 104
    iput-boolean v0, p0, Lo/PushbackReader;->mShowsDialog:Z

    const/4 v0, -0x1

    .line 105
    iput v0, p0, Lo/PushbackReader;->mBackStackId:I

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0, v0, v0}, Lo/PushbackReader;->dismissInternal(ZZ)V

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 212
    invoke-virtual {p0, v0, v1}, Lo/PushbackReader;->dismissInternal(ZZ)V

    return-void
.end method

.method dismissInternal(ZZ)V
    .locals 3

    .line 216
    iget-boolean v0, p0, Lo/PushbackReader;->mDismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Lo/PushbackReader;->mDismissed:Z

    const/4 v1, 0x0

    .line 220
    iput-boolean v1, p0, Lo/PushbackReader;->mShownByMe:Z

    .line 221
    iget-object v1, p0, Lo/PushbackReader;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 225
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 226
    iget-object v1, p0, Lo/PushbackReader;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    if-nez p2, :cond_2

    .line 232
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object v1, p0, Lo/PushbackReader;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 233
    iget-object p2, p0, Lo/PushbackReader;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, p2}, Lo/PushbackReader;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 235
    :cond_1
    iget-object p2, p0, Lo/PushbackReader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lo/PushbackReader;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lo/PushbackReader;->mViewDestroyed:Z

    .line 240
    iget p2, p0, Lo/PushbackReader;->mBackStackId:I

    if-ltz p2, :cond_3

    .line 241
    invoke-virtual {p0}, Lo/PushbackReader;->requireFragmentManager()Lo/SerializablePermission;

    move-result-object p1

    iget p2, p0, Lo/PushbackReader;->mBackStackId:I

    invoke-virtual {p1, p2, v0}, Lo/SerializablePermission;->d(II)V

    const/4 p1, -0x1

    .line 243
    iput p1, p0, Lo/PushbackReader;->mBackStackId:I

    goto :goto_1

    .line 245
    :cond_3
    invoke-virtual {p0}, Lo/PushbackReader;->requireFragmentManager()Lo/SerializablePermission;

    move-result-object p2

    invoke-virtual {p2}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object p2

    .line 246
    invoke-virtual {p2, p0}, Lo/UnsupportedEncodingException;->b(Landroidx/fragment/app/Fragment;)Lo/UnsupportedEncodingException;

    if-eqz p1, :cond_4

    .line 248
    invoke-virtual {p2}, Lo/UnsupportedEncodingException;->d()I

    goto :goto_1

    .line 250
    :cond_4
    invoke-virtual {p2}, Lo/UnsupportedEncodingException;->b()I

    :goto_1
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .line 262
    iget-object v0, p0, Lo/PushbackReader;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getShowsDialog()Z
    .locals 1

    .line 332
    iget-boolean v0, p0, Lo/PushbackReader;->mShowsDialog:Z

    return v0
.end method

.method public getTheme()I
    .locals 1

    .line 283
    iget v0, p0, Lo/PushbackReader;->mTheme:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 451
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 453
    iget-boolean v0, p0, Lo/PushbackReader;->mShowsDialog:Z

    if-nez v0, :cond_0

    return-void

    .line 457
    :cond_0
    invoke-virtual {p0}, Lo/PushbackReader;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 459
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 463
    iget-object v1, p0, Lo/PushbackReader;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 460
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DialogFragment can not be attached to a container view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 465
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lo/PushbackReader;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 467
    iget-object v1, p0, Lo/PushbackReader;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 469
    :cond_3
    iget-object v0, p0, Lo/PushbackReader;->mDialog:Landroid/app/Dialog;

    iget-boolean v1, p0, Lo/PushbackReader;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 470
    iget-object v0, p0, Lo/PushbackReader;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 471
    iget-object v0, p0, Lo/PushbackReader;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz p1, :cond_4

    const-string v0, "android:savedDialogState"

    .line 473
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 475
    iget-object v0, p0, Lo/PushbackReader;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_4
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 337
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 338
    iget-boolean p1, p0, Lo/PushbackReader;->mShownByMe:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 341
    iput-boolean p1, p0, Lo/PushbackReader;->mDismissed:Z

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 358
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 360
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lo/PushbackReader;->mHandler:Landroid/os/Handler;

    .line 362
    iget v0, p0, Lo/PushbackReader;->mContainerId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lo/PushbackReader;->mShowsDialog:Z

    if-eqz p1, :cond_1

    const-string v0, "android:style"

    .line 365
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lo/PushbackReader;->mStyle:I

    const-string v0, "android:theme"

    .line 366
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lo/PushbackReader;->mTheme:I

    const-string v0, "android:cancelable"

    .line 367
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lo/PushbackReader;->mCancelable:Z

    .line 368
    iget-boolean v0, p0, Lo/PushbackReader;->mShowsDialog:Z

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lo/PushbackReader;->mShowsDialog:Z

    const/4 v0, -0x1

    const-string v1, "android:backStackId"

    .line 369
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lo/PushbackReader;->mBackStackId:I

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 431
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lo/PushbackReader;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lo/PushbackReader;->getTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 529
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 530
    iget-object v0, p0, Lo/PushbackReader;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 534
    iput-boolean v1, p0, Lo/PushbackReader;->mViewDestroyed:Z

    const/4 v1, 0x0

    .line 538
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 539
    iget-object v0, p0, Lo/PushbackReader;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 540
    iget-boolean v0, p0, Lo/PushbackReader;->mDismissed:Z

    if-nez v0, :cond_0

    .line 543
    iget-object v0, p0, Lo/PushbackReader;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, v0}, Lo/PushbackReader;->onDismiss(Landroid/content/DialogInterface;)V

    .line 545
    :cond_0
    iput-object v1, p0, Lo/PushbackReader;->mDialog:Landroid/app/Dialog;

    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 347
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 348
    iget-boolean v0, p0, Lo/PushbackReader;->mShownByMe:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/PushbackReader;->mDismissed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 352
    iput-boolean v0, p0, Lo/PushbackReader;->mDismissed:Z

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 440
    iget-boolean p1, p0, Lo/PushbackReader;->mViewDestroyed:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 445
    invoke-virtual {p0, p1, p1}, Lo/PushbackReader;->dismissInternal(ZZ)V

    :cond_0
    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2

    .line 376
    iget-boolean v0, p0, Lo/PushbackReader;->mShowsDialog:Z

    if-nez v0, :cond_0

    .line 377
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1

    .line 380
    :cond_0
    invoke-virtual {p0, p1}, Lo/PushbackReader;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lo/PushbackReader;->mDialog:Landroid/app/Dialog;

    .line 382
    iget-object p1, p0, Lo/PushbackReader;->mDialog:Landroid/app/Dialog;

    const-string v0, "layout_inflater"

    if-eqz p1, :cond_1

    .line 383
    iget v1, p0, Lo/PushbackReader;->mStyle:I

    invoke-virtual {p0, p1, v1}, Lo/PushbackReader;->setupDialog(Landroid/app/Dialog;I)V

    .line 385
    iget-object p1, p0, Lo/PushbackReader;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    return-object p1

    .line 388
    :cond_1
    iget-object p1, p0, Lo/PushbackReader;->mHost:Lo/StringBufferInputStream;

    invoke-virtual {p1}, Lo/StringBufferInputStream;->g()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 492
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 493
    iget-object v0, p0, Lo/PushbackReader;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:savedDialogState"

    .line 496
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 499
    :cond_0
    iget v0, p0, Lo/PushbackReader;->mStyle:I

    if-eqz v0, :cond_1

    const-string v1, "android:style"

    .line 500
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 502
    :cond_1
    iget v0, p0, Lo/PushbackReader;->mTheme:I

    if-eqz v0, :cond_2

    const-string v1, "android:theme"

    .line 503
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 505
    :cond_2
    iget-boolean v0, p0, Lo/PushbackReader;->mCancelable:Z

    if-nez v0, :cond_3

    const-string v1, "android:cancelable"

    .line 506
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 508
    :cond_3
    iget-boolean v0, p0, Lo/PushbackReader;->mShowsDialog:Z

    if-nez v0, :cond_4

    const-string v1, "android:showsDialog"

    .line 509
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 511
    :cond_4
    iget v0, p0, Lo/PushbackReader;->mBackStackId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const-string v1, "android:backStackId"

    .line 512
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 482
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 484
    iget-object v0, p0, Lo/PushbackReader;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 485
    iput-boolean v1, p0, Lo/PushbackReader;->mViewDestroyed:Z

    .line 486
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 518
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 519
    iget-object v0, p0, Lo/PushbackReader;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1

    .line 296
    iput-boolean p1, p0, Lo/PushbackReader;->mCancelable:Z

    .line 297
    iget-object v0, p0, Lo/PushbackReader;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public setShowsDialog(Z)V
    .locals 0

    .line 325
    iput-boolean p1, p0, Lo/PushbackReader;->mShowsDialog:Z

    return-void
.end method

.method public setStyle(II)V
    .locals 1

    .line 130
    iput p1, p0, Lo/PushbackReader;->mStyle:I

    .line 131
    iget p1, p0, Lo/PushbackReader;->mStyle:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    const p1, 0x1030059

    .line 132
    iput p1, p0, Lo/PushbackReader;->mTheme:I

    :cond_1
    if-eqz p2, :cond_2

    .line 135
    iput p2, p0, Lo/PushbackReader;->mTheme:I

    :cond_2
    return-void
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v1, 0x18

    invoke-virtual {p2, v1}, Landroid/view/Window;->addFlags(I)V

    .line 403
    :cond_1
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    :goto_0
    return-void
.end method

.method public show(Lo/UnsupportedEncodingException;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 168
    iput-boolean v0, p0, Lo/PushbackReader;->mDismissed:Z

    const/4 v1, 0x1

    .line 169
    iput-boolean v1, p0, Lo/PushbackReader;->mShownByMe:Z

    .line 170
    invoke-virtual {p1, p0, p2}, Lo/UnsupportedEncodingException;->d(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Lo/UnsupportedEncodingException;

    .line 171
    iput-boolean v0, p0, Lo/PushbackReader;->mViewDestroyed:Z

    .line 172
    invoke-virtual {p1}, Lo/UnsupportedEncodingException;->b()I

    move-result p1

    iput p1, p0, Lo/PushbackReader;->mBackStackId:I

    .line 173
    iget p1, p0, Lo/PushbackReader;->mBackStackId:I

    return p1
.end method

.method public show(Lo/SerializablePermission;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lo/PushbackReader;->mDismissed:Z

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lo/PushbackReader;->mShownByMe:Z

    .line 153
    invoke-virtual {p1}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object p1

    .line 154
    invoke-virtual {p1, p0, p2}, Lo/UnsupportedEncodingException;->d(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Lo/UnsupportedEncodingException;

    .line 155
    invoke-virtual {p1}, Lo/UnsupportedEncodingException;->b()I

    return-void
.end method

.method public showNow(Lo/SerializablePermission;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lo/PushbackReader;->mDismissed:Z

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lo/PushbackReader;->mShownByMe:Z

    .line 190
    invoke-virtual {p1}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object p1

    .line 191
    invoke-virtual {p1, p0, p2}, Lo/UnsupportedEncodingException;->d(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Lo/UnsupportedEncodingException;

    .line 192
    invoke-virtual {p1}, Lo/UnsupportedEncodingException;->e()V

    return-void
.end method
