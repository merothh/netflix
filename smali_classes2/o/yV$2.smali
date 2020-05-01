.class Lo/yV$2;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/yV;->H()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/yV;

.field final synthetic c:Lo/yV$Activity;


# direct methods
.method constructor <init>(Lo/yV;Lo/yV$Activity;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lo/yV$2;->b:Lo/yV;

    iput-object p2, p0, Lo/yV$2;->c:Lo/yV$Activity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 609
    iget-object v0, p0, Lo/yV$2;->b:Lo/yV;

    invoke-static {v0}, Lo/yV;->a(Lo/yV;)Lorg/linphone/core/LinphoneCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 610
    invoke-static {}, Lo/yV;->C()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/yV$2;->c:Lo/yV$Activity;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
