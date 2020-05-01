.class Lo/nQ$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nQ;-><init>(Landroid/content/Context;Lo/pM;Lo/cz;Lcom/netflix/mediaclient/service/user/UserAgent;Lo/iu;Lo/H;Lcom/netflix/mediaclient/service/NetflixPowerManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/nQ;


# direct methods
.method constructor <init>(Lo/nQ;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lo/nQ$4;->d:Lo/nQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 188
    iget-object v0, p0, Lo/nQ$4;->d:Lo/nQ;

    invoke-static {v0}, Lo/nQ;->e(Lo/nQ;)Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;

    move-result-object v0

    iget-object v1, p0, Lo/nQ$4;->d:Lo/nQ;

    invoke-static {v1}, Lo/nQ;->a(Lo/nQ;)Lo/pa;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface;->d(Lo/pa;)Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistryInterface$RegistryState;

    return-void
.end method
