.class public final Lo/at$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/at;-><init>(Lcom/netflix/mediaclient/performance/api/capture/CaptureType;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/at;


# direct methods
.method constructor <init>(Lo/at;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lo/at$4;->e:Lo/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "PerformanceCapture"

    .line 39
    invoke-static {v0}, Lo/aeB;->e(Ljava/lang/String;)Z

    .line 40
    iget-object v0, p0, Lo/at$4;->e:Lo/at;

    invoke-virtual {v0}, Lo/at;->e()V

    .line 41
    iget-object v0, p0, Lo/at$4;->e:Lo/at;

    invoke-static {v0}, Lo/at;->b(Lo/at;)Lo/am;

    move-result-object v0

    invoke-virtual {v0}, Lo/am;->b()Landroid/os/Handler;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    iget-object v2, p0, Lo/at$4;->e:Lo/at;

    invoke-static {v2}, Lo/at;->e(Lo/at;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
