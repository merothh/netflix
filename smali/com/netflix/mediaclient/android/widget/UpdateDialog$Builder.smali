.class public Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
.super Ljava/lang/Object;
.source "UpdateDialog.java"


# instance fields
.field private params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/android/widget/UpdateDialog$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    return-void
.end method


# virtual methods
.method public create()Lcom/netflix/mediaclient/android/widget/UpdateDialog;
    .locals 4

    new-instance v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/android/widget/UpdateDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-boolean v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/UpdateDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/UpdateDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/UpdateDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/UpdateDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/UpdateDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mIconId:I

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mIconId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/UpdateDialog;->setIcon(I)V

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/UpdateDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v2, v2, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v3, v3, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/android/widget/UpdateDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v2, v2, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v3, v3, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/android/widget/UpdateDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_5
    return-object v0
.end method

.method public setCancelable(Z)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iput-boolean p1, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mCancelable:Z

    return-object p0
.end method

.method public setIcon(I)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iput p1, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mIconId:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iput-object p1, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setMessage(I)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iput-object p1, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iput-object p2, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iput-object p1, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iput-object p2, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iput-object p1, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iput-object p1, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iput-object p2, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iput-object p1, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iput-object p2, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setTitle(I)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iget-object v1, v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->params:Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;

    iput-object p1, v0, Lcom/netflix/mediaclient/android/widget/UpdateDialog$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public show()Landroid/support/v7/app/AlertDialog;
    .locals 1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->create()Lcom/netflix/mediaclient/android/widget/UpdateDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    return-object v0
.end method
