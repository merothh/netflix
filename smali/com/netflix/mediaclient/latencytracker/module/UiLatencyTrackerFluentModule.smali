.class public final Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljavax/inject/Provider;)Lo/ViewSwitcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lo/g;",
            ">;)",
            "Lo/ViewSwitcher;"
        }
    .end annotation

    const-string v0, "implProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lo/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "implProvider.get()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/ViewSwitcher;

    return-object p1

    .line 42
    :cond_0
    new-instance p1, Lo/b;

    invoke-direct {p1}, Lo/b;-><init>()V

    check-cast p1, Lo/ViewSwitcher;

    return-object p1
.end method
