.class public Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$Fragment;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fragment"
.end annotation


# instance fields
.field protected countSwitchAwayAudio:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "asa"
    .end annotation
.end field

.field protected countSwitchAwayVideo:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vsa"
    .end annotation
.end field

.field protected countSwitchBackAudio:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "asb"
    .end annotation
.end field

.field protected countSwitchBackVideo:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vsb"
    .end annotation
.end field

.field protected lastSwitchAwayTimeAudio:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lasat"
    .end annotation
.end field

.field protected lastSwitchAwayTimeVideo:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lvsat"
    .end annotation
.end field

.field protected switchAwayDurationsAudio:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "asbt"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected switchAwayDurationsVideo:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vsbt"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/tH$AssistContent;)V
    .locals 2

    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 645
    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$Fragment;->lastSwitchAwayTimeAudio:J

    .line 647
    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$Fragment;->lastSwitchAwayTimeVideo:J

    .line 655
    iget v0, p1, Lo/tH$AssistContent;->d:I

    iput v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$Fragment;->countSwitchAwayVideo:I

    .line 656
    iget v0, p1, Lo/tH$AssistContent;->c:I

    iput v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$Fragment;->countSwitchAwayAudio:I

    .line 657
    iget v0, p1, Lo/tH$AssistContent;->b:I

    iput v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$Fragment;->countSwitchBackVideo:I

    .line 658
    iget v0, p1, Lo/tH$AssistContent;->e:I

    iput v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$Fragment;->countSwitchBackAudio:I

    .line 659
    iget-wide v0, p1, Lo/tH$AssistContent;->a:J

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$Fragment;->lastSwitchAwayTimeAudio:J

    .line 660
    iget-wide v0, p1, Lo/tH$AssistContent;->g:J

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$Fragment;->lastSwitchAwayTimeVideo:J

    .line 661
    iget-object v0, p1, Lo/tH$AssistContent;->h:Ljava/util/List;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$Fragment;->switchAwayDurationsAudio:Ljava/util/List;

    .line 662
    iget-object p1, p1, Lo/tH$AssistContent;->j:Ljava/util/List;

    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/streamingplayback/exosessionplayer/reporter/EndPlayJson$Fragment;->switchAwayDurationsVideo:Ljava/util/List;

    return-void
.end method
