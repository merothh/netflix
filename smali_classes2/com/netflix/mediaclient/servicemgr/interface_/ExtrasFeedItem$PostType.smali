.class public final enum Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PostType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ARTWORK:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Artwork"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Unknown"
    .end annotation
.end field

.field public static final enum VIDEO:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Video"
    .end annotation
.end field

.field private static final synthetic a:[Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;

    const/4 v2, 0x0

    const-string v3, "ARTWORK"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;->ARTWORK:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;

    const/4 v2, 0x1

    const-string v3, "VIDEO"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;->VIDEO:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;

    const/4 v2, 0x2

    const-string v3, "UNKNOWN"

    invoke-direct {v1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;->a:[Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;
    .locals 1

    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;->a:[Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$PostType;

    return-object v0
.end method
