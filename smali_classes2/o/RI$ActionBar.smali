.class public final Lo/RI$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RI;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/RI;


# direct methods
.method constructor <init>(Lo/RI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    iput-object p1, p0, Lo/RI$ActionBar;->d:Lo/RI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/List;)V
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
    iget-object v0, p0, Lo/RI$ActionBar;->d:Lo/RI;

    invoke-virtual {v0}, Lo/RI;->ab_()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    const-string v1, "requireNetflixActivity()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {v0}, Lo/Am;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/Am;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/Am;->q()Lo/nS;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-static {v0}, Lo/adR;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/BC;

    move-result-object v0

    .line 21
    iget-object v2, p0, Lo/RI$ActionBar;->d:Lo/RI;

    invoke-virtual {v2}, Lo/RI;->getFragmentManager()Lo/SerializablePermission;

    move-result-object v2

    .line 22
    new-instance v3, Lcom/netflix/mediaclient/ui/offline/OfflineTopFragmentV2_Ab16272$controllerListener$1$onOptInSetupSelected$1;

    invoke-direct {v3, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineTopFragmentV2_Ab16272$controllerListener$1$onOptInSetupSelected$1;-><init>(Ljava/util/List;)V

    check-cast v3, Lo/alO;

    .line 18
    invoke-static {v0, v1, v2, v3}, Lo/NfcA;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lo/alO;)Ljava/lang/Object;

    return-void
.end method
