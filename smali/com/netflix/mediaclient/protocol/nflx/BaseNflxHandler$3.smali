.class Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->b()Lo/aeb$StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic e:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$3;->e:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;

    iput-object p2, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "NflxHandler"

    const-string v1, "Resolving tiny URL in background"

    .line 99
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$3;->e:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$3;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->a:Ljava/util/Map;

    const-string v3, "targetid"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lo/aeb;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$3;->e:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;

    iget-object v3, v3, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->a:Ljava/util/Map;

    invoke-static {v3}, Lo/aeb;->e(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
