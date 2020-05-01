.class final Lo/WifiBatteryStats$ActionBar$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/HealthStatsWriter$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/WifiBatteryStats$ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StateListAnimator"
.end annotation


# instance fields
.field final synthetic c:Lo/WifiBatteryStats$ActionBar;


# direct methods
.method private constructor <init>(Lo/WifiBatteryStats$ActionBar;)V
    .locals 0

    .line 1505
    iput-object p1, p0, Lo/WifiBatteryStats$ActionBar$StateListAnimator;->c:Lo/WifiBatteryStats$ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/WifiBatteryStats$ActionBar;Lo/WifiBatteryStats$5;)V
    .locals 0

    .line 1505
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$StateListAnimator;-><init>(Lo/WifiBatteryStats$ActionBar;)V

    return-void
.end method


# virtual methods
.method public b()Lo/HealthStatsWriter;
    .locals 3

    .line 1518
    new-instance v0, Lo/WifiBatteryStats$ActionBar$ActionBar;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$StateListAnimator;->c:Lo/WifiBatteryStats$ActionBar;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/WifiBatteryStats$ActionBar$ActionBar;-><init>(Lo/WifiBatteryStats$ActionBar;Lo/WifiBatteryStats$5;)V

    return-object v0
.end method

.method public c(Lcom/netflix/binder/generated/BinderViewModule;)Lo/WifiBatteryStats$ActionBar$StateListAnimator;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1512
    invoke-static {p1}, Lo/akb;->e(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public synthetic d(Lcom/netflix/binder/generated/BinderViewModule;)Lo/HealthStatsWriter$TaskDescription;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1505
    invoke-virtual {p0, p1}, Lo/WifiBatteryStats$ActionBar$StateListAnimator;->c(Lcom/netflix/binder/generated/BinderViewModule;)Lo/WifiBatteryStats$ActionBar$StateListAnimator;

    move-result-object p1

    return-object p1
.end method
