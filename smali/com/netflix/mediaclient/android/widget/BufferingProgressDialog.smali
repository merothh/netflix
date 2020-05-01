.class public Lcom/netflix/mediaclient/android/widget/BufferingProgressDialog;
.super Landroid/app/ProgressDialog;
.source "BufferingProgressDialog.java"


# instance fields
.field private final netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/BufferingProgressDialog;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/BufferingProgressDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/BufferingProgressDialog;->setCancelable(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/BufferingProgressDialog;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/BufferingProgressDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/BufferingProgressDialog;->setCancelable(Z)V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/BufferingProgressDialog;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x54

    if-eq p1, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/ProgressDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
