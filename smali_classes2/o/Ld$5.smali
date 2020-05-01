.class Lo/Ld$5;
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
.field final synthetic c:Lo/Ld;


# direct methods
.method constructor <init>(Lo/Ld;)V
    .locals 0

    .line 672
    iput-object p1, p0, Lo/Ld$5;->c:Lo/Ld;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 675
    iget-object p1, p0, Lo/Ld$5;->c:Lo/Ld;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lo/Ld;->d(Lo/Ld;Z)Z

    return-void
.end method
