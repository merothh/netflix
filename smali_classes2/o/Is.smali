.class public final Lo/Is;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajW;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajW<",
        "Lcom/netflix/mediaclient/ui/home/HomeActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Lcom/netflix/mediaclient/ui/home/HomeActivity;Lcom/google/common/base/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/home/HomeActivity;",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->tvDiscovery:Lcom/google/common/base/Optional;

    return-void
.end method

.method public static b(Lcom/netflix/mediaclient/ui/home/HomeActivity;Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity;->latencyMarker:Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    return-void
.end method
