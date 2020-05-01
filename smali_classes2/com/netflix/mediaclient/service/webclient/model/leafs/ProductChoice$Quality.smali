.class public final enum Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Quality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;

.field public static final enum HD:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "HD"
    .end annotation
.end field

.field public static final enum SD:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SD"
    .end annotation
.end field

.field public static final enum UHD:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UHD"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;

    const/4 v1, 0x0

    const-string v2, "SD"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;->SD:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;

    .line 34
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;

    const/4 v2, 0x1

    const-string v3, "HD"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;->HD:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;

    .line 35
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;

    const/4 v3, 0x2

    const-string v4, "UHD"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;->UHD:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;

    .line 36
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;

    const/4 v4, 0x3

    const-string v5, "UNKNOWN"

    invoke-direct {v0, v5, v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;->UNKNOWN:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;

    .line 32
    sget-object v5, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;->SD:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;

    aput-object v5, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;->HD:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;->UHD:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;->UNKNOWN:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;->$VALUES:[Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;
    .locals 1

    .line 32
    const-class v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;
    .locals 1

    .line 32
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;->$VALUES:[Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$Quality;

    return-object v0
.end method
