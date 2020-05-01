.class final Lcom/netflix/mediaclient/service/mdx/message/MdxMessage$1;
.super Ljava/util/HashSet;
.source "MdxMessage.java"


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
    .line 88
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 90
    const-string/jumbo v0, "DIALOG_RESPONSE"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage$1;->add(Ljava/lang/Object;)Z

    .line 91
    const-string/jumbo v0, "PLAYER_PAUSE"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage$1;->add(Ljava/lang/Object;)Z

    .line 92
    const-string/jumbo v0, "PLAYER_PLAY"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage$1;->add(Ljava/lang/Object;)Z

    .line 93
    const-string/jumbo v0, "PLAYER_RESUME"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage$1;->add(Ljava/lang/Object;)Z

    .line 94
    const-string/jumbo v0, "PLAYER_SET_AUTO_ADVANCE"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage$1;->add(Ljava/lang/Object;)Z

    .line 95
    const-string/jumbo v0, "PLAYER_SET_CURRENT_TIME"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage$1;->add(Ljava/lang/Object;)Z

    .line 97
    const-string/jumbo v0, "PLAYER_SKIP"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage$1;->add(Ljava/lang/Object;)Z

    .line 98
    const-string/jumbo v0, "PLAYER_STOP"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage$1;->add(Ljava/lang/Object;)Z

    .line 99
    const-string/jumbo v0, "SET_AUDIO_SUBTITLES"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage$1;->add(Ljava/lang/Object;)Z

    .line 100
    const-string/jumbo v0, "POSTPLAY_STOP"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage$1;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method
