.class public final Lo/Uri;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static b(Landroid/content/Context;Lo/TextClassifier;)Landroid/view/SubMenu;
    .locals 1

    .line 53
    new-instance v0, Lo/Environment;

    invoke-direct {v0, p0, p1}, Lo/Environment;-><init>(Landroid/content/Context;Lo/TextClassifier;)V

    return-object v0
.end method

.method public static d(Landroid/content/Context;Lo/InputConnection;)Landroid/view/MenuItem;
    .locals 2

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 46
    new-instance v0, Lo/Matrix;

    invoke-direct {v0, p0, p1}, Lo/Matrix;-><init>(Landroid/content/Context;Lo/InputConnection;)V

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Lo/Point;

    invoke-direct {v0, p0, p1}, Lo/Point;-><init>(Landroid/content/Context;Lo/InputConnection;)V

    return-object v0
.end method

.method public static e(Landroid/content/Context;Lo/ExtractedTextRequest;)Landroid/view/Menu;
    .locals 1

    .line 41
    new-instance v0, Lo/Bundle;

    invoke-direct {v0, p0, p1}, Lo/Bundle;-><init>(Landroid/content/Context;Lo/ExtractedTextRequest;)V

    return-object v0
.end method
