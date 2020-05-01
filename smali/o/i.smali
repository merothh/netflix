.class public final Lo/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/ViewSwitcher;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lo/g;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;",
            "Ljavax/inject/Provider<",
            "Lo/g;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lo/i;->d:Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;

    .line 22
    iput-object p2, p0, Lo/i;->b:Ljavax/inject/Provider;

    return-void
.end method

.method public static c(Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;Ljavax/inject/Provider;)Lo/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;",
            "Ljavax/inject/Provider<",
            "Lo/g;",
            ">;)",
            "Lo/i;"
        }
    .end annotation

    .line 32
    new-instance v0, Lo/i;

    invoke-direct {v0, p0, p1}, Lo/i;-><init>(Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static e(Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;Ljavax/inject/Provider;)Lo/ViewSwitcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;",
            "Ljavax/inject/Provider<",
            "Lo/g;",
            ">;)",
            "Lo/ViewSwitcher;"
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;->a(Ljavax/inject/Provider;)Lo/ViewSwitcher;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lo/akb;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/ViewSwitcher;

    return-object p0
.end method


# virtual methods
.method public d()Lo/ViewSwitcher;
    .locals 2

    .line 27
    iget-object v0, p0, Lo/i;->d:Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;

    iget-object v1, p0, Lo/i;->b:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lo/i;->e(Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;Ljavax/inject/Provider;)Lo/ViewSwitcher;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lo/i;->d()Lo/ViewSwitcher;

    move-result-object v0

    return-object v0
.end method
