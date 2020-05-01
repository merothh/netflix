.class public final Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;
    }
.end annotation


# instance fields
.field private final c:Landroid/os/Handler;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Af;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->e:Ljava/util/List;

    .line 24
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic b(Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;)Ljava/util/List;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->e:Ljava/util/List;

    return-object p0
.end method

.method private e(Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;Ljava/lang/Object;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->c:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$4;-><init>(Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/media/PlayerManifestData;)V
    .locals 1

    .line 29
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;->b:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->e(Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V
    .locals 1

    .line 44
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;->h:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->e(Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;Ljava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 55
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;->d:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->e(Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lo/Af;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->c:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$5;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$5;-><init>(Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;Lo/Af;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()V
    .locals 2

    .line 34
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;->a:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->e(Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;Ljava/lang/Object;)V

    return-void
.end method

.method public d(Lo/Af;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->c:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$3;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$3;-><init>(Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;Lo/Af;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 50
    sget-object p1, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;->c:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->e(Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;Ljava/lang/Object;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 39
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;->e:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->e(Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Lo/Af;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 70
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;->f:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->e(Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->c:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$1;-><init>(Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;Lo/Af;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
