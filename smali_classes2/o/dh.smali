.class public abstract Lo/dh;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field protected a:Lo/dl;

.field protected b:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;Lo/dl;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    iput-object p1, p0, Lo/dh;->b:Lcom/netflix/mediaclient/drm/NetflixMediaDrm$ProvisionRequest;

    .line 22
    iput-object p2, p0, Lo/dh;->a:Lo/dl;

    return-void
.end method
