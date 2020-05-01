.class public final Lo/DC$PictureInPictureParams;
.super Lo/DC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PictureInPictureParams"
.end annotation


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "playbackDeviceCapabilities"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, v0}, Lo/DC;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/DC$PictureInPictureParams;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lo/DC$PictureInPictureParams;->d:Ljava/lang/String;

    return-object v0
.end method
