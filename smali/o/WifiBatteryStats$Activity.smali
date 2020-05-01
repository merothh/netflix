.class final Lo/WifiBatteryStats$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ZygoteProcess$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/WifiBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Activity"
.end annotation


# instance fields
.field private b:Lcom/netflix/binder/generated/BinderActivityModule;

.field final synthetic d:Lo/WifiBatteryStats;


# direct methods
.method private constructor <init>(Lo/WifiBatteryStats;)V
    .locals 0

    .line 571
    iput-object p1, p0, Lo/WifiBatteryStats$Activity;->d:Lo/WifiBatteryStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/WifiBatteryStats;Lo/WifiBatteryStats$5;)V
    .locals 0

    .line 571
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$Activity;-><init>(Lo/WifiBatteryStats;)V

    return-void
.end method


# virtual methods
.method public synthetic c(Lcom/netflix/binder/generated/BinderActivityModule;)Lo/ZygoteProcess$ActionBar;
    .locals 0

    .line 571
    invoke-virtual {p0, p1}, Lo/WifiBatteryStats$Activity;->d(Lcom/netflix/binder/generated/BinderActivityModule;)Lo/WifiBatteryStats$Activity;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/netflix/binder/generated/BinderActivityModule;)Lo/WifiBatteryStats$Activity;
    .locals 0

    .line 576
    invoke-static {p1}, Lo/akb;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/binder/generated/BinderActivityModule;

    iput-object p1, p0, Lo/WifiBatteryStats$Activity;->b:Lcom/netflix/binder/generated/BinderActivityModule;

    return-object p0
.end method

.method public e()Lo/ZygoteProcess;
    .locals 5

    .line 582
    iget-object v0, p0, Lo/WifiBatteryStats$Activity;->b:Lcom/netflix/binder/generated/BinderActivityModule;

    const-class v1, Lcom/netflix/binder/generated/BinderActivityModule;

    invoke-static {v0, v1}, Lo/akb;->e(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 583
    new-instance v0, Lo/WifiBatteryStats$ActionBar;

    iget-object v1, p0, Lo/WifiBatteryStats$Activity;->d:Lo/WifiBatteryStats;

    new-instance v2, Lcom/netflix/mediaclient/acquisition2/di/SignupModule;

    invoke-direct {v2}, Lcom/netflix/mediaclient/acquisition2/di/SignupModule;-><init>()V

    iget-object v3, p0, Lo/WifiBatteryStats$Activity;->b:Lcom/netflix/binder/generated/BinderActivityModule;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lo/WifiBatteryStats$ActionBar;-><init>(Lo/WifiBatteryStats;Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Lcom/netflix/binder/generated/BinderActivityModule;Lo/WifiBatteryStats$5;)V

    return-object v0
.end method
