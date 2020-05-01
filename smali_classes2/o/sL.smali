.class public abstract Lo/sL;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lo/sL;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lo/sl$ActionBar;

    invoke-direct {v0, p0}, Lo/sl$ActionBar;-><init>(Lcom/google/gson/Gson;)V

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lo/sl$ActionBar;->a(Ljava/util/Map;)Lo/sl$ActionBar;

    move-result-object p0

    const-wide/16 v0, -0x1

    .line 22
    invoke-virtual {p0, v0, v1}, Lo/sl$ActionBar;->d(J)Lo/sl$ActionBar;

    move-result-object p0

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lo/sl$ActionBar;->c(Ljava/util/List;)Lo/sl$ActionBar;

    move-result-object p0

    .line 24
    invoke-virtual {p0, v0, v1}, Lo/sl$ActionBar;->e(J)Lo/sl$ActionBar;

    move-result-object p0

    .line 25
    invoke-virtual {p0, v0, v1}, Lo/sl$ActionBar;->b(J)Lo/sl$ActionBar;

    move-result-object p0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;->unknownTransitionHint:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;

    .line 26
    invoke-virtual {p0, v0}, Lo/sl$ActionBar;->e(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;)Lo/sl$ActionBar;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a()J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "startTimeMs"
    .end annotation
.end method

.method public abstract b()J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "endTimeMs"
    .end annotation
.end method

.method public abstract c()Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "viewableId"
    .end annotation
.end method

.method public abstract d()Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transitionDelayZones"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract e()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "defaultNext"
    .end annotation
.end method

.method public abstract f()J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "earliestSkipRequestOffset"
    .end annotation
.end method

.method public abstract h()Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "next"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/sy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract i()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap$TransitionHintType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transitionHint"
    .end annotation
.end method
