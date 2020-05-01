.class public final enum Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/drm/NetflixMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SecurityLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;

.field public static final enum hardware:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;

.field public static final enum software:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 137
    new-instance v0, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;

    const/4 v1, 0x0

    const-string v2, "software"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;->software:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;

    .line 138
    new-instance v0, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;

    const/4 v2, 0x1

    const-string v3, "hardware"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;->hardware:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;

    .line 136
    sget-object v3, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;->software:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;->hardware:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;->$VALUES:[Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;
    .locals 1

    .line 136
    const-class v0, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;
    .locals 1

    .line 136
    sget-object v0, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;->$VALUES:[Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/drm/NetflixMediaDrm$SecurityLevel;

    return-object v0
.end method
