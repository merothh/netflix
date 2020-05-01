.class public final enum Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Template"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

.field public static final enum STANDARD:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "standard"
    .end annotation
.end field

.field public static final enum THEMED_PROMO:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "themed_promo"
    .end annotation
.end field

.field public static final enum WHITE_MODAL:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "white_modal"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 156
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    const/4 v1, 0x0

    const-string v2, "WHITE_MODAL"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;->WHITE_MODAL:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    .line 158
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    const/4 v2, 0x1

    const-string v3, "STANDARD"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;->STANDARD:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    .line 160
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    const/4 v3, 0x2

    const-string v4, "THEMED_PROMO"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;->THEMED_PROMO:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    .line 155
    sget-object v4, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;->WHITE_MODAL:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;->STANDARD:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;->THEMED_PROMO:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;->$VALUES:[Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;
    .locals 1

    .line 155
    const-class v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;
    .locals 1

    .line 155
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;->$VALUES:[Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert$Template;

    return-object v0
.end method
