.class Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$1;
.super Ljava/lang/Object;
.source "PdsDownloadSessionManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$ManifestCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;

.field final synthetic val$percentageDownloaded:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$1;->this$0:Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;

    iput p2, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$1;->val$percentageDownloaded:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManifestFetched(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;)V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$1;->this$0:Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;

    iget v1, p0, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager$1;->val$percentageDownloaded:I

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;->access$000(Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSessionManager;Lcom/netflix/mediaclient/service/pdslogging/PdsDownloadSession;I)V

    return-void
.end method
