.class Lcom/netflix/mediaclient/NetflixApplication$2;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/NetflixApplication;->F()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/NetflixApplication;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/NetflixApplication;)V
    .locals 0

    .line 870
    iput-object p1, p0, Lcom/netflix/mediaclient/NetflixApplication$2;->b:Lcom/netflix/mediaclient/NetflixApplication;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 873
    iget-object v0, p0, Lcom/netflix/mediaclient/NetflixApplication$2;->b:Lcom/netflix/mediaclient/NetflixApplication;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/NetflixApplication;->c(Lcom/netflix/mediaclient/NetflixApplication;Z)Z

    .line 874
    sget-object v0, Lo/CellularBatteryStats;->e:Lo/CellularBatteryStats;

    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netflix/mediaclient/NetflixApplication$StateListAnimator;

    invoke-virtual {v0, v1, v2}, Lo/CellularBatteryStats;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/NetflixApplication$StateListAnimator;

    .line 875
    invoke-interface {v0}, Lcom/netflix/mediaclient/NetflixApplication$StateListAnimator;->g()Lo/Jp;

    move-result-object v0

    .line 876
    invoke-virtual {v0}, Lo/Jp;->b()V

    return-void
.end method
