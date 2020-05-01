.class Lo/CheckResult$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AccountManagerInternal$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CheckResult;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/CheckResult;

.field final synthetic d:Lo/ChooseAccountActivity;


# direct methods
.method constructor <init>(Lo/CheckResult;Lo/ChooseAccountActivity;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lo/CheckResult$2;->c:Lo/CheckResult;

    iput-object p2, p0, Lo/CheckResult$2;->d:Lo/ChooseAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 3

    .line 155
    iget-object v0, p0, Lo/CheckResult$2;->c:Lo/CheckResult;

    iget-object v1, p0, Lo/CheckResult$2;->d:Lo/ChooseAccountActivity;

    invoke-virtual {v1}, Lo/ChooseAccountActivity;->g()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lo/CheckResult;->c(Lo/CheckResult;Z)V

    return-void
.end method
