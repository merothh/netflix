.class Lo/bM$Application;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/bM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field final synthetic a:Lo/bM;


# direct methods
.method private b()Lo/AK;
    .locals 3

    .line 1862
    iget-object v0, p0, Lo/bM$Application;->a:Lo/bM;

    invoke-static {v0}, Lo/bM;->v(Lo/bM;)Lo/ko;

    move-result-object v0

    invoke-virtual {v0}, Lo/ko;->r()Lo/Bc;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/bM$Application;->a:Lo/bM;

    invoke-static {v0}, Lo/bM;->v(Lo/bM;)Lo/ko;

    move-result-object v0

    invoke-virtual {v0}, Lo/ko;->r()Lo/Bc;

    move-result-object v0

    invoke-interface {v0}, Lo/Bc;->bb()Lo/AK;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 1863
    invoke-interface {v0}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method

.method private d()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .line 1870
    iget-object v0, p0, Lo/bM$Application;->a:Lo/bM;

    invoke-static {v0}, Lo/bM;->v(Lo/bM;)Lo/ko;

    move-result-object v0

    invoke-virtual {v0}, Lo/ko;->r()Lo/Bc;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/bM$Application;->a:Lo/bM;

    invoke-static {v0}, Lo/bM;->v(Lo/bM;)Lo/ko;

    move-result-object v0

    invoke-virtual {v0}, Lo/ko;->r()Lo/Bc;

    move-result-object v0

    invoke-interface {v0}, Lo/Bc;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1804
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetflixService"

    if-nez p1, :cond_0

    const-string p1, "intent action is not set."

    .line 1807
    invoke-static {v0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1810
    :cond_0
    invoke-direct {p0}, Lo/bM$Application;->b()Lo/AK;

    move-result-object v1

    .line 1811
    invoke-direct {p0}, Lo/bM$Application;->d()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    .line 1813
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x60b81c68

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v3, v4, :cond_3

    const v4, -0x28435559

    if-eq v3, v4, :cond_2

    const v4, -0x23fb60d2

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_PLAYBACKSTART"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const-string v3, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_PLAYBACKEND"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const-string v3, "com.netflix.mediaclient.intent.action.MDX_ACTION_UPDATE_STATE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_9

    if-eq p1, v7, :cond_7

    if-eq p1, v5, :cond_5

    const-string p1, "invalid action type."

    .line 1857
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_5
    const-string p1, "time"

    .line 1846
    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1847
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on MDX state update - received updated mdx position: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_6

    const-string p2, "updating cached video position"

    .line 1849
    invoke-static {v0, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    iget-object p2, p0, Lo/bM$Application;->a:Lo/bM;

    invoke-virtual {p2}, Lo/bM;->H()Lo/zI;

    move-result-object p2

    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v2, p1}, Lo/zI;->b(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;I)V

    .line 1851
    invoke-interface {v1}, Lo/AK;->ab()Z

    move-result v8

    .line 1852
    invoke-interface {v1}, Lo/AK;->aa()Z

    move-result p1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    .line 1854
    :goto_2
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object p2

    invoke-interface {p2, v8, p1}, Lo/bO;->a(ZZ)V

    goto/16 :goto_4

    .line 1833
    :cond_7
    iget-object p1, p0, Lo/bM$Application;->a:Lo/bM;

    invoke-static {p1}, Lo/bM;->v(Lo/bM;)Lo/ko;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lo/bM$Application;->a:Lo/bM;

    invoke-static {p1}, Lo/bM;->v(Lo/bM;)Lo/ko;

    move-result-object p1

    invoke-virtual {p1}, Lo/ko;->l()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "start mdx notification"

    .line 1834
    invoke-static {v0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    iget-object p1, p0, Lo/bM$Application;->a:Lo/bM;

    invoke-static {p1}, Lo/bM;->u(Lo/bM;)V

    if-eqz v1, :cond_b

    const-string p1, "refreshing episodes data on play start"

    .line 1838
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    iget-object p1, p0, Lo/bM$Application;->a:Lo/bM;

    invoke-virtual {p1}, Lo/bM;->H()Lo/zI;

    move-result-object p1

    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Lo/zI;->a(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    goto :goto_4

    :cond_8
    const-string p1, "false MDX_ACTION_UPDATE_PLAYBACKSTART"

    .line 1842
    invoke-static {v0, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    new-array p1, v7, [Ljava/lang/Object;

    const-wide/32 v2, 0x1b77400

    .line 1815
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, p1, v8

    const-string v4, "mdx exit, stop service in %sms"

    invoke-static {v0, v4, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1817
    iget-object p1, p0, Lo/bM$Application;->a:Lo/bM;

    invoke-static {p1, v2, v3}, Lo/bM;->c(Lo/bM;J)V

    if-eqz v1, :cond_a

    .line 1819
    invoke-interface {v1}, Lo/AK;->ab()Z

    move-result p1

    .line 1820
    invoke-interface {v1}, Lo/AK;->aa()Z

    move-result v1

    goto :goto_3

    :cond_a
    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 1822
    :goto_3
    invoke-static {}, Lo/bU;->a()Lo/bO;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lo/bO;->a(ZZ)V

    const-string p1, "updateCW"

    .line 1826
    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "Refreshing CW for MDX_ACTION_UPDATE_PLAYBACKEND..."

    .line 1827
    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string p2, "mdx.cw.refresh"

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 1829
    iget-object p1, p0, Lo/bM$Application;->a:Lo/bM;

    invoke-virtual {p1}, Lo/bM;->H()Lo/zI;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, v8, p2}, Lo/zI;->d(ZLjava/lang/String;)V

    :cond_b
    :goto_4
    return-void
.end method
