.class Lo/LY$9;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/LY;


# direct methods
.method constructor <init>(Lo/LY;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lo/LY$9;->a:Lo/LY;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 334
    iget-object p1, p0, Lo/LY$9;->a:Lo/LY;

    invoke-virtual {p1}, Lo/LY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p1

    invoke-static {p1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 342
    :cond_1
    iget-object p1, p0, Lo/LY$9;->a:Lo/LY;

    invoke-static {p1}, Lo/LY;->c(Lo/LY;)Lo/Bc;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 346
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5db1efe2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_5

    const v2, -0x5a95a58a

    if-eq v1, v2, :cond_4

    const v2, 0x70b0b8d8

    if-eq v1, v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_PLAYER_POST_PLAY_ACTION_TITLE_END"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_PLAYER_POST_PLAY_ACTION_TITLE_NEXT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const-string v1, "com.netflix.mediaclient.intent.action.MDX_ACTION_PLAYER_POST_PLAY_ACTION_HIDE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x2

    :cond_6
    :goto_0
    if-eqz v0, :cond_a

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_7

    goto :goto_1

    .line 364
    :cond_7
    iget-object p1, p0, Lo/LY$9;->a:Lo/LY;

    invoke-static {p1}, Lo/LY;->j(Lo/LY;)V

    goto :goto_1

    :cond_8
    const-string p1, "id"

    .line 355
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 356
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "CastPlayerPostPlayFrag"

    if-eqz p2, :cond_9

    .line 357
    iget-object p2, p0, Lo/LY$9;->a:Lo/LY;

    invoke-virtual {p2}, Lo/LY;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p2

    invoke-virtual {p2}, Lo/Am;->w()Lo/zG;

    move-result-object p2

    const/4 v1, 0x0

    new-instance v2, Lo/LY$ActionBar;

    iget-object v3, p0, Lo/LY$9;->a:Lo/LY;

    invoke-direct {v2, v3, v0}, Lo/LY$ActionBar;-><init>(Lo/LY;Ljava/lang/String;)V

    invoke-interface {p2, p1, v1, v4, v2}, Lo/zG;->e(Ljava/lang/String;Ljava/lang/String;ZLo/zU;)Z

    goto :goto_1

    :cond_9
    const-string p1, "MDX_ACTION_PLAYER_POST_PLAY_ACTION_TITLE_NEXT id null"

    .line 360
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 350
    :cond_a
    iget-object p1, p0, Lo/LY$9;->a:Lo/LY;

    invoke-static {p1}, Lo/LY;->c(Lo/LY;)Lo/Bc;

    move-result-object p2

    invoke-static {p1, p2}, Lo/LY;->c(Lo/LY;Lo/Bc;)V

    .line 351
    iget-object p1, p0, Lo/LY$9;->a:Lo/LY;

    invoke-static {p1}, Lo/LY;->b(Lo/LY;)V

    :goto_1
    return-void
.end method
