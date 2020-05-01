.class Lo/ko$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ko;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/ko;


# direct methods
.method constructor <init>(Lo/ko;)V
    .locals 0

    .line 1691
    iput-object p1, p0, Lo/ko$10;->c:Lo/ko;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1694
    iget-object v0, p0, Lo/ko$10;->c:Lo/ko;

    invoke-virtual {v0}, Lo/ko;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MdxAgent"

    const-string v1, "preNConnectivityHandler calling doHandleConnectivityChange"

    .line 1695
    invoke-static {v0, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    iget-object v0, p0, Lo/ko$10;->c:Lo/ko;

    invoke-static {v0}, Lo/ko;->C(Lo/ko;)V

    :cond_0
    return-void
.end method
