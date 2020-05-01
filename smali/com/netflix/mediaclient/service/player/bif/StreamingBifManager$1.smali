.class Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;
.super Ljava/lang/Object;
.source "StreamingBifManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 84
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->access$000(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->access$100(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->parseIndexFromInputStream(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "r"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->access$202(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;->this$0:Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->access$300(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const-string/jumbo v1, "BifManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadBifIndexAsync has exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
