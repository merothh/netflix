.class Lo/hY$4;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/hY;


# direct methods
.method constructor <init>(Lo/hY;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lo/hY$4;->a:Lo/hY;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 294
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-static {}, Lo/hY;->g()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 304
    :cond_1
    invoke-static {p2}, Lo/Ad;->a(Landroid/content/Intent;)Lo/Ad$TaskDescription;

    move-result-object p2

    const-string v0, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_STARTED"

    .line 306
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    iget-object p1, p0, Lo/hY$4;->a:Lo/hY;

    iget-object v0, p2, Lo/Ad$TaskDescription;->e:Ljava/lang/String;

    iget-object p2, p2, Lo/Ad$TaskDescription;->d:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {p1, v0, p2}, Lo/hY;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    goto :goto_0

    :cond_2
    const-string v0, "com.netflix.mediaclient.intent.action.PLAYER_LOCAL_PLAYBACK_ENDED"

    .line 308
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "FalkorAgent"

    const-string v0, "Refreshing CW for PLAYER_LOCAL_PLAYBACK_ENDED..."

    .line 309
    invoke-static {p1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget p1, p2, Lo/Ad$TaskDescription;->c:I

    const/4 v0, -0x1

    if-le p1, v0, :cond_3

    .line 311
    iget-object p1, p0, Lo/hY$4;->a:Lo/hY;

    invoke-static {p1}, Lo/hY;->d(Lo/hY;)Lo/FontRequest;

    move-result-object p1

    iget-object v0, p2, Lo/Ad$TaskDescription;->e:Ljava/lang/String;

    iget v1, p2, Lo/Ad$TaskDescription;->c:I

    invoke-static {}, Lo/aey;->b()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lo/FontRequest;->a(Ljava/lang/String;IJ)V

    .line 314
    :cond_3
    iget-object p1, p2, Lo/Ad$TaskDescription;->j:Ljava/lang/String;

    invoke-static {p1}, Lo/Aq;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 315
    iget-object p1, p0, Lo/hY$4;->a:Lo/hY;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lo/hY;->a(ZLjava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
