.class Lo/Ld$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/Ld;


# direct methods
.method constructor <init>(Lo/Ld;)V
    .locals 0

    .line 658
    iput-object p1, p0, Lo/Ld$1;->e:Lo/Ld;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 661
    iget-object p1, p0, Lo/Ld$1;->e:Lo/Ld;

    invoke-static {p1}, Lo/Ld;->d(Lo/Ld;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 662
    iget-object p1, p0, Lo/Ld$1;->e:Lo/Ld;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/Ld;->setVisibility(I)V

    .line 663
    iget-object p1, p0, Lo/Ld$1;->e:Lo/Ld;

    invoke-static {p1, p2}, Lo/Ld;->d(Lo/Ld;Z)Z

    .line 664
    iget-object p1, p0, Lo/Ld$1;->e:Lo/Ld;

    invoke-static {p1}, Lo/Ld;->e(Lo/Ld;)V

    :cond_0
    return-void
.end method
