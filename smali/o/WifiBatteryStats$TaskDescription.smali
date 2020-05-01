.class public final Lo/WifiBatteryStats$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/WifiBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# instance fields
.field private a:Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;

.field private b:Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;

.field private c:Lcom/netflix/binder/generated/BinderApplicationModule;

.field private e:Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/WifiBatteryStats$5;)V
    .locals 0

    .line 523
    invoke-direct {p0}, Lo/WifiBatteryStats$TaskDescription;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/netflix/binder/generated/BinderSingletonComponent;
    .locals 8

    .line 557
    iget-object v0, p0, Lo/WifiBatteryStats$TaskDescription;->a:Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;

    invoke-direct {v0}, Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;-><init>()V

    iput-object v0, p0, Lo/WifiBatteryStats$TaskDescription;->a:Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;

    .line 560
    :cond_0
    iget-object v0, p0, Lo/WifiBatteryStats$TaskDescription;->b:Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;

    if-nez v0, :cond_1

    .line 561
    new-instance v0, Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;

    invoke-direct {v0}, Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;-><init>()V

    iput-object v0, p0, Lo/WifiBatteryStats$TaskDescription;->b:Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;

    .line 563
    :cond_1
    iget-object v0, p0, Lo/WifiBatteryStats$TaskDescription;->e:Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;

    if-nez v0, :cond_2

    .line 564
    new-instance v0, Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;

    invoke-direct {v0}, Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;-><init>()V

    iput-object v0, p0, Lo/WifiBatteryStats$TaskDescription;->e:Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;

    .line 566
    :cond_2
    iget-object v0, p0, Lo/WifiBatteryStats$TaskDescription;->c:Lcom/netflix/binder/generated/BinderApplicationModule;

    const-class v1, Lcom/netflix/binder/generated/BinderApplicationModule;

    invoke-static {v0, v1}, Lo/akb;->e(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 567
    new-instance v0, Lo/WifiBatteryStats;

    iget-object v3, p0, Lo/WifiBatteryStats$TaskDescription;->a:Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;

    iget-object v4, p0, Lo/WifiBatteryStats$TaskDescription;->b:Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;

    iget-object v5, p0, Lo/WifiBatteryStats$TaskDescription;->e:Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;

    iget-object v6, p0, Lo/WifiBatteryStats$TaskDescription;->c:Lcom/netflix/binder/generated/BinderApplicationModule;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lo/WifiBatteryStats;-><init>(Lcom/netflix/mediaclient/acquisition2/di/SignupSingletonModule;Lcom/netflix/mediaclient/latencytracker/module/UiLatencyMarkerModule;Lcom/netflix/mediaclient/latencytracker/module/UiLatencyTrackerFluentModule;Lcom/netflix/binder/generated/BinderApplicationModule;Lo/WifiBatteryStats$5;)V

    return-object v0
.end method

.method public b(Lcom/netflix/binder/generated/BinderApplicationModule;)Lo/WifiBatteryStats$TaskDescription;
    .locals 0

    .line 552
    invoke-static {p1}, Lo/akb;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/binder/generated/BinderApplicationModule;

    iput-object p1, p0, Lo/WifiBatteryStats$TaskDescription;->c:Lcom/netflix/binder/generated/BinderApplicationModule;

    return-object p0
.end method
