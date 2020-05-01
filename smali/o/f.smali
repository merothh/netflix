.class public final Lo/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lo/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;",
            "Ljavax/inject/Provider<",
            "Lo/a;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lo/f;->b:Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;

    .line 22
    iput-object p2, p0, Lo/f;->a:Ljavax/inject/Provider;

    return-void
.end method

.method public static d(Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;Ljavax/inject/Provider;)Lo/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;",
            "Ljavax/inject/Provider<",
            "Lo/a;",
            ">;)",
            "Lo/f;"
        }
    .end annotation

    .line 32
    new-instance v0, Lo/f;

    invoke-direct {v0, p0, p1}, Lo/f;-><init>(Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static e(Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;Ljavax/inject/Provider;)Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;",
            "Ljavax/inject/Provider<",
            "Lo/a;",
            ">;)",
            "Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;"
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;->d(Ljavax/inject/Provider;)Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lo/akb;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    return-object p0
.end method


# virtual methods
.method public c()Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;
    .locals 2

    .line 27
    iget-object v0, p0, Lo/f;->b:Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;

    iget-object v1, p0, Lo/f;->a:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lo/f;->e(Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;Ljavax/inject/Provider;)Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lo/f;->c()Lcom/netflix/mediaclient/latencytracker/api/UiLatencyMarker;

    move-result-object v0

    return-object v0
.end method
