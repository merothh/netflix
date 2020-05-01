.class final Lo/WifiBatteryStats$ActionBar$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/HealthStatsParceler$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/WifiBatteryStats$ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Application"
.end annotation


# instance fields
.field private a:Lcom/netflix/binder/generated/BinderFragmentModule;

.field final synthetic d:Lo/WifiBatteryStats$ActionBar;


# direct methods
.method private constructor <init>(Lo/WifiBatteryStats$ActionBar;)V
    .locals 0

    .line 792
    iput-object p1, p0, Lo/WifiBatteryStats$ActionBar$Application;->d:Lo/WifiBatteryStats$ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/WifiBatteryStats$ActionBar;Lo/WifiBatteryStats$5;)V
    .locals 0

    .line 792
    invoke-direct {p0, p1}, Lo/WifiBatteryStats$ActionBar$Application;-><init>(Lo/WifiBatteryStats$ActionBar;)V

    return-void
.end method


# virtual methods
.method public synthetic c(Lcom/netflix/binder/generated/BinderFragmentModule;)Lo/HealthStatsParceler$TaskDescription;
    .locals 0

    .line 792
    invoke-virtual {p0, p1}, Lo/WifiBatteryStats$ActionBar$Application;->d(Lcom/netflix/binder/generated/BinderFragmentModule;)Lo/WifiBatteryStats$ActionBar$Application;

    move-result-object p1

    return-object p1
.end method

.method public c()Lo/HealthStatsParceler;
    .locals 4

    .line 803
    iget-object v0, p0, Lo/WifiBatteryStats$ActionBar$Application;->a:Lcom/netflix/binder/generated/BinderFragmentModule;

    const-class v1, Lcom/netflix/binder/generated/BinderFragmentModule;

    invoke-static {v0, v1}, Lo/akb;->e(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 804
    new-instance v0, Lo/WifiBatteryStats$ActionBar$Activity;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$Application;->d:Lo/WifiBatteryStats$ActionBar;

    iget-object v2, p0, Lo/WifiBatteryStats$ActionBar$Application;->a:Lcom/netflix/binder/generated/BinderFragmentModule;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lo/WifiBatteryStats$ActionBar$Activity;-><init>(Lo/WifiBatteryStats$ActionBar;Lcom/netflix/binder/generated/BinderFragmentModule;Lo/WifiBatteryStats$5;)V

    return-object v0
.end method

.method public d(Lcom/netflix/binder/generated/BinderFragmentModule;)Lo/WifiBatteryStats$ActionBar$Application;
    .locals 0

    .line 797
    invoke-static {p1}, Lo/akb;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/binder/generated/BinderFragmentModule;

    iput-object p1, p0, Lo/WifiBatteryStats$ActionBar$Application;->a:Lcom/netflix/binder/generated/BinderFragmentModule;

    return-object p0
.end method
