.class public Lcom/netflix/mediaclient/service/error/action/NoAction;
.super Lcom/netflix/mediaclient/service/error/action/BaseAction;
.source "NoAction.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/error/action/BaseAction;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "ErrorManager"

    const-string/jumbo v1, "User pressed OK"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
