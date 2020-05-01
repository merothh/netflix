.class public final enum Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlanStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

.field public static final enum CURRENT:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CURRENT"
    .end annotation
.end field

.field public static final enum PENDING:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PENDING"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 40
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

    const/4 v1, 0x0

    const-string v2, "CURRENT"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;->CURRENT:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

    .line 41
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

    const/4 v2, 0x1

    const-string v3, "PENDING"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;->PENDING:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

    .line 42
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

    const/4 v3, 0x2

    const-string v4, "UNKNOWN"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;->UNKNOWN:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

    .line 39
    sget-object v4, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;->CURRENT:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;->PENDING:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;->UNKNOWN:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;->$VALUES:[Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;
    .locals 1

    .line 39
    const-class v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;
    .locals 1

    .line 39
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;->$VALUES:[Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice$PlanStatus;

    return-object v0
.end method
