.class Lo/acW$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/acW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/acW;


# direct methods
.method constructor <init>(Lo/acW;)V
    .locals 0

    .line 692
    iput-object p1, p0, Lo/acW$8;->c:Lo/acW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 697
    iget-object v0, p0, Lo/acW$8;->c:Lo/acW;

    invoke-static {v0}, Lo/acW;->d(Lo/acW;)Lo/acV;

    move-result-object v0

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VoipActivity"

    const-string v1, "timer update exit"

    .line 698
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 702
    :cond_0
    iget-object v0, p0, Lo/acW$8;->c:Lo/acW;

    invoke-static {v0}, Lo/acW;->l(Lo/acW;)V

    .line 703
    iget-object v0, p0, Lo/acW$8;->c:Lo/acW;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lo/acW;->a(Lo/acW;I)V

    return-void
.end method
