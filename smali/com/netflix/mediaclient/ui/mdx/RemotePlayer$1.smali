.class final Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;
.super Ljava/util/HashSet;
.source "RemotePlayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 65
    const-string/jumbo v0, "PLAY"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;->add(Ljava/lang/Object;)Z

    .line 66
    const-string/jumbo v0, "PROGRESS"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;->add(Ljava/lang/Object;)Z

    .line 67
    const-string/jumbo v0, "PLAYING"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;->add(Ljava/lang/Object;)Z

    .line 68
    const-string/jumbo v0, "PAUSE"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;->add(Ljava/lang/Object;)Z

    .line 70
    const-string/jumbo v0, "STALLED"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;->add(Ljava/lang/Object;)Z

    .line 71
    const-string/jumbo v0, "AUTO_ADVANCE"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;->add(Ljava/lang/Object;)Z

    .line 75
    const-string/jumbo v0, "prepause"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;->add(Ljava/lang/Object;)Z

    .line 76
    const-string/jumbo v0, "preseek"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;->add(Ljava/lang/Object;)Z

    .line 77
    const-string/jumbo v0, "preplay"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method
