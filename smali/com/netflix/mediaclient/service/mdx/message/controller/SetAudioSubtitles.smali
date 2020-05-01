.class public final Lcom/netflix/mediaclient/service/mdx/message/controller/SetAudioSubtitles;
.super Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;
.source "SetAudioSubtitles.java"


# static fields
.field private static PROPERTY_audio_track_id:Ljava/lang/String;

.field private static PROPERTY_timed_text_track_id:Ljava/lang/String;


# instance fields
.field private mAudioTrackId:Ljava/lang/String;

.field private mTimedTextTrackId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "timed_text_track_id"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/message/controller/SetAudioSubtitles;->PROPERTY_timed_text_track_id:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "audio_track_id"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/message/controller/SetAudioSubtitles;->PROPERTY_audio_track_id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "SET_AUDIO_SUBTITLES"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/SetAudioSubtitles;->mTimedTextTrackId:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/SetAudioSubtitles;->mAudioTrackId:Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/message/controller/SetAudioSubtitles;->createObj()V

    .line 36
    return-void
.end method

.method private createObj()V
    .locals 4

    .prologue
    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/SetAudioSubtitles;->mJson:Lorg/json/JSONObject;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/message/controller/SetAudioSubtitles;->PROPERTY_audio_track_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/SetAudioSubtitles;->mAudioTrackId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/SetAudioSubtitles;->mJson:Lorg/json/JSONObject;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/message/controller/SetAudioSubtitles;->PROPERTY_timed_text_track_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/message/controller/SetAudioSubtitles;->mTimedTextTrackId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const-string/jumbo v1, "nf_mdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/message/controller/SetAudioSubtitles;->messageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " createObj failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
