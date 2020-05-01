.class Lo/Dk$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Dk;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Dk;


# direct methods
.method constructor <init>(Lo/Dk;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lo/Dk$1;->e:Lo/Dk;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "volume"

    const/4 v0, -0x1

    .line 81
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 83
    iget-object p2, p0, Lo/Dk$1;->e:Lo/Dk;

    invoke-static {p2}, Lo/Dk;->c(Lo/Dk;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_0
    const-string p1, "VolumeDialogFrag"

    const-string p2, "Volume value is missed from MDX_ACTION_SETVOLUME Intent"

    .line 85
    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
