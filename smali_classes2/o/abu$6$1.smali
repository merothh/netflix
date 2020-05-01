.class Lo/abu$6$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/abu$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/abu$6;->run(Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Am;

.field final synthetic e:Lo/abu$6;


# direct methods
.method constructor <init>(Lo/abu$6;Lo/Am;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lo/abu$6$1;->e:Lo/abu$6;

    iput-object p2, p0, Lo/abu$6$1;->b:Lo/Am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 495
    sget-object p1, Lo/abD;->b:Lo/abD$StateListAnimator;

    iget-object v0, p0, Lo/abu$6$1;->e:Lo/abu$6;

    iget-object v0, v0, Lo/abu$6;->a:Lo/abu;

    invoke-virtual {v0}, Lo/abu;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/abD$StateListAnimator;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 496
    iget-object p1, p0, Lo/abu$6$1;->e:Lo/abu$6;

    iget-object p1, p1, Lo/abu$6;->a:Lo/abu;

    iget-object v0, p0, Lo/abu$6$1;->e:Lo/abu$6;

    iget-object v0, v0, Lo/abu$6;->a:Lo/abu;

    invoke-virtual {v0}, Lo/abu;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/abu;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 498
    :cond_0
    iget-object p1, p0, Lo/abu$6$1;->e:Lo/abu$6;

    iget-object p1, p1, Lo/abu$6;->a:Lo/abu;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/abu;->c(Z)V

    .line 499
    iget-object p1, p0, Lo/abu$6$1;->e:Lo/abu$6;

    iget-object p1, p1, Lo/abu$6;->a:Lo/abu;

    iget-object v1, p0, Lo/abu$6$1;->b:Lo/Am;

    invoke-virtual {v1}, Lo/Am;->i()Lo/cz;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lo/abu;->a(Lo/cz;Z)V

    :goto_0
    return-void
.end method
