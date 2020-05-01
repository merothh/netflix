.class Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$1;->b:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$1;->b:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->e(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;)Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;->d:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$1;->b:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->e(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;)Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;->e:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$PlayState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$1;->b:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->c(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;)V

    .line 489
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession$1;->b:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;

    const v1, 0xea60

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;->a(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlaySession;I)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "nf_pds_streaming_session"

    const-string v1, "ignore posting keepAlive - stop already sent"

    .line 485
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
