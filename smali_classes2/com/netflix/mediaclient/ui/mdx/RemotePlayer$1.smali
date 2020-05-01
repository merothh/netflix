.class public final Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;
.super Ljava/util/HashSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Mq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const-string v0, "PLAY"

    .line 69
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;->add(Ljava/lang/Object;)Z

    const-string v0, "PROGRESS"

    .line 70
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;->add(Ljava/lang/Object;)Z

    const-string v0, "PLAYING"

    .line 71
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;->add(Ljava/lang/Object;)Z

    const-string v0, "PAUSE"

    .line 72
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;->add(Ljava/lang/Object;)Z

    const-string v0, "STALLED"

    .line 74
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;->add(Ljava/lang/Object;)Z

    const-string v0, "AUTO_ADVANCE"

    .line 75
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;->add(Ljava/lang/Object;)Z

    const-string v0, "prepause"

    .line 79
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;->add(Ljava/lang/Object;)Z

    const-string v0, "preseek"

    .line 80
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;->add(Ljava/lang/Object;)Z

    const-string v0, "preplay"

    .line 81
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
