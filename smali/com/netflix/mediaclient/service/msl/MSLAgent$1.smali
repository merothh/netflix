.class Lcom/netflix/mediaclient/service/msl/MSLAgent$1;
.super Ljava/lang/Object;
.source "MSLAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$DrmReadyCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/msl/MSLAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/msl/MSLAgent;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent$1;->this$0:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drmError(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 83
    const-string/jumbo v0, "nf_msl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to create MSL, disable it! Status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent$1;->this$0:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->access$102(Lcom/netflix/mediaclient/service/msl/MSLAgent;Z)Z

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent$1;->this$0:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->access$300(Lcom/netflix/mediaclient/service/msl/MSLAgent;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 86
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "MSLAgent::doInit done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method public drmReady()V
    .locals 2

    .prologue
    .line 75
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "Crypto is created, MSL is ready to proceed. Enable it!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent$1;->this$0:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->access$102(Lcom/netflix/mediaclient/service/msl/MSLAgent;Z)Z

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent$1;->this$0:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->access$200(Lcom/netflix/mediaclient/service/msl/MSLAgent;)V

    .line 78
    return-void
.end method

.method public drmResoureReclaimed()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method
