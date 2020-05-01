.class Lo/jb$2;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/jb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/jb;


# direct methods
.method constructor <init>(Lo/jb;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lo/jb$2;->d:Lo/jb;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "nf_log"

    const-string v0, "Received intent "

    .line 410
    invoke-static {p1, v0, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 411
    iget-object p1, p0, Lo/jb$2;->d:Lo/jb;

    invoke-static {p1, p2}, Lo/jb;->a(Lo/jb;Landroid/content/Intent;)Z

    return-void
.end method
