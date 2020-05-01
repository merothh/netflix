.class Lo/nF$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nF;->c(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/nF;

.field final synthetic b:Lo/Ad$TaskDescription;


# direct methods
.method constructor <init>(Lo/nF;Lo/Ad$TaskDescription;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lo/nF$2;->a:Lo/nF;

    iput-object p2, p0, Lo/nF$2;->b:Lo/Ad$TaskDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 65
    iget-object v0, p0, Lo/nF$2;->b:Lo/Ad$TaskDescription;

    iget-object v0, v0, Lo/Ad$TaskDescription;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x1c7c1d26

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0xc6cca1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_ENDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x2

    const-string v2, "nf_offlineBroadcast"

    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_3

    goto :goto_2

    .line 78
    :cond_3
    sget-object v0, Lo/nF$3;->b:[I

    iget-object v4, p0, Lo/nF$2;->b:Lo/Ad$TaskDescription;

    iget-object v4, v4, Lo/Ad$TaskDescription;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v3, :cond_5

    if-eq v0, v1, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "onOfflinePlayStopReceived"

    .line 84
    invoke-static {v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string v0, "onStreamingPlayStopReceived"

    .line 80
    invoke-static {v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lo/nF$2;->a:Lo/nF;

    invoke-static {v0}, Lo/nF;->b(Lo/nF;)Lo/nF$StateListAnimator;

    move-result-object v0

    invoke-interface {v0}, Lo/nF$StateListAnimator;->d()V

    goto :goto_2

    .line 67
    :cond_6
    sget-object v0, Lo/nF$3;->b:[I

    iget-object v4, p0, Lo/nF$2;->b:Lo/Ad$TaskDescription;

    iget-object v4, v4, Lo/Ad$TaskDescription;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v3, :cond_8

    if-eq v0, v1, :cond_7

    goto :goto_2

    :cond_7
    const-string v0, "onOfflinePlayStartReceived"

    .line 73
    invoke-static {v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    const-string v0, "onStreamingPlayStartReceived"

    .line 69
    invoke-static {v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lo/nF$2;->a:Lo/nF;

    invoke-static {v0}, Lo/nF;->b(Lo/nF;)Lo/nF$StateListAnimator;

    move-result-object v0

    invoke-interface {v0}, Lo/nF$StateListAnimator;->b()V

    :goto_2
    return-void
.end method
