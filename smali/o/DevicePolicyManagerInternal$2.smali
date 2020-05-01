.class Lo/DevicePolicyManagerInternal$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DevicePolicyManagerInternal;->c(Lo/DeviceAdminService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/DeviceAdminService;

.field final synthetic e:Lo/DevicePolicyManagerInternal;


# direct methods
.method constructor <init>(Lo/DevicePolicyManagerInternal;Lo/DeviceAdminService;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lo/DevicePolicyManagerInternal$2;->e:Lo/DevicePolicyManagerInternal;

    iput-object p2, p0, Lo/DevicePolicyManagerInternal$2;->a:Lo/DeviceAdminService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 175
    iget-object v0, p0, Lo/DevicePolicyManagerInternal$2;->e:Lo/DevicePolicyManagerInternal;

    invoke-virtual {v0}, Lo/DevicePolicyManagerInternal;->c()V

    .line 177
    new-instance v0, Lo/DevicePolicyManager;

    iget-object v1, p0, Lo/DevicePolicyManagerInternal$2;->a:Lo/DeviceAdminService;

    iget-object v2, p0, Lo/DevicePolicyManagerInternal$2;->e:Lo/DevicePolicyManagerInternal;

    iget-object v2, v2, Lo/DevicePolicyManagerInternal;->e:Lo/Service;

    iget-object v2, v2, Lo/Service;->c:Lo/PictureInPictureArgs;

    iget-object v3, p0, Lo/DevicePolicyManagerInternal$2;->e:Lo/DevicePolicyManagerInternal;

    iget-object v3, v3, Lo/DevicePolicyManagerInternal;->e:Lo/Service;

    iget-object v3, v3, Lo/Service;->a:Lo/StatusBarManager;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lo/DevicePolicyManager;-><init>(Lo/DeviceAdminService;Ljava/util/List;Lo/PictureInPictureArgs;Lo/StatusBarManager;)V

    .line 182
    :try_start_0
    iget-object v1, p0, Lo/DevicePolicyManagerInternal$2;->e:Lo/DevicePolicyManagerInternal;

    iget-object v1, v1, Lo/DevicePolicyManagerInternal;->a:Lo/SearchDialog;

    invoke-virtual {v1}, Lo/SearchDialog;->A()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ProgressDialog;

    .line 183
    invoke-interface {v2, v0}, Lo/ProgressDialog;->b(Lo/DevicePolicyManager;)V

    goto :goto_0

    .line 186
    :cond_0
    iget-object v1, p0, Lo/DevicePolicyManagerInternal$2;->e:Lo/DevicePolicyManagerInternal;

    iget-object v1, v1, Lo/DevicePolicyManagerInternal;->a:Lo/SearchDialog;

    invoke-virtual {v1}, Lo/SearchDialog;->u()Lo/StatsManager;

    move-result-object v1

    iget-object v2, p0, Lo/DevicePolicyManagerInternal$2;->e:Lo/DevicePolicyManagerInternal;

    iget-object v2, v2, Lo/DevicePolicyManagerInternal;->a:Lo/SearchDialog;

    invoke-interface {v1, v0, v2}, Lo/StatsManager;->d(Lo/DevicePolicyManager;Lo/SearchDialog;)V
    :try_end_0
    .catch Lcom/bugsnag/android/DeliveryFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Dropping invalid session tracking payload"

    .line 191
    invoke-static {v1, v0}, Lo/WallpaperColors;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "Storing session payload for future delivery"

    .line 188
    invoke-static {v1, v0}, Lo/WallpaperColors;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    iget-object v0, p0, Lo/DevicePolicyManagerInternal$2;->e:Lo/DevicePolicyManagerInternal;

    iget-object v0, v0, Lo/DevicePolicyManagerInternal;->c:Lo/NetworkEvent;

    iget-object v1, p0, Lo/DevicePolicyManagerInternal$2;->a:Lo/DeviceAdminService;

    invoke-virtual {v0, v1}, Lo/NetworkEvent;->b(Lo/WaitResult$ActionBar;)Ljava/lang/String;

    :goto_1
    return-void
.end method
