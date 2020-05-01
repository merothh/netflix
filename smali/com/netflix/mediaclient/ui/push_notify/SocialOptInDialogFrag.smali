.class public Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;
.super Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
.source "SocialOptInDialogFrag.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "social"


# instance fields
.field handler:Lcom/netflix/mediaclient/ui/home/HomeActivity;

.field private final mClicked:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;->mClicked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;->mClicked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static newInstance()Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;-><init>()V

    return-object v0
.end method


# virtual methods
.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onCancel(Landroid/content/DialogInterface;)V

    .line 109
    const-string/jumbo v0, "social"

    const-string/jumbo v1, "User cancelled!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;->handler:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->optInButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->optInDialog:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;->handler:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    .line 112
    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getDataContext()Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    move-result-object v3

    const-string/jumbo v4, "cancel"

    .line 111
    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 50
    instance-of v1, v0, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    if-nez v1, :cond_0

    .line 51
    const-string/jumbo v0, "social"

    const-string/jumbo v1, "Activity is not HomeActivity! This should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 55
    :cond_0
    check-cast v0, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;->handler:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    .line 57
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080217

    .line 58
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08020e

    .line 59
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080214

    new-instance v2, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$2;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$2;-><init>(Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;)V

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080211

    new-instance v2, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag$1;-><init>(Lcom/netflix/mediaclient/ui/push_notify/SocialOptInDialogFrag;)V

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method
