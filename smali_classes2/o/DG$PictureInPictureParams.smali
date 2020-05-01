.class public final Lo/DG$PictureInPictureParams;
.super Lo/DG;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PictureInPictureParams"
.end annotation


# instance fields
.field private final a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

.field private final b:Lo/Bc;

.field private final e:Lo/ListView;


# direct methods
.method public constructor <init>(Lo/ListView;Lo/Bc;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 1

    const-string v0, "restartButton"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "details"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playContext"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0}, Lo/DG;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/DG$PictureInPictureParams;->e:Lo/ListView;

    iput-object p2, p0, Lo/DG$PictureInPictureParams;->b:Lo/Bc;

    iput-object p3, p0, Lo/DG$PictureInPictureParams;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-void
.end method


# virtual methods
.method public final a()Lo/Bc;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/DG$PictureInPictureParams;->b:Lo/Bc;

    return-object v0
.end method

.method public final b()Lcom/netflix/mediaclient/servicemgr/PlayContext;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/DG$PictureInPictureParams;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    return-object v0
.end method
