.class Lo/r$2$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/r$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/r$2;

.field final synthetic b:[B


# direct methods
.method constructor <init>(Lo/r$2;[B)V
    .locals 0

    .line 140
    iput-object p1, p0, Lo/r$2$3;->a:Lo/r$2;

    iput-object p2, p0, Lo/r$2$3;->b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 143
    iget-object v0, p0, Lo/r$2$3;->a:Lo/r$2;

    iget-object v0, v0, Lo/r$2;->c:Lo/r$Application;

    new-instance v1, Lo/ExitTransitionCoordinator;

    iget-object v2, p0, Lo/r$2$3;->b:[B

    const/16 v3, 0xc8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v2, v4, v5}, Lo/ExitTransitionCoordinator;-><init>(I[BLjava/util/Map;Z)V

    invoke-virtual {v0, v1}, Lo/r$Application;->e(Lo/ExitTransitionCoordinator;)V

    return-void
.end method
