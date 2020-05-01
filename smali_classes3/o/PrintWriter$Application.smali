.class Lo/PrintWriter$Application;
.super Lo/ObjectInputValidation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PrintWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field final synthetic d:Lo/PrintWriter;


# direct methods
.method constructor <init>(Lo/PrintWriter;)V
    .locals 0

    .line 1238
    iput-object p1, p0, Lo/PrintWriter$Application;->d:Lo/PrintWriter;

    invoke-direct {p0}, Lo/ObjectInputValidation;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)Lo/LineNumberInputStream;
    .locals 1

    .line 1245
    iget-object v0, p0, Lo/PrintWriter$Application;->d:Lo/PrintWriter;

    .line 1246
    invoke-virtual {v0, p1}, Lo/PrintWriter;->obtainAccessibilityNodeInfo(I)Lo/LineNumberInputStream;

    move-result-object p1

    .line 1247
    invoke-static {p1}, Lo/LineNumberInputStream;->a(Lo/LineNumberInputStream;)Lo/LineNumberInputStream;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lo/LineNumberInputStream;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1257
    iget-object p1, p0, Lo/PrintWriter$Application;->d:Lo/PrintWriter;

    iget p1, p1, Lo/PrintWriter;->mAccessibilityFocusedVirtualViewId:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo/PrintWriter$Application;->d:Lo/PrintWriter;

    iget p1, p1, Lo/PrintWriter;->mKeyboardFocusedVirtualViewId:I

    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1262
    :cond_1
    invoke-virtual {p0, p1}, Lo/PrintWriter$Application;->b(I)Lo/LineNumberInputStream;

    move-result-object p1

    return-object p1
.end method

.method public d(IILandroid/os/Bundle;)Z
    .locals 1

    .line 1252
    iget-object v0, p0, Lo/PrintWriter$Application;->d:Lo/PrintWriter;

    invoke-virtual {v0, p1, p2, p3}, Lo/PrintWriter;->performAction(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
