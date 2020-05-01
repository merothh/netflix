.class Lo/Am$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Am;


# direct methods
.method constructor <init>(Lo/Am;)V
    .locals 0

    .line 2292
    iput-object p1, p0, Lo/Am$3;->d:Lo/Am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 2295
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ServiceConnected with IBinder: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServiceManager"

    invoke-static {v0, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    check-cast p2, Lo/bM$TaskDescription;

    .line 2297
    iget-object p1, p0, Lo/Am$3;->d:Lo/Am;

    invoke-virtual {p2}, Lo/bM$TaskDescription;->b()Lo/zL;

    move-result-object v0

    invoke-static {p1, v0}, Lo/Am;->e(Lo/Am;Lo/zL;)Lo/zL;

    .line 2298
    iget-object p1, p0, Lo/Am$3;->d:Lo/Am;

    invoke-virtual {p2}, Lo/bM$TaskDescription;->b()Lo/zL;

    move-result-object p2

    invoke-static {p1, p2}, Lo/Am;->d(Lo/Am;Lo/zL;)Lo/zL;

    .line 2299
    iget-object p1, p0, Lo/Am$3;->d:Lo/Am;

    invoke-static {p1}, Lo/Am;->b(Lo/Am;)Lo/Am$ActionBar;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2300
    iget-object p1, p0, Lo/Am$3;->d:Lo/Am;

    new-instance p2, Lo/Am$ActionBar;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lo/Am$ActionBar;-><init>(Lo/Am;Lo/Am$3;)V

    invoke-static {p1, p2}, Lo/Am;->c(Lo/Am;Lo/Am$ActionBar;)Lo/Am$ActionBar;

    .line 2302
    :cond_0
    iget-object p1, p0, Lo/Am$3;->d:Lo/Am;

    invoke-static {p1}, Lo/Am;->d(Lo/Am;)Lo/zL;

    move-result-object p1

    iget-object p2, p0, Lo/Am$3;->d:Lo/Am;

    invoke-static {p2}, Lo/Am;->b(Lo/Am;)Lo/Am$ActionBar;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/zL;->b(Lo/zK;)V

    .line 2303
    iget-object p1, p0, Lo/Am$3;->d:Lo/Am;

    invoke-static {p1}, Lo/Am;->e(Lo/Am;)I

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string p1, "ServiceManager"

    const-string v0, "onServiceDisconnected"

    .line 2308
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    iget-object p1, p0, Lo/Am$3;->d:Lo/Am;

    invoke-static {p1}, Lo/Am;->c(Lo/Am;)Lo/zT;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2310
    iget-object p1, p0, Lo/Am$3;->d:Lo/Am;

    invoke-static {p1}, Lo/Am;->c(Lo/Am;)Lo/zT;

    move-result-object p1

    iget-object v1, p0, Lo/Am$3;->d:Lo/Am;

    sget-object v2, Lo/LegacyErrorStrings;->ag:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v1, v2}, Lo/zT;->onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 2311
    iget-object p1, p0, Lo/Am$3;->d:Lo/Am;

    invoke-static {p1, v0}, Lo/Am;->c(Lo/Am;Lo/zT;)Lo/zT;

    .line 2314
    :cond_0
    iget-object p1, p0, Lo/Am$3;->d:Lo/Am;

    invoke-static {p1, v0}, Lo/Am;->d(Lo/Am;Lo/zL;)Lo/zL;

    .line 2315
    iget-object p1, p0, Lo/Am$3;->d:Lo/Am;

    invoke-static {p1, v0}, Lo/Am;->e(Lo/Am;Lo/zL;)Lo/zL;

    .line 2316
    iget-object p1, p0, Lo/Am$3;->d:Lo/Am;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/Am;->a(Lo/Am;Z)Z

    .line 2317
    iget-object p1, p0, Lo/Am$3;->d:Lo/Am;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lo/Am;->b(Lo/Am;I)I

    .line 2318
    iget-object p1, p0, Lo/Am$3;->d:Lo/Am;

    invoke-static {p1}, Lo/Am;->g(Lo/Am;)I

    return-void
.end method
