.class public final Lcom/netflix/mediaclient/ui/mdx/events/DialogCancelHandler;
.super Lcom/netflix/mediaclient/ui/mdx/events/EventHandler;
.source "DialogCancelHandler.java"


# direct methods
.method constructor <init>()V
    .locals 1

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDXUPDATE_DIALOGCANCEL"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/events/EventHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/netflix/mediaclient/ui/mdx/RemotePlaybackListener;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "mdxui"

    const-string/jumbo v1, "Cancel dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlaybackListener;->cancelDialog()V

    return-void
.end method
