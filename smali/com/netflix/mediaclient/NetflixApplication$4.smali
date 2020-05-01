.class Lcom/netflix/mediaclient/NetflixApplication$4;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/NetflixApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/NetflixApplication;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/NetflixApplication;)V
    .locals 0

    .line 738
    iput-object p1, p0, Lcom/netflix/mediaclient/NetflixApplication$4;->d:Lcom/netflix/mediaclient/NetflixApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 746
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.netflix.mediaclient.intent.action.NETFLIX_SERVICE_DESTROYED"

    .line 747
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "NetflixApplication"

    if-eqz v0, :cond_0

    const-string p1, "Netflix service is destroyed"

    .line 748
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object p1, p0, Lcom/netflix/mediaclient/NetflixApplication$4;->d:Lcom/netflix/mediaclient/NetflixApplication;

    invoke-static {p1}, Lcom/netflix/mediaclient/NetflixApplication;->b(Lcom/netflix/mediaclient/NetflixApplication;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 750
    iget-object p1, p0, Lcom/netflix/mediaclient/NetflixApplication$4;->d:Lcom/netflix/mediaclient/NetflixApplication;

    invoke-static {p1}, Lcom/netflix/mediaclient/NetflixApplication;->a(Lcom/netflix/mediaclient/NetflixApplication;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "unregister cast player"

    .line 751
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object p1, p0, Lcom/netflix/mediaclient/NetflixApplication$4;->d:Lcom/netflix/mediaclient/NetflixApplication;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/NetflixApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/netflix/mediaclient/NetflixApplication$4;->d:Lcom/netflix/mediaclient/NetflixApplication;

    invoke-static {p2}, Lcom/netflix/mediaclient/NetflixApplication;->e(Lcom/netflix/mediaclient/NetflixApplication;)Landroid/content/BroadcastReceiver;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    :cond_0
    const-string v0, "com.netflix.mediaclient.intent.action.NETFLIX_SERVICE_INIT_COMPLETE"

    .line 754
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "status_code"

    .line 756
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/StatusCode;

    .line 761
    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, " Netflix application is ready"

    .line 762
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object p1, p0, Lcom/netflix/mediaclient/NetflixApplication$4;->d:Lcom/netflix/mediaclient/NetflixApplication;

    invoke-static {p1}, Lcom/netflix/mediaclient/NetflixApplication;->b(Lcom/netflix/mediaclient/NetflixApplication;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 764
    iget-object p1, p0, Lcom/netflix/mediaclient/NetflixApplication$4;->d:Lcom/netflix/mediaclient/NetflixApplication;

    invoke-static {p1}, Lcom/netflix/mediaclient/NetflixApplication;->a(Lcom/netflix/mediaclient/NetflixApplication;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "register cast player"

    .line 765
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object p1, p0, Lcom/netflix/mediaclient/NetflixApplication$4;->d:Lcom/netflix/mediaclient/NetflixApplication;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/NetflixApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/netflix/mediaclient/NetflixApplication$4;->d:Lcom/netflix/mediaclient/NetflixApplication;

    invoke-static {p2}, Lcom/netflix/mediaclient/NetflixApplication;->e(Lcom/netflix/mediaclient/NetflixApplication;)Landroid/content/BroadcastReceiver;

    move-result-object p2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.netflix.mediaclient.service.ACTION_SHOW_CAST_PLAYER"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string p1, " Netflix application is NOT ready"

    .line 769
    invoke-static {v2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object p1, p0, Lcom/netflix/mediaclient/NetflixApplication$4;->d:Lcom/netflix/mediaclient/NetflixApplication;

    invoke-static {p1}, Lcom/netflix/mediaclient/NetflixApplication;->b(Lcom/netflix/mediaclient/NetflixApplication;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 773
    :cond_2
    :goto_0
    invoke-static {}, Lo/VideoView2;->d()V

    :cond_3
    :goto_1
    return-void
.end method
