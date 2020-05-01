.class public final Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$KeyStatus;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$KeyStatus$KeyStatusCode;
    }
.end annotation


# static fields
.field public static final STATUS_EXPIRED:I = 0x1

.field public static final STATUS_INTERNAL_ERROR:I = 0x4

.field public static final STATUS_OUTPUT_NOT_ALLOWED:I = 0x2

.field public static final STATUS_PENDING:I = 0x3

.field public static final STATUS_USABLE:I


# instance fields
.field private final mKeyId:[B

.field private final mStatusCode:I


# direct methods
.method public constructor <init>(Landroid/media/MediaDrm$KeyStatus;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-virtual {p1}, Landroid/media/MediaDrm$KeyStatus;->getKeyId()[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$KeyStatus;->mKeyId:[B

    .line 135
    invoke-virtual {p1}, Landroid/media/MediaDrm$KeyStatus;->getStatusCode()I

    move-result p1

    iput p1, p0, Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$KeyStatus;->mStatusCode:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$KeyStatus;->mKeyId:[B

    .line 140
    iput p2, p0, Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$KeyStatus;->mStatusCode:I

    return-void
.end method


# virtual methods
.method public getKeyId()[B
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$KeyStatus;->mKeyId:[B

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/netflix/mediaclient/drm/NetflixMediaDrmApi23$KeyStatus;->mStatusCode:I

    return v0
.end method
