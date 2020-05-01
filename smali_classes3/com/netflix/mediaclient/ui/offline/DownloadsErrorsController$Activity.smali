.class public final Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController$Activity;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "DownloadsErrorsController"

    .line 30
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadsErrorsController$Activity;-><init>()V

    return-void
.end method
