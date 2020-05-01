.class public abstract Lo/sy;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lo/sy;",
            ">;"
        }
    .end annotation

    .line 14
    new-instance v0, Lo/sn$TaskDescription;

    invoke-direct {v0, p0}, Lo/sn$TaskDescription;-><init>(Lcom/google/gson/Gson;)V

    const-wide/16 v1, -0x1

    .line 15
    invoke-virtual {v0, v1, v2}, Lo/sn$TaskDescription;->c(J)Lo/sn$TaskDescription;

    move-result-object p0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;->unknownTransitionHint:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    .line 16
    invoke-virtual {p0, v0}, Lo/sn$TaskDescription;->b(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;)Lo/sn$TaskDescription;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "weight"
    .end annotation
.end method

.method public abstract b()J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "earliestSkipRequestOffset"
    .end annotation
.end method

.method public abstract e()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transitionHint"
    .end annotation
.end method
