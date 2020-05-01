.class final Lo/Redirect;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Redirect$Application;,
        Lo/Redirect$ActionBar;,
        Lo/Redirect$StateListAnimator;,
        Lo/Redirect$Activity;,
        Lo/Redirect$TaskDescription;
    }
.end annotation


# direct methods
.method public static b(Lo/Redirect$Activity;)Ljava/lang/Object;
    .locals 1

    .line 37
    new-instance v0, Lo/Redirect$Application;

    invoke-direct {v0, p0}, Lo/Redirect$Application;-><init>(Lo/Redirect$Activity;)V

    return-object v0
.end method
