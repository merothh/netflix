.class public Lo/lS;
.super Lo/mk;
.source ""


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "AUDIO_SUBTITLES_SETTINGS"

    .line 11
    invoke-direct {p0, v0}, Lo/mk;-><init>(Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lo/lS;->b:Lorg/json/JSONObject;

    return-void
.end method
