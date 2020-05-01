.class Lo/WifiBatteryStats$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WifiBatteryStats;->b(Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;Lcom/netflix/binder/generated/BinderApplicationModule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lo/ZygoteProcess$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/WifiBatteryStats;


# direct methods
.method constructor <init>(Lo/WifiBatteryStats;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lo/WifiBatteryStats$5;->a:Lo/WifiBatteryStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e()Lo/ZygoteProcess$ActionBar;
    .locals 3

    .line 434
    new-instance v0, Lo/WifiBatteryStats$Activity;

    iget-object v1, p0, Lo/WifiBatteryStats$5;->a:Lo/WifiBatteryStats;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/WifiBatteryStats$Activity;-><init>(Lo/WifiBatteryStats;Lo/WifiBatteryStats$5;)V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 431
    invoke-virtual {p0}, Lo/WifiBatteryStats$5;->e()Lo/ZygoteProcess$ActionBar;

    move-result-object v0

    return-object v0
.end method
