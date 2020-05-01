.class Lo/rb$1;
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
.field final synthetic b:[B

.field final synthetic c:Lo/rb;


# direct methods
.method constructor <init>(Lo/rb;[B)V
    .locals 0

    .line 386
    iput-object p1, p0, Lo/rb$1;->c:Lo/rb;

    iput-object p2, p0, Lo/rb$1;->b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 389
    iget-object v0, p0, Lo/rb$1;->c:Lo/rb;

    iget-object v1, p0, Lo/rb$1;->b:[B

    invoke-virtual {v0, v1}, Lo/rb;->a([B)Lo/rp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v1, p0, Lo/rb$1;->c:Lo/rb;

    invoke-interface {v0}, Lo/rp;->t()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Lo/rb;->a(Lo/rb;Ljava/lang/Long;)V

    :cond_0
    return-void
.end method
