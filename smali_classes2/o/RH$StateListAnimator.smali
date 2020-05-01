.class public final Lo/RH$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RH;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/RH;


# direct methods
.method constructor <init>(Lo/RH;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    iput-object p1, p0, Lo/RH$StateListAnimator;->b:Lo/RH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "boxartList"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lo/RH$StateListAnimator;->b:Lo/RH;

    invoke-virtual {v0}, Lo/RH;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v0

    .line 16
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v1

    const-string v2, "BaseNetflixApp.getInstance()"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v1

    invoke-virtual {v1}, Lo/CameraPrewarmService;->i()Lo/nS;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lo/RH$StateListAnimator;->b:Lo/RH;

    invoke-virtual {v2}, Lo/RH;->getFragmentManager()Lo/SerializablePermission;

    move-result-object v2

    .line 18
    new-instance v3, Lcom/netflix/mediaclient/ui/offline/OfflineTopFragmentV2_Ab23255$controllerListener$1$onOptInSetupSelected$1;

    invoke-direct {v3, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineTopFragmentV2_Ab23255$controllerListener$1$onOptInSetupSelected$1;-><init>(Ljava/util/List;)V

    check-cast v3, Lo/alO;

    .line 14
    invoke-static {v0, v1, v2, v3}, Lo/NfcA;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lo/alO;)Ljava/lang/Object;

    return-void
.end method
