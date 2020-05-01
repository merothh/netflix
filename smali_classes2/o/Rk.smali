.class public final Lo/Rk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/nV;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Rk$ActionBar;
    }
.end annotation


# static fields
.field public static final e:Lo/Rk$ActionBar;


# instance fields
.field private final c:Lo/Rr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Rk$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Rk$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/Rk;->e:Lo/Rk$ActionBar;

    return-void
.end method

.method public constructor <init>(Lo/Rr;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Rk;->c:Lo/Rr;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "playableId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "status"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-object p1, Lo/Rk;->e:Lo/Rk$ActionBar;

    check-cast p1, Lo/MessagePdu;

    .line 77
    iget-object p1, p0, Lo/Rk;->c:Lo/Rr;

    invoke-virtual {p1}, Lo/Rr;->L()V

    return-void
.end method

.method public a(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    const-string v0, "playableIdList"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "status"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lo/Rk;->c:Lo/Rr;

    invoke-virtual {p1}, Lo/Rr;->L()V

    return-void
.end method

.method public a(Lo/Bi;I)V
    .locals 1

    const-string v0, "offlinePlayableViewData"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lo/Rk;->c:Lo/Rr;

    invoke-virtual {v0, p1, p2}, Lo/Rr;->e(Lo/Bi;I)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lo/Rk;->c:Lo/Rr;

    invoke-virtual {v0}, Lo/Rr;->l()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public b(Z)V
    .locals 1

    .line 67
    iget-object v0, p0, Lo/Rk;->c:Lo/Rr;

    invoke-virtual {v0, p1}, Lo/Rr;->c(Z)V

    return-void
.end method

.method public c(Lo/Bi;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "offlinePlayableViewData"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "status"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lo/Rk;->c:Lo/Rr;

    invoke-virtual {p1}, Lo/Rr;->L()V

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lo/Rk;->c:Lo/Rr;

    invoke-virtual {p1}, Lo/Rr;->L()V

    return-void
.end method

.method public d(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 0

    const-string p3, "playableId"

    invoke-static {p1, p3}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "status"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lo/Rk;->c:Lo/Rr;

    invoke-virtual {p1}, Lo/Rr;->L()V

    return-void
.end method

.method public d(Lo/Bi;)V
    .locals 1

    const-string v0, "offlinePlayableViewData"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d(Lo/Bi;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "offlinePlayableViewData"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "status"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lo/Rk;->c:Lo/Rr;

    invoke-virtual {p1}, Lo/Rr;->L()V

    return-void
.end method

.method public d(Lo/Bi;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 1

    const-string v0, "offlinePlayableViewData"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "stopReason"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lo/Rk;->c:Lo/Rr;

    invoke-virtual {p1}, Lo/Rr;->L()V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lo/Rk;->c:Lo/Rr;

    invoke-virtual {p1}, Lo/Rr;->L()V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "playableId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public e(Lo/Bi;)V
    .locals 1

    const-string v0, "offlinePlayableViewData"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lo/Rk;->c:Lo/Rr;

    invoke-virtual {p1}, Lo/Rr;->L()V

    return-void
.end method
