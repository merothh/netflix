.class Lcom/netflix/mediaclient/media/BookmarkStore$2;
.super Ljava/lang/Object;
.source "BookmarkStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/media/BookmarkStore;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/media/BookmarkStore;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/netflix/mediaclient/media/BookmarkStore$2;->this$0:Lcom/netflix/mediaclient/media/BookmarkStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 140
    const-class v1, Lcom/netflix/mediaclient/media/BookmarkStore;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore$2;->this$0:Lcom/netflix/mediaclient/media/BookmarkStore;

    .line 142
    invoke-static {v0}, Lcom/netflix/mediaclient/media/BookmarkStore;->access$100(Lcom/netflix/mediaclient/media/BookmarkStore;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/media/BookmarkStore$2;->this$0:Lcom/netflix/mediaclient/media/BookmarkStore;

    invoke-static {v3}, Lcom/netflix/mediaclient/media/BookmarkStore;->access$200(Lcom/netflix/mediaclient/media/BookmarkStore;)Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 141
    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/FileUtils;->writeBytesToFile(Ljava/lang/String;[B)Z

    move-result v0

    .line 143
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    const-string/jumbo v2, "nf_BookmarkStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBookmark saving to file result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    monitor-exit v1

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
