.class Lo/ui$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Application"
.end annotation


# instance fields
.field private final c:Lo/uC;

.field private final d:J


# direct methods
.method public constructor <init>(Lo/uC;J)V
    .locals 0

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iput-object p1, p0, Lo/ui$Application;->c:Lo/uC;

    .line 400
    iput-wide p2, p0, Lo/ui$Application;->d:J

    return-void
.end method


# virtual methods
.method public a(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$ActionBar;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c()J
    .locals 2

    .line 410
    iget-wide v0, p0, Lo/ui$Application;->d:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public d(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public h()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public h(I)Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$ActionBar;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public i()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$Application;
    .locals 3

    .line 445
    new-instance v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$Application;

    iget-object v1, p0, Lo/ui$Application;->c:Lo/uC;

    invoke-virtual {v1}, Lo/uC;->a()Lcom/netflix/mediaclient/service/player/StreamProfileType;

    move-result-object v1

    invoke-static {}, Lo/zo;->a()Lo/zo;

    move-result-object v2

    invoke-virtual {v2}, Lo/zo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$Application;-><init>(Lcom/netflix/mediaclient/service/player/StreamProfileType;Ljava/lang/String;)V

    return-object v0
.end method

.method public j()Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$AsePlayerState;
    .locals 1

    .line 405
    sget-object v0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$AsePlayerState;->b:Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/aseinterface/IAsePlayerState$AsePlayerState;

    return-object v0
.end method
