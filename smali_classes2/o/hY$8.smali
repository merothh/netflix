.class Lo/hY$8;
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
.field final synthetic d:Lo/hY;


# direct methods
.method constructor <init>(Lo/hY;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lo/hY$8;->d:Lo/hY;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 330
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgentIntentReceiver inovoked and received Intent with Action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FalkorAgent"

    invoke-static {v0, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_ACTIVE"

    .line 333
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 334
    iget-object p1, p0, Lo/hY$8;->d:Lo/hY;

    invoke-static {p1}, Lo/hY;->b(Lo/hY;)V

    goto :goto_0

    :cond_1
    const-string p2, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_DEACTIVE"

    .line 336
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 337
    iget-object p1, p0, Lo/hY$8;->d:Lo/hY;

    invoke-static {p1}, Lo/hY;->c(Lo/hY;)V

    goto :goto_0

    :cond_2
    const-string p2, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_TYPE_CHANGED"

    .line 339
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 340
    iget-object p1, p0, Lo/hY$8;->d:Lo/hY;

    invoke-static {p1}, Lo/hY;->a(Lo/hY;)V

    goto :goto_0

    :cond_3
    const-string p2, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_DEACTIVE"

    .line 342
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 343
    iget-object p1, p0, Lo/hY$8;->d:Lo/hY;

    invoke-static {p1}, Lo/hY;->e(Lo/hY;)V

    goto :goto_0

    :cond_4
    const-string p2, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_NOT_LOGGED_IN"

    .line 345
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 346
    iget-object p1, p0, Lo/hY$8;->d:Lo/hY;

    invoke-static {p1}, Lo/hY;->i(Lo/hY;)V

    goto :goto_0

    :cond_5
    const-string p2, "com.netflix.mediaclient.intent.action.ACCOUNT_DATA_FETCHED"

    .line 348
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "BookmarkStore accountDataFetched"

    .line 349
    invoke-static {v0, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object p1, p0, Lo/hY$8;->d:Lo/hY;

    invoke-static {p1}, Lo/hY;->f(Lo/hY;)Lcom/netflix/mediaclient/media/BookmarkStore;

    move-result-object p1

    iget-object p2, p0, Lo/hY$8;->d:Lo/hY;

    invoke-static {p2}, Lo/hY;->h(Lo/hY;)Lcom/netflix/mediaclient/service/user/UserAgent;

    move-result-object p2

    invoke-interface {p2}, Lcom/netflix/mediaclient/service/user/UserAgent;->r()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/media/BookmarkStore;->updateValidProfiles(Ljava/util/List;)V

    :cond_6
    :goto_0
    return-void
.end method
