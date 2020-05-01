.class Lo/tT$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/PlayerMessage$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/tT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/tT;


# direct methods
.method constructor <init>(Lo/tT;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lo/tT$6;->a:Lo/tT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(ILjava/lang/Object;)V
    .locals 0

    const-string p1, "nf_branch_cache"

    const-string p2, "onExoMessage(min skip offset reached)"

    .line 801
    invoke-static {p1, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object p1, p0, Lo/tT$6;->a:Lo/tT;

    invoke-static {p1}, Lo/tT;->i(Lo/tT;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x1003

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
