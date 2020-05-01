.class public final enum Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;
.super Ljava/lang/Enum;
.source "NfDrmMsgType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

.field public static final enum MSG_ERROR:Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

.field public static final enum MSG_KEYS:Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

.field public static final enum MSG_KEYS_LDL:Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

.field public static final enum MSG_KEYS_OFFLINE:Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

.field public static final enum MSG_PROVISION:Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;->UNKNOWN:Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

    const-string/jumbo v1, "MSG_ERROR"

    invoke-direct {v0, v1, v4, v3}, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;->MSG_ERROR:Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

    const-string/jumbo v1, "MSG_PROVISION"

    invoke-direct {v0, v1, v5, v4}, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;->MSG_PROVISION:Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

    const-string/jumbo v1, "MSG_KEYS"

    invoke-direct {v0, v1, v6, v5}, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;->MSG_KEYS:Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

    const-string/jumbo v1, "MSG_KEYS_LDL"

    invoke-direct {v0, v1, v7, v6}, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;->MSG_KEYS_LDL:Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

    const-string/jumbo v1, "MSG_KEYS_OFFLINE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v7}, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;->MSG_KEYS_OFFLINE:Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

    sget-object v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;->UNKNOWN:Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;->MSG_ERROR:Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;->MSG_PROVISION:Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;->MSG_KEYS:Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;->MSG_KEYS_LDL:Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;->MSG_KEYS_OFFLINE:Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;->$VALUES:[Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;->mValue:I

    .line 20
    return-void
.end method

.method public static getMsgTypeFromValue(I)Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;
    .locals 5

    .prologue
    .line 28
    invoke-static {}, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;->values()[Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 29
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 33
    :goto_1
    return-object v0

    .line 28
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 33
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;->UNKNOWN:Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;->$VALUES:[Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmMsgType;->mValue:I

    return v0
.end method
