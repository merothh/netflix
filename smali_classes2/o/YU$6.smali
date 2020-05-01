.class Lo/YU$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YU;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/YU;


# direct methods
.method constructor <init>(Lo/YU;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lo/YU$6;->c:Lo/YU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 424
    iget-object p1, p0, Lo/YU$6;->c:Lo/YU;

    invoke-static {p1}, Lo/YU;->q(Lo/YU;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ProfileDetailsActivity"

    const-string v0, "Profile avatar was touched when current avatar data is not ready...ignoring..."

    .line 425
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 430
    :cond_0
    invoke-static {}, Lo/Og;->c()Lo/Og;

    move-result-object p1

    sget-object v0, Lo/u$Activity;->e:Lo/u$Activity;

    .line 431
    invoke-virtual {p1, v0}, Lo/Og;->e(Lo/Og$TaskDescription;)Lo/Og$Application;

    move-result-object p1

    new-instance v0, Lo/u$Application;

    iget-object v1, p0, Lo/YU$6;->c:Lo/YU;

    .line 433
    invoke-static {v1}, Lo/YU;->y(Lo/YU;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/YU$6;->c:Lo/YU;

    .line 434
    invoke-static {v2}, Lo/YU;->r(Lo/YU;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lo/u$Application;-><init>(Ljava/lang/String;ZZ)V

    .line 432
    invoke-virtual {p1, v0}, Lo/Og$Application;->d(Ljava/lang/Object;)Lo/Og$Application;

    move-result-object p1

    iget-object v0, p0, Lo/YU$6;->c:Lo/YU;

    .line 437
    invoke-virtual {p1, v0}, Lo/Og$Application;->e(Ljava/lang/Object;)V

    return-void
.end method
