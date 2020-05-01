.class public final Lcom/netflix/mediaclient/drm/PlatformMediaDrm$PlatformCryptoSession;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/drm/NetflixMediaDrm$CryptoSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/drm/PlatformMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PlatformCryptoSession"
.end annotation


# instance fields
.field protected mCryptoSession:Landroid/media/MediaDrm$CryptoSession;

.field final synthetic this$0:Lcom/netflix/mediaclient/drm/PlatformMediaDrm;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/drm/PlatformMediaDrm;Landroid/media/MediaDrm$CryptoSession;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm$PlatformCryptoSession;->this$0:Lcom/netflix/mediaclient/drm/PlatformMediaDrm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p2, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm$PlatformCryptoSession;->mCryptoSession:Landroid/media/MediaDrm$CryptoSession;

    return-void
.end method


# virtual methods
.method public decrypt([B[B[B)[B
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm$PlatformCryptoSession;->mCryptoSession:Landroid/media/MediaDrm$CryptoSession;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaDrm$CryptoSession;->decrypt([B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public encrypt([B[B[B)[B
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm$PlatformCryptoSession;->mCryptoSession:Landroid/media/MediaDrm$CryptoSession;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaDrm$CryptoSession;->encrypt([B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public sign([B[B)[B
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm$PlatformCryptoSession;->mCryptoSession:Landroid/media/MediaDrm$CryptoSession;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm$CryptoSession;->sign([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public verify([B[B[B)Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm$PlatformCryptoSession;->mCryptoSession:Landroid/media/MediaDrm$CryptoSession;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaDrm$CryptoSession;->verify([B[B[B)Z

    move-result p1

    return p1
.end method
