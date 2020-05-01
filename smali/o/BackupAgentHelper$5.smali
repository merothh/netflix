.class Lo/BackupAgentHelper$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BackupAgentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/BackupAgentHelper;


# direct methods
.method constructor <init>(Lo/BackupAgentHelper;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lo/BackupAgentHelper$5;->a:Lo/BackupAgentHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 78
    iget-object v0, p0, Lo/BackupAgentHelper$5;->a:Lo/BackupAgentHelper;

    iget-object v0, v0, Lo/BackupAgentHelper;->d:Lo/ClipDescription;

    iget-object v1, p0, Lo/BackupAgentHelper$5;->a:Lo/BackupAgentHelper;

    invoke-interface {v0, v1}, Lo/ClipDescription;->d(Lo/ClipboardManager;)V

    return-void
.end method
