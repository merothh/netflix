.class public final Lo/lR;
.super Lo/ly;
.source ""


# static fields
.field private static a:Ljava/lang/String; = "timed_text_track_id"

.field private static d:Ljava/lang/String; = "audio_track_id"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "SET_AUDIO_SUBTITLES"

    .line 23
    invoke-direct {p0, v0}, Lo/ly;-><init>(Ljava/lang/String;)V

    .line 24
    sget-object v0, Lo/lR;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lo/lR;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-object p1, Lo/lR;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lo/lR;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
