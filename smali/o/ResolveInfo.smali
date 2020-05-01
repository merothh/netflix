.class public Lo/ResolveInfo;
.super Lo/PermissionInfo;
.source ""


# static fields
.field private static d:Lo/ResolveInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lo/PermissionInfo;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static c()Lo/ResolveInfo;
    .locals 1

    .line 29
    sget-object v0, Lo/ResolveInfo;->d:Lo/ResolveInfo;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lo/ResolveInfo;

    invoke-direct {v0}, Lo/ResolveInfo;-><init>()V

    sput-object v0, Lo/ResolveInfo;->d:Lo/ResolveInfo;

    .line 32
    :cond_0
    sget-object v0, Lo/ResolveInfo;->d:Lo/ResolveInfo;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 37
    invoke-virtual {p0}, Lo/ResolveInfo;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 40
    :cond_0
    invoke-super {p0, p1}, Lo/PermissionInfo;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
