.class public Lcom/netflix/mediaclient/service/error/action/UnregisterAction;
.super Lcom/netflix/mediaclient/service/error/action/BaseAction;
.source "UnregisterAction.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/error/action/BaseAction;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/action/UnregisterAction;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/error/action/UnregisterAction;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/login/LogoutActivity;->create(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/action/UnregisterAction;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
