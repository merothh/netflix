.class public final enum Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/SupportedMediaTracks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SupportedMediaTracksType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

.field public static final enum AUDIO_ASSISTIVE:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

.field public static final enum AUDIO_REGULAR:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

.field public static final Companion:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType$Companion;

.field public static final enum SUBTITLES_CLOSED_CAPTIONS:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

.field public static final enum SUBTITLES_OFF:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

.field public static final enum SUBTITLES_REGULAR:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

.field public static final enum UNKNOWN:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    new-instance v1, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    const/4 v2, 0x0

    const-string v3, "AUDIO_REGULAR"

    const-string v4, "PRIMARY"

    .line 9
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->AUDIO_REGULAR:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    const/4 v2, 0x1

    const-string v3, "AUDIO_ASSISTIVE"

    const-string v4, "ASSISTIVE"

    .line 10
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->AUDIO_ASSISTIVE:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    const/4 v2, 0x2

    const-string v3, "SUBTITLES_REGULAR"

    const-string v4, "SUBTITLES"

    .line 11
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->SUBTITLES_REGULAR:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    const/4 v2, 0x3

    const-string v3, "SUBTITLES_CLOSED_CAPTIONS"

    const-string v4, "CLOSED_CAPTIONS"

    .line 12
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->SUBTITLES_CLOSED_CAPTIONS:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    const-string v2, "SUBTITLES_OFF"

    const/4 v3, 0x4

    .line 13
    invoke-direct {v1, v2, v3, v2}, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->SUBTITLES_OFF:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    const/4 v2, 0x5

    const-string v3, "UNKNOWN"

    const-string v4, ""

    .line 14
    invoke-direct {v1, v3, v2, v4}, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->UNKNOWN:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->$VALUES:[Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    new-instance v0, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType$Companion;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->Companion:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;
    .locals 1

    const-class v0, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;
    .locals 1

    sget-object v0, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->$VALUES:[Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    invoke-virtual {v0}, [Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->type:Ljava/lang/String;

    return-object v0
.end method
