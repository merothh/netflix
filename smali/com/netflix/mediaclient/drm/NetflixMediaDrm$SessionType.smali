.class public final enum Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/drm/NetflixMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SessionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

.field public static final enum OFFLINE:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

.field public static final enum PersistentUsageRecord:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

.field public static final enum STREAMING:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;


# instance fields
.field private keyType:I

.field private sessionType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 145
    new-instance v0, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "STREAMING"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;->STREAMING:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

    .line 146
    new-instance v0, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

    const/4 v3, 0x2

    const-string v4, "OFFLINE"

    invoke-direct {v0, v4, v2, v2, v3}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;->OFFLINE:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

    .line 147
    new-instance v0, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

    const-string v4, "PersistentUsageRecord"

    invoke-direct {v0, v4, v3, v3, v2}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;->PersistentUsageRecord:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

    .line 144
    sget-object v4, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;->STREAMING:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;->OFFLINE:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;->PersistentUsageRecord:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;->$VALUES:[Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 160
    iput p3, p0, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;->sessionType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;
    .locals 1

    .line 144
    const-class v0, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;
    .locals 1

    .line 144
    sget-object v0, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;->$VALUES:[Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;

    return-object v0
.end method


# virtual methods
.method public getKeyType()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;->keyType:I

    return v0
.end method

.method public getSessionType()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SessionType;->sessionType:I

    return v0
.end method
