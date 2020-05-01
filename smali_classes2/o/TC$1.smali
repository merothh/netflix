.class Lo/TC$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TC;->aL()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/TC;


# direct methods
.method constructor <init>(Lo/TC;)V
    .locals 0

    .line 985
    iput-object p1, p0, Lo/TC$1;->e:Lo/TC;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 988
    iget-object p1, p0, Lo/TC$1;->e:Lo/TC;

    invoke-virtual {p1}, Lo/TC;->isDetached()Z

    move-result p1

    if-nez p1, :cond_0

    .line 989
    iget-object p1, p0, Lo/TC$1;->e:Lo/TC;

    invoke-static {p1}, Lo/TC;->h(Lo/TC;)V

    :cond_0
    return-void
.end method
