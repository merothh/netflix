.class public Lo/aaT;
.super Lo/CookieSyncManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aaT$StateListAnimator;
    }
.end annotation


# static fields
.field public static final b:Lo/aaT$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/aaT$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/aaT$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/aaT;->b:Lo/aaT$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/CookieSyncManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 22
    new-instance v0, Lo/Sl;

    invoke-direct {v0}, Lo/Sl;-><init>()V

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public canApplyBrowseExperience()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public createManagerStatusListener()Lo/zT;
    .locals 1

    .line 40
    new-instance v0, Lo/aaT$ActionBar;

    invoke-direct {v0, p0}, Lo/aaT$ActionBar;-><init>(Lo/aaT;)V

    check-cast v0, Lo/zT;

    return-object v0
.end method

.method protected f()I
    .locals 1

    .line 18
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->bD:I

    return v0
.end method

.method public getUiScreen()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 30
    sget-object v0, Lcom/netflix/cl/model/AppView;->downloadedForYouSetup:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method
