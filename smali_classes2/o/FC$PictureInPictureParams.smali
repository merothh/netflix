.class public final Lo/FC$PictureInPictureParams;
.super Lo/FC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PictureInPictureParams"
.end annotation


# instance fields
.field private final a:Lcom/netflix/mediaclient/android/app/Status;

.field private final b:Lo/Bc;


# direct methods
.method public constructor <init>(Lo/Bc;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "videoDetails"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0}, Lo/FC;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/FC$PictureInPictureParams;->b:Lo/Bc;

    iput-object p2, p0, Lo/FC$PictureInPictureParams;->a:Lcom/netflix/mediaclient/android/app/Status;

    return-void
.end method


# virtual methods
.method public final d()Lo/Bc;
    .locals 1

    .line 82
    iget-object v0, p0, Lo/FC$PictureInPictureParams;->b:Lo/Bc;

    return-object v0
.end method
