.class public Lcom/netflix/mediaclient/ui/login/LoginBaseFragment;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source "LoginBaseFragment.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "LoginBaseFragment"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mLoginFragmentListener:Lcom/netflix/mediaclient/ui/login/LoginFragmentListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    return-void
.end method


# virtual methods
.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x16
    .end annotation

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onAttach(Landroid/app/Activity;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/login/LoginBaseFragment;->onAttachContext(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/login/LoginBaseFragment;->onAttachContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onAttachContext(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/login/LoginBaseFragment;->mContext:Landroid/content/Context;

    instance-of v0, p1, Lcom/netflix/mediaclient/ui/login/LoginFragmentListener;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/netflix/mediaclient/ui/login/LoginFragmentListener;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/login/LoginBaseFragment;->mLoginFragmentListener:Lcom/netflix/mediaclient/ui/login/LoginFragmentListener;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must implement LoginFragmentListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setupViews(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LoginBaseFragment"

    const-string/jumbo v1, "setupViews"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
