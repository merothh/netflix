.class public final Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljavax/inject/Provider;)Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lo/a;",
            ">;)",
            "Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;"
        }
    .end annotation

    const-string v0, "implProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lo/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "implProvider.get()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    return-object p1

    .line 30
    :cond_0
    new-instance p1, Lo/ZoomControls;

    invoke-direct {p1}, Lo/ZoomControls;-><init>()V

    check-cast p1, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    return-object p1
.end method
