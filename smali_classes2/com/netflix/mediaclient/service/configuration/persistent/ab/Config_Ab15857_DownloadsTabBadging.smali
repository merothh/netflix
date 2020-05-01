.class public final Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;,
        Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$ActionBar;
    }
.end annotation


# static fields
.field public static final d:Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$ActionBar;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging;->d:Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "15857"

    .line 32
    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging;->c:Ljava/lang/String;

    const-string v0, "Mobile Downloads Tab Badging 2"

    .line 34
    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging;->a:Ljava/lang/String;

    const/4 v0, 0x3

    .line 36
    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging;->e:I

    return-void
.end method

.method public static final f()Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging;->d:Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$ActionBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$ActionBar;->d()Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging;->c:Ljava/lang/String;

    return-object v0
.end method
