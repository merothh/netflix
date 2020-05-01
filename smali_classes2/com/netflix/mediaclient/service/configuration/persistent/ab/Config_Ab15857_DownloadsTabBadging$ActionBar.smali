.class public final Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;
    .locals 2

    .line 14
    const-class v0, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging;

    invoke-static {v0}, Lo/cS;->b(Ljava/lang/Class;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lo/en;->b:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 18
    :goto_0
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;->e:Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;

    goto :goto_1

    .line 17
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;->a:Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;

    goto :goto_1

    .line 16
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;->c:Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;

    goto :goto_1

    .line 15
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;->e:Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;

    :goto_1
    return-object v0
.end method
