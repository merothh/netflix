.class abstract Lo/Readable;
.super Lo/NoSuchFieldError;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Readable$Activity;,
        Lo/Readable$TaskDescription;,
        Lo/Readable$StateListAnimator;,
        Lo/Readable$Application;,
        Lo/Readable$ActionBar;,
        Lo/Readable$Dialog;
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 49
    new-instance v0, Lo/NoSuchFieldError$Activity;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lo/Readable;

    .line 50
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lo/NoSuchFieldError$Activity;-><init>(Landroid/content/ComponentName;)V

    .line 49
    invoke-direct {p0, p1, v0}, Lo/NoSuchFieldError;-><init>(Landroid/content/Context;Lo/NoSuchFieldError$Activity;)V

    return-void
.end method

.method public static e(Landroid/content/Context;Lo/Readable$Dialog;)Lo/Readable;
    .locals 2

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 55
    new-instance v0, Lo/Readable$Activity;

    invoke-direct {v0, p0, p1}, Lo/Readable$Activity;-><init>(Landroid/content/Context;Lo/Readable$Dialog;)V

    return-object v0

    .line 57
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 58
    new-instance v0, Lo/Readable$TaskDescription;

    invoke-direct {v0, p0, p1}, Lo/Readable$TaskDescription;-><init>(Landroid/content/Context;Lo/Readable$Dialog;)V

    return-object v0

    .line 60
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    .line 61
    new-instance v0, Lo/Readable$StateListAnimator;

    invoke-direct {v0, p0, p1}, Lo/Readable$StateListAnimator;-><init>(Landroid/content/Context;Lo/Readable$Dialog;)V

    return-object v0

    .line 63
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 64
    new-instance v0, Lo/Readable$Application;

    invoke-direct {v0, p0, p1}, Lo/Readable$Application;-><init>(Landroid/content/Context;Lo/Readable$Dialog;)V

    return-object v0

    .line 66
    :cond_3
    new-instance p1, Lo/Readable$ActionBar;

    invoke-direct {p1, p0}, Lo/Readable$ActionBar;-><init>(Landroid/content/Context;)V

    return-object p1
.end method


# virtual methods
.method public b(Lo/Object$LoaderManager;)V
    .locals 0

    return-void
.end method

.method public c(Lo/Object$LoaderManager;)V
    .locals 0

    return-void
.end method

.method public d(Lo/Object$LoaderManager;)V
    .locals 0

    return-void
.end method

.method public e(Lo/Object$LoaderManager;)V
    .locals 0

    return-void
.end method

.method protected g()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
