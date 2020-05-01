.class Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$2;
.super Ljava/lang/Object;
.source "PdsDownloadSessionManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$ManifestCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$2;->this$0:Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManifestFetched(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$2;->this$0:Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->access$100(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;)V

    .line 131
    return-void
.end method
