.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;
.super Ljava/lang/Object;
.source "OfflineAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCompletedSuccess(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V
    .locals 4

    .prologue
    .line 161
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const-string/jumbo v1, "nf_offlineAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDownloadCompletedSuccess playableId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 166
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    const-string/jumbo v1, "nf_offlineAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handling onDownloadCompletedSuccess playableId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v1, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$400(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    .line 170
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->onDownloadedSuccessfully(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 172
    return-void
.end method

.method public onInitialized(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 142
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInitialized playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$000(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 146
    return-void
.end method

.method public onLicenseDeleteSuccessfully(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$700(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry;->removeFromDeletedList(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayablePersistentData;)V

    .line 208
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;->requestSaveToRegistry()V

    .line 209
    return-void
.end method

.method public onNetworkError(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 150
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    const-string/jumbo v1, "nf_offlineAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onNetworkError playableId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 155
    const-string/jumbo v1, "nf_offlineAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handling onNetworkError playableId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$200(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->onNetworkError(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public onProgress(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;)V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPercentageDownloaded()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$600(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;I)V

    .line 177
    return-void
.end method

.method public onStorageError(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 186
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStorageError status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 190
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$200(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->onStorageError()V

    .line 192
    return-void
.end method

.method public onUnRecoverableError(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 196
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const-string/jumbo v0, "nf_offlineAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnRecoverableError playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 200
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$200(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V

    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$300(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)Lcom/netflix/mediaclient/service/offline/agent/DownloadController;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/netflix/mediaclient/service/offline/agent/DownloadController;->onUnRecoverableError(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 202
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$500(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 203
    return-void
.end method

.method public requestSaveToRegistry()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;->access$100(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;)V

    .line 182
    return-void
.end method
