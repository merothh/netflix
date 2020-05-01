.class Lo/Service$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Service;->b(Lo/UiAutomationConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Service;

.field final synthetic e:Lo/DevicePolicyCache;


# direct methods
.method constructor <init>(Lo/Service;Lo/DevicePolicyCache;)V
    .locals 0

    .line 1042
    iput-object p1, p0, Lo/Service$1;->a:Lo/Service;

    iput-object p2, p0, Lo/Service$1;->e:Lo/DevicePolicyCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1046
    :try_start_0
    iget-object v0, p0, Lo/Service$1;->a:Lo/Service;

    iget-object v0, v0, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {v0}, Lo/SearchDialog;->u()Lo/StatsManager;

    move-result-object v0

    .line 1049
    instance-of v1, v0, Lo/SharedPreferencesImpl;

    if-eqz v1, :cond_0

    .line 1050
    iget-object v1, p0, Lo/Service$1;->a:Lo/Service;

    iget-object v1, v1, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {v1}, Lo/SearchDialog;->C()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Bugsnag-Internal-Error"

    const-string v3, "true"

    .line 1051
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Bugsnag-Api-Key"

    .line 1052
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    check-cast v0, Lo/SharedPreferencesImpl;

    .line 1054
    iget-object v2, p0, Lo/Service$1;->a:Lo/Service;

    iget-object v2, v2, Lo/Service;->d:Lo/SearchDialog;

    invoke-virtual {v2}, Lo/SearchDialog;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo/Service$1;->e:Lo/DevicePolicyCache;

    invoke-virtual {v0, v2, v3, v1}, Lo/SharedPreferencesImpl;->d(Ljava/lang/String;Lo/WaitResult$ActionBar;Ljava/util/Map;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to report internal error to Bugsnag"

    .line 1058
    invoke-static {v1, v0}, Lo/WallpaperColors;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
