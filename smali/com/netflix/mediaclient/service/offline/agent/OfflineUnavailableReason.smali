.class public final enum Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;
.super Ljava/lang/Enum;
.source "OfflineUnavailableReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

.field public static final enum NA_DISABLED_FROM_END_POINT:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

.field public static final enum NA_MSL_CLIENT_DISABLED:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

.field public static final enum NA_OFFLINE_STORAGE_NOT_AVAILABLE:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    const-string/jumbo v1, "NA_OFFLINE_STORAGE_NOT_AVAILABLE"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_OFFLINE_STORAGE_NOT_AVAILABLE:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    const-string/jumbo v1, "NA_MSL_CLIENT_DISABLED"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_MSL_CLIENT_DISABLED:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    const-string/jumbo v1, "NA_DISABLED_FROM_END_POINT"

    invoke-direct {v0, v1, v3, v5}, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_DISABLED_FROM_END_POINT:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    .line 8
    new-array v0, v5, [Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_OFFLINE_STORAGE_NOT_AVAILABLE:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_MSL_CLIENT_DISABLED:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_DISABLED_FROM_END_POINT:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->$VALUES:[Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->mValue:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->$VALUES:[Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    return-object v0
.end method


# virtual methods
.method public getCodeForLogblob()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OF.NA."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
