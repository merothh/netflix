.class Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->e(Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

.field final synthetic d:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;Ljava/lang/Object;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$4;->d:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$4;->b:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$4;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$4;->d:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;->b(Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Af;

    if-eqz v1, :cond_0

    .line 104
    invoke-interface {v1}, Lo/Af;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    sget-object v2, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$2;->e:[I

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$4;->b:Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$ListenerType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 125
    :pswitch_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$4;->a:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 126
    invoke-interface {v1}, Lo/Af;->h()V

    goto :goto_0

    .line 122
    :pswitch_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$4;->a:Ljava/lang/Object;

    check-cast v2, Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;

    invoke-interface {v1, v2}, Lo/Af;->e(Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)V

    goto :goto_0

    .line 119
    :pswitch_2
    invoke-interface {v1}, Lo/Af;->e()V

    goto :goto_0

    .line 116
    :pswitch_3
    invoke-interface {v1}, Lo/Af;->b()V

    goto :goto_0

    .line 113
    :pswitch_4
    invoke-interface {v1}, Lo/Af;->c()V

    goto :goto_0

    .line 110
    :pswitch_5
    invoke-interface {v1}, Lo/Af;->a()V

    goto :goto_0

    .line 107
    :pswitch_6
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlaybackSessionCallbackManager$4;->a:Ljava/lang/Object;

    check-cast v2, Lcom/netflix/mediaclient/media/PlayerManifestData;

    invoke-interface {v1, v2}, Lo/Af;->a(Lcom/netflix/mediaclient/media/PlayerManifestData;)V

    goto :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
