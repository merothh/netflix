.class public final Lo/aaW;
.super Lo/CookieSyncManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aaW$ActionBar;
    }
.end annotation


# static fields
.field public static final d:Lo/aaW$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/aaW$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/aaW$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/aaW;->d:Lo/aaW$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/CookieSyncManager;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    sget-object v0, Lo/aaW;->d:Lo/aaW$ActionBar;

    invoke-virtual {v0, p0}, Lo/aaW$ActionBar;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected Q_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected a()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;-><init>()V

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public createManagerStatusListener()Lo/zT;
    .locals 1

    .line 39
    new-instance v0, Lo/aaW$Application;

    invoke-direct {v0, p0}, Lo/aaW$Application;-><init>(Lo/aaW;)V

    check-cast v0, Lo/zT;

    return-object v0
.end method

.method protected f()I
    .locals 1

    .line 23
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->bD:I

    return v0
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 31
    sget-object v0, Lcom/netflix/cl/model/AppView;->diagnosticsPlaybackSpecification:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method
