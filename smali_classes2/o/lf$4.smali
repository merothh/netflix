.class Lo/lf$4;
.super Lo/JsPromptResult;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/lf;-><init>(Landroid/content/Context;Lo/zE;Lo/kI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/lf;


# direct methods
.method constructor <init>(Lo/lf;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lo/lf$4;->d:Lo/lf;

    invoke-direct {p0}, Lo/JsPromptResult;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/Plugin;Landroid/content/Intent;)V
    .locals 0

    .line 138
    iget-object p1, p0, Lo/lf$4;->d:Lo/lf;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lo/lf;->b(Lo/lf;Z)V

    return-void
.end method

.method public b(Lo/Plugin;)V
    .locals 1

    .line 143
    iget-object p1, p0, Lo/lf$4;->d:Lo/lf;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/lf;->b(Lo/lf;Z)V

    return-void
.end method
