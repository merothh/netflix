.class Lo/IL$Application$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/IL$Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/IL$Application;


# direct methods
.method constructor <init>(Lo/IL$Application;)V
    .locals 0

    .line 971
    iput-object p1, p0, Lo/IL$Application$2;->d:Lo/IL$Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 974
    iget-object v0, p0, Lo/IL$Application$2;->d:Lo/IL$Application;

    invoke-static {v0}, Lo/IL$Application;->b(Lo/IL$Application;)V

    .line 975
    iget-object v0, p0, Lo/IL$Application$2;->d:Lo/IL$Application;

    invoke-static {v0}, Lo/IL$Application;->c(Lo/IL$Application;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/IL$Application$2;->d:Lo/IL$Application;

    invoke-static {v1}, Lo/IL$Application;->e(Lo/IL$Application;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
