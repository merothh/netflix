.class Lcom/netflix/mediaclient/drm/PlatformMediaDrm$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/drm/PlatformMediaDrm;->setOnEventListener(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$OnEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/drm/PlatformMediaDrm;

.field final synthetic val$listener:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$OnEventListener;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/drm/PlatformMediaDrm;Lcom/netflix/mediaclient/drm/NetflixMediaDrm$OnEventListener;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm$1;->this$0:Lcom/netflix/mediaclient/drm/PlatformMediaDrm;

    iput-object p2, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm$1;->val$listener:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$OnEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 6

    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm$1;->val$listener:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$OnEventListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/drm/PlatformMediaDrm$1;->this$0:Lcom/netflix/mediaclient/drm/PlatformMediaDrm;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/drm/NetflixMediaDrm$OnEventListener;->onEvent(Lcom/netflix/mediaclient/drm/NetflixMediaDrm;[BII[B)V

    return-void
.end method
