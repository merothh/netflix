.class Lo/SQLiteCompatibilityWalFlags$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SQLiteCompatibilityWalFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/SQLiteCompatibilityWalFlags;


# direct methods
.method constructor <init>(Lo/SQLiteCompatibilityWalFlags;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lo/SQLiteCompatibilityWalFlags$4;->a:Lo/SQLiteCompatibilityWalFlags;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 62
    invoke-static {}, Lo/SQLiteCompatibilityWalFlags;->b()V

    .line 63
    iget-object v0, p0, Lo/SQLiteCompatibilityWalFlags$4;->a:Lo/SQLiteCompatibilityWalFlags;

    invoke-static {v0}, Lo/SQLiteCompatibilityWalFlags;->b(Lo/SQLiteCompatibilityWalFlags;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/SQLiteCompatibilityWalFlags$Application;

    .line 64
    invoke-interface {v1}, Lo/SQLiteCompatibilityWalFlags$Application;->j()V

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lo/SQLiteCompatibilityWalFlags$4;->a:Lo/SQLiteCompatibilityWalFlags;

    invoke-static {v0}, Lo/SQLiteCompatibilityWalFlags;->b(Lo/SQLiteCompatibilityWalFlags;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method
