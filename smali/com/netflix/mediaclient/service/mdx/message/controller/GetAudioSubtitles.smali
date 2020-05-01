.class public final Lcom/netflix/mediaclient/service/mdx/message/controller/GetAudioSubtitles;
.super Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;
.source "GetAudioSubtitles.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "GET_AUDIO_SUBTITLES"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method
