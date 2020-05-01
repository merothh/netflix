.class Lo/abu$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/abu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/abu;


# direct methods
.method constructor <init>(Lo/abu;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lo/abu$9;->e:Lo/abu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "SignupActivity"

    const-string v1, "Timeout triggered, switching to LoginActivity"

    .line 516
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lo/abu$9;->e:Lo/abu;

    invoke-static {v0}, Lo/abu;->e(Lo/abu;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    iget-object v0, p0, Lo/abu$9;->e:Lo/abu;

    invoke-static {v0}, Lo/JG;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/abu;->d(Landroid/content/Intent;)V

    .line 519
    iget-object v0, p0, Lo/abu$9;->e:Lo/abu;

    invoke-virtual {v0}, Lo/abu;->finish()V

    :cond_0
    return-void
.end method
