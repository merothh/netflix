.class Lo/WifiDisplayStatus$4;
.super Lo/ParamsUtils;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WifiDisplayStatus;->a(Lo/WifiDisplayStatus$Application;Lo/HdmiRecordListener$StateListAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/HdmiRecordListener$StateListAnimator;

.field final synthetic d:Ljava/util/concurrent/Future;

.field final synthetic e:Lo/WifiDisplayStatus;


# direct methods
.method constructor <init>(Lo/WifiDisplayStatus;Ljava/util/concurrent/Future;Lo/HdmiRecordListener$StateListAnimator;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lo/WifiDisplayStatus$4;->e:Lo/WifiDisplayStatus;

    iput-object p2, p0, Lo/WifiDisplayStatus$4;->d:Ljava/util/concurrent/Future;

    iput-object p3, p0, Lo/WifiDisplayStatus$4;->b:Lo/HdmiRecordListener$StateListAnimator;

    invoke-direct {p0}, Lo/ParamsUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 101
    iget-object v0, p0, Lo/WifiDisplayStatus$4;->d:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lo/WifiDisplayStatus$4;->b:Lo/HdmiRecordListener$StateListAnimator;

    invoke-interface {v0}, Lo/HdmiRecordListener$StateListAnimator;->e()V

    :cond_0
    return-void
.end method
