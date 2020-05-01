.class Lo/lg$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/lg;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic d:Lo/lg;


# direct methods
.method constructor <init>(Lo/lg;Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lo/lg$9;->d:Lo/lg;

    iput-object p2, p0, Lo/lg$9;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 173
    iget-object v0, p0, Lo/lg$9;->d:Lo/lg;

    invoke-static {v0}, Lo/lg;->c(Lo/lg;)Z

    move-result v0

    const-string v1, "MdxStackCaf"

    if-nez v0, :cond_0

    const-string v0, "launchNetflix - haven\'t finished init yet - unable to launch Netflix"

    .line 174
    invoke-static {v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lo/lg$9;->d:Lo/lg;

    invoke-static {v0}, Lo/lg;->d(Lo/lg;)Lo/kN;

    move-result-object v0

    iget-object v2, p0, Lo/lg$9;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lo/kN;->b(Ljava/lang/String;)Lo/Object$LoaderManager;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 180
    iget-object v3, p0, Lo/lg$9;->b:Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v2, "launchNetflix - ERROR - can\'t find RouteInfo for uuid: %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 185
    :cond_1
    iget-object v2, p0, Lo/lg$9;->d:Lo/lg;

    invoke-static {v2}, Lo/lg;->e(Lo/lg;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/CastContext;->getSessionManager()Lcom/google/android/gms/cast/framework/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/SessionManager;->getCurrentCastSession()Lcom/google/android/gms/cast/framework/CastSession;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 187
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/CastSession;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "MdxStackCaf launchNetflix - session already connected"

    .line 188
    invoke-static {v1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lo/lg$9;->d:Lo/lg;

    invoke-static {v0}, Lo/lg;->h(Lo/lg;)V

    return-void

    .line 194
    :cond_2
    invoke-virtual {v0}, Lo/Object$LoaderManager;->s()V

    return-void
.end method
