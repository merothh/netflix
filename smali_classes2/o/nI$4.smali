.class Lo/nI$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/nI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/nI;


# direct methods
.method constructor <init>(Lo/nI;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lo/nI$4;->c:Lo/nI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 252
    iget-object v0, p0, Lo/nI$4;->c:Lo/nI;

    invoke-static {v0}, Lo/nI;->a(Lo/nI;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/aed;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lo/nI$4;->c:Lo/nI;

    invoke-static {v0}, Lo/nI;->b(Lo/nI;)V

    .line 257
    :cond_0
    iget-object v0, p0, Lo/nI$4;->c:Lo/nI;

    invoke-static {v0}, Lo/nI;->j(Lo/nI;)V

    return-void
.end method
