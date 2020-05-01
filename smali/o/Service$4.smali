.class Lo/Service$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/VrStateCallback$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Service;-><init>(Landroid/content/Context;Lo/SearchDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Service;


# direct methods
.method constructor <init>(Lo/Service;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lo/Service$4;->b:Lo/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Exception;Ljava/io/File;Ljava/lang/String;)V
    .locals 7

    .line 209
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 210
    new-instance v6, Lo/UiAutomationConnection$Activity;

    iget-object v0, p0, Lo/Service$4;->b:Lo/Service;

    iget-object v1, v0, Lo/Service;->d:Lo/SearchDialog;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lo/UiAutomationConnection$Activity;-><init>(Lo/SearchDialog;Ljava/lang/Throwable;Lo/DevicePolicyManagerInternal;Ljava/lang/Thread;Z)V

    invoke-virtual {v6}, Lo/UiAutomationConnection$Activity;->d()Lo/UiAutomationConnection;

    move-result-object p1

    .line 211
    invoke-virtual {p1, p3}, Lo/UiAutomationConnection;->b(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1}, Lo/UiAutomationConnection;->e()Lo/DeviceAdminInfo;

    move-result-object p3

    .line 214
    invoke-virtual {p2}, Ljava/io/File;->canRead()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "BugsnagDiagnostics"

    const-string v2, "canRead"

    invoke-virtual {p3, v1, v2, v0}, Lo/DeviceAdminInfo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    invoke-virtual {p2}, Ljava/io/File;->canWrite()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "canWrite"

    invoke-virtual {p3, v1, v2, v0}, Lo/DeviceAdminInfo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "exists"

    invoke-virtual {p3, v1, v2, v0}, Lo/DeviceAdminInfo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lo/Service$4;->b:Lo/Service;

    iget-object v0, v0, Lo/Service;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    .line 220
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "usableSpace"

    invoke-virtual {p3, v1, v2, v0}, Lo/DeviceAdminInfo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "filename"

    invoke-virtual {p3, v1, v2, v0}, Lo/DeviceAdminInfo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "fileLength"

    invoke-virtual {p3, v1, v0, p2}, Lo/DeviceAdminInfo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    iget-object p2, p0, Lo/Service$4;->b:Lo/Service;

    invoke-virtual {p2, p3}, Lo/Service;->d(Lo/DeviceAdminInfo;)V

    .line 224
    iget-object p2, p0, Lo/Service$4;->b:Lo/Service;

    invoke-virtual {p2, p1}, Lo/Service;->b(Lo/UiAutomationConnection;)V

    return-void
.end method
