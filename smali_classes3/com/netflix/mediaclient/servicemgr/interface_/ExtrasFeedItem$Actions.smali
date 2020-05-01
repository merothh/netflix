.class public final enum Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Actions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HOME_PAGE:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "homePage"
    .end annotation
.end field

.field public static final enum MORE_INFO:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "moreInfo"
    .end annotation
.end field

.field public static final enum MY_LIST:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "addToMyList"
    .end annotation
.end field

.field public static final enum PLAY:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play"
    .end annotation
.end field

.field public static final enum PLAY_EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playEpisode"
    .end annotation
.end field

.field public static final enum PLAY_MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playMovie"
    .end annotation
.end field

.field public static final enum REMIND_ME:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "remindMe"
    .end annotation
.end field

.field public static final enum SHARE:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "share"
    .end annotation
.end field

.field private static final synthetic e:[Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    const/4 v2, 0x0

    const-string v3, "REMIND_ME"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->REMIND_ME:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    const/4 v2, 0x1

    const-string v3, "MY_LIST"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->MY_LIST:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    const/4 v2, 0x2

    const-string v3, "SHARE"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->SHARE:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    const/4 v2, 0x3

    const-string v3, "PLAY"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->PLAY:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    const/4 v2, 0x4

    const-string v3, "PLAY_MOVIE"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->PLAY_MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    const/4 v2, 0x5

    const-string v3, "PLAY_EPISODE"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->PLAY_EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    const/4 v2, 0x6

    const-string v3, "MORE_INFO"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->MORE_INFO:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    const/4 v2, 0x7

    const-string v3, "HOME_PAGE"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->HOME_PAGE:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->e:[Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->e:[Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    return-object v0
.end method
