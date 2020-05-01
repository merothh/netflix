.class Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$5;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$5;->d:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "nf_msl_DrmStateManager"

    const-string v0, "Received intent "

    .line 202
    invoke-static {p1, v0, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 204
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.netflix.mediaclient.intent.action.LOG_PAUSE_EVENTS_DELIVERY"

    .line 205
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "Playback started!"

    .line 206
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object p1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$5;->d:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->a(Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "com.netflix.mediaclient.intent.action.LOG_RESUME_EVENTS_DELIVERY"

    .line 208
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "Playback stopped!"

    .line 209
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object p1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$5;->d:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->a(Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 211
    iget-object p1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$5;->d:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->e(Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 212
    iget-object p1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager$5;->d:Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;

    invoke-static {p1}, Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;->d(Lcom/netflix/mediaclient/service/configuration/crypto/DrmStateManager;)V

    :cond_1
    :goto_0
    return-void
.end method
