.class public final enum Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MULTI_TITLE_ALERT:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MultiTitleAlert"
    .end annotation
.end field

.field public static final enum NEW_SEASON_ALERT:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NewSeasonAlert"
    .end annotation
.end field

.field private static final synthetic c:[Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 6
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;

    const/4 v1, 0x0

    const-string v2, "NEW_SEASON_ALERT"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;->NEW_SEASON_ALERT:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;

    const/4 v2, 0x1

    const-string v3, "MULTI_TITLE_ALERT"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;->MULTI_TITLE_ALERT:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;

    .line 5
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;->NEW_SEASON_ALERT:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;->MULTI_TITLE_ALERT:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;->c:[Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;
    .locals 1

    .line 5
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;
    .locals 1

    .line 5
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;->c:[Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;

    return-object v0
.end method
