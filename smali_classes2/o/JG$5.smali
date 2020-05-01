.class Lo/JG$5;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/JG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/JG;


# direct methods
.method constructor <init>(Lo/JG;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lo/JG$5;->d:Lo/JG;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 81
    iget-object p1, p0, Lo/JG$5;->d:Lo/JG;

    invoke-virtual {p1}, Lo/JG;->invalidateOptionsMenu()V

    return-void
.end method
