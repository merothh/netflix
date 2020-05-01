.class public final enum Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BadgeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;

.field public static final enum c:Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;

.field private static final synthetic d:[Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;

.field public static final enum e:Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;

    new-instance v1, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;

    const/4 v2, 0x0

    const-string v3, "PERSISTENT"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;->e:Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;

    const/4 v2, 0x1

    const-string v3, "NO_TITLE_COUNT_BADGE"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;->c:Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;

    const/4 v2, 0x2

    const-string v3, "DISMISS_ON_TAP"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;->a:Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;->d:[Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;->d:[Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/configuration/persistent/ab/Config_Ab15857_DownloadsTabBadging$BadgeType;

    return-object v0
.end method
