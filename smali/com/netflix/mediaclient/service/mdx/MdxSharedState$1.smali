.class final Lcom/netflix/mediaclient/service/mdx/MdxSharedState$1;
.super Ljava/util/HashMap;
.source "MdxSharedState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Playing:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    const-string/jumbo v1, "Playing"

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxSharedState$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Paused:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    const-string/jumbo v1, "Paused"

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxSharedState$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Stopped:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    const-string/jumbo v1, "Stopped"

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxSharedState$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Loading:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    const-string/jumbo v1, "Loading"

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxSharedState$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Transitioning:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    const-string/jumbo v1, "Transitioning"

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxSharedState$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
