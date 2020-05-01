.class public final Lo/PathClassLoader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PathClassLoader$Dialog;,
        Lo/PathClassLoader$TaskDescription;,
        Lo/PathClassLoader$Activity;,
        Lo/PathClassLoader$Application;,
        Lo/PathClassLoader$ActionBar;,
        Lo/PathClassLoader$StateListAnimator;
    }
.end annotation


# static fields
.field public static final a:Lo/DelegateLastClassLoader;

.field public static final b:Lo/DelegateLastClassLoader;

.field public static final c:Lo/DelegateLastClassLoader;

.field public static final d:Lo/DelegateLastClassLoader;

.field public static final e:Lo/DelegateLastClassLoader;

.field public static final g:Lo/DelegateLastClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    new-instance v0, Lo/PathClassLoader$ActionBar;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/PathClassLoader$ActionBar;-><init>(Lo/PathClassLoader$Application;Z)V

    sput-object v0, Lo/PathClassLoader;->b:Lo/DelegateLastClassLoader;

    .line 39
    new-instance v0, Lo/PathClassLoader$ActionBar;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lo/PathClassLoader$ActionBar;-><init>(Lo/PathClassLoader$Application;Z)V

    sput-object v0, Lo/PathClassLoader;->c:Lo/DelegateLastClassLoader;

    .line 47
    new-instance v0, Lo/PathClassLoader$ActionBar;

    sget-object v1, Lo/PathClassLoader$Activity;->d:Lo/PathClassLoader$Activity;

    invoke-direct {v0, v1, v2}, Lo/PathClassLoader$ActionBar;-><init>(Lo/PathClassLoader$Application;Z)V

    sput-object v0, Lo/PathClassLoader;->e:Lo/DelegateLastClassLoader;

    .line 55
    new-instance v0, Lo/PathClassLoader$ActionBar;

    sget-object v1, Lo/PathClassLoader$Activity;->d:Lo/PathClassLoader$Activity;

    invoke-direct {v0, v1, v3}, Lo/PathClassLoader$ActionBar;-><init>(Lo/PathClassLoader$Application;Z)V

    sput-object v0, Lo/PathClassLoader;->a:Lo/DelegateLastClassLoader;

    .line 62
    new-instance v0, Lo/PathClassLoader$ActionBar;

    sget-object v1, Lo/PathClassLoader$TaskDescription;->d:Lo/PathClassLoader$TaskDescription;

    invoke-direct {v0, v1, v2}, Lo/PathClassLoader$ActionBar;-><init>(Lo/PathClassLoader$Application;Z)V

    sput-object v0, Lo/PathClassLoader;->d:Lo/DelegateLastClassLoader;

    .line 68
    sget-object v0, Lo/PathClassLoader$Dialog;->c:Lo/PathClassLoader$Dialog;

    sput-object v0, Lo/PathClassLoader;->g:Lo/DelegateLastClassLoader;

    return-void
.end method

.method static a(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method static d(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    return v1

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
