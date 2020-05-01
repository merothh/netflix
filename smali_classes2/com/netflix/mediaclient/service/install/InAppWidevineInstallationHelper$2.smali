.class Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/if$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper$2;->c:Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper$2;->c:Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;->c:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->b(Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper$2;->c:Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;->d:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;->b(Lcom/netflix/mediaclient/service/install/InAppWidevineInstallationHelper;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackFallbackStatus;)V

    return-void
.end method
