.class public Lo/kz;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/kz$Activity;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final c:Ljava/lang/Runnable;

.field private final e:Lo/kz$Activity;


# direct methods
.method constructor <init>(Lo/kz$Activity;Landroid/os/Handler;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lo/kz;->e:Lo/kz$Activity;

    .line 21
    iput-object p2, p0, Lo/kz;->a:Landroid/os/Handler;

    .line 22
    new-instance p1, Lo/kz$5;

    invoke-direct {p1, p0}, Lo/kz$5;-><init>(Lo/kz;)V

    iput-object p1, p0, Lo/kz;->c:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic b(Lo/kz;)Lo/kz$Activity;
    .locals 0

    .line 7
    iget-object p0, p0, Lo/kz;->e:Lo/kz$Activity;

    return-object p0
.end method

.method static synthetic c(Lo/kz;)Landroid/os/Handler;
    .locals 0

    .line 7
    iget-object p0, p0, Lo/kz;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lo/kz;)Ljava/lang/Runnable;
    .locals 0

    .line 7
    iget-object p0, p0, Lo/kz;->c:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 4

    const-string v0, "nf_mdxSessionWatchDog"

    const-string v1, "MdxSessionWatchDog: start"

    .line 38
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lo/kz;->a:Landroid/os/Handler;

    iget-object v1, p0, Lo/kz;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 41
    iget-object v0, p0, Lo/kz;->a:Landroid/os/Handler;

    iget-object v1, p0, Lo/kz;->c:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method e()V
    .locals 2

    const-string v0, "nf_mdxSessionWatchDog"

    const-string v1, "MdxSessionWatchDog: stop"

    .line 44
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lo/kz;->a:Landroid/os/Handler;

    iget-object v1, p0, Lo/kz;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
