.class Lo/rb$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/rb;->onEvent(Lcom/netflix/mediaclient/drm/NetflixMediaDrm;[BII[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/rb;

.field final synthetic e:[B


# direct methods
.method constructor <init>(Lo/rb;[B)V
    .locals 0

    .line 359
    iput-object p1, p0, Lo/rb$5;->a:Lo/rb;

    iput-object p2, p0, Lo/rb$5;->e:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "exception trying to renew %s"

    const-string v1, "NfDrmManager_MediaDrmController"

    .line 362
    iget-object v2, p0, Lo/rb$5;->a:Lo/rb;

    iget-object v3, p0, Lo/rb$5;->e:[B

    invoke-virtual {v2, v3}, Lo/rb;->a([B)Lo/rp;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 365
    :try_start_0
    invoke-interface {v2}, Lo/rp;->f()V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    .line 378
    invoke-static {v1, v0, v4}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :catch_1
    move-exception v2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    .line 372
    invoke-static {v1, v0, v4}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method
