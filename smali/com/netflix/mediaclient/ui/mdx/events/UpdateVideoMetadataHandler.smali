.class public final Lcom/netflix/mediaclient/ui/mdx/events/UpdateVideoMetadataHandler;
.super Lcom/netflix/mediaclient/ui/mdx/events/EventHandler;
.source "UpdateVideoMetadataHandler.java"


# direct methods
.method constructor <init>()V
    .locals 1

    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.MDXUPDATE_MOVIEMETADA"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/events/EventHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/netflix/mediaclient/ui/mdx/RemotePlaybackListener;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "mdxui"

    const-string/jumbo v1, "Video metadata update"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "duration"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlaybackListener;->updateDuration(I)V

    return-void
.end method
