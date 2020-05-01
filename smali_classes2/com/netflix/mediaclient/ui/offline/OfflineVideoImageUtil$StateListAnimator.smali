.class public final Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$StateListAnimator;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "OfflineVideoImageUtil"

    .line 29
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lo/CellularBatteryStats;->e:Lo/CellularBatteryStats;

    const-class v1, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$Activity;

    invoke-virtual {v0, p1, v1}, Lo/CellularBatteryStats;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$Activity;

    .line 33
    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil$Activity;->l()Lcom/netflix/mediaclient/ui/offline/OfflineVideoImageUtil;

    move-result-object p1

    return-object p1
.end method
