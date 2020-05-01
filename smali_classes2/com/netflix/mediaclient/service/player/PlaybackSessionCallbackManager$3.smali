.class Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->d(Lo/Af;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;

.field final synthetic d:Lo/Af;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;Lo/Af;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$3;->a:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$3;->d:Lo/Af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$3;->a:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->b(Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$3;->d:Lo/Af;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
