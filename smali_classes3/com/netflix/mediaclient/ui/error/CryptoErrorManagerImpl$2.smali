.class Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl$2;
.super Lo/Aj;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl$2;->d:Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;

    invoke-direct {p0}, Lo/Aj;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 215
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 216
    invoke-static {}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Offline content removed!"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to remove offline content!"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl$2;->d:Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->b(Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    monitor-enter p1

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl$2;->d:Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->d(Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;)Lo/nS;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/nS;->d(Lo/nV;)V

    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl$2;->d:Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->c(Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl$2;->d:Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->c(Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 227
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl$2;->d:Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->e(Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl$2;->d:Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;->b(Lcom/netflix/mediaclient/ui/error/CryptoErrorManagerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 230
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
