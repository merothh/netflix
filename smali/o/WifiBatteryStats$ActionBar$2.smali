.class Lo/WifiBatteryStats$ActionBar$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WifiBatteryStats$ActionBar;->b(Lcom/netflix/mediaclient/acquisition2/di/SignupModule;Lcom/netflix/binder/generated/BinderActivityModule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lo/HealthStatsParceler$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/WifiBatteryStats$ActionBar;


# direct methods
.method constructor <init>(Lo/WifiBatteryStats$ActionBar;)V
    .locals 0

    .line 688
    iput-object p1, p0, Lo/WifiBatteryStats$ActionBar$2;->b:Lo/WifiBatteryStats$ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e()Lo/HealthStatsParceler$TaskDescription;
    .locals 3

    .line 691
    new-instance v0, Lo/WifiBatteryStats$ActionBar$Application;

    iget-object v1, p0, Lo/WifiBatteryStats$ActionBar$2;->b:Lo/WifiBatteryStats$ActionBar;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/WifiBatteryStats$ActionBar$Application;-><init>(Lo/WifiBatteryStats$ActionBar;Lo/WifiBatteryStats$5;)V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 688
    invoke-virtual {p0}, Lo/WifiBatteryStats$ActionBar$2;->e()Lo/HealthStatsParceler$TaskDescription;

    move-result-object v0

    return-object v0
.end method
