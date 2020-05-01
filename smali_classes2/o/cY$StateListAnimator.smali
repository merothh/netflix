.class public Lo/cY$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StateListAnimator"
.end annotation


# instance fields
.field final synthetic a:Lo/cY;

.field b:Lo/dc$TaskDescription;

.field e:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$CryptoSession;


# direct methods
.method public constructor <init>(Lo/cY;Lcom/netflix/mediaclient/drm/NetflixMediaDrm$CryptoSession;Lo/dc$TaskDescription;)V
    .locals 0

    .line 1139
    iput-object p1, p0, Lo/cY$StateListAnimator;->a:Lo/cY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1140
    iput-object p2, p0, Lo/cY$StateListAnimator;->e:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$CryptoSession;

    .line 1141
    iput-object p3, p0, Lo/cY$StateListAnimator;->b:Lo/dc$TaskDescription;

    return-void
.end method
