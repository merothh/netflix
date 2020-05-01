.class public final Lo/of$PendingIntent;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/of;-><init>(Landroid/content/Context;Lo/nS;Lo/Sc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/of;


# direct methods
.method constructor <init>(Lo/of;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lo/of$PendingIntent;->d:Lo/of;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 109
    iget-object p1, p0, Lo/of$PendingIntent;->d:Lo/of;

    invoke-virtual {p1}, Lo/of;->c()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-static {p2}, Lo/Ad;->a(Landroid/content/Intent;)Lo/Ad$TaskDescription;

    move-result-object p2

    const-string v0, "PlayerUtils.parseIntent(intent)"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v0, p2, Lo/Ad$TaskDescription;->b:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    if-ne v0, v1, :cond_2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayStopReceiver received an OfflinePlayback for videoId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lo/Ad$TaskDescription;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartDownloadController"

    .line 121
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_STARTED"

    .line 126
    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object p1, p0, Lo/of$PendingIntent;->d:Lo/of;

    iget-object p2, p2, Lo/Ad$TaskDescription;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lo/of;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_ENDED"

    .line 128
    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 129
    iget-object p1, p0, Lo/of$PendingIntent;->d:Lo/of;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/of;->c(Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lo/of$PendingIntent;->d:Lo/of;

    invoke-static {p1, p2}, Lo/of;->e(Lo/of;Lo/Ad$TaskDescription;)V

    :cond_2
    :goto_0
    return-void
.end method
