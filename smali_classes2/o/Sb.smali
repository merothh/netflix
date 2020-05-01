.class public final Lo/Sb;
.super Lo/of;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/nS;Lo/Sc;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineAgent"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartdownloadBrowseRepo"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lo/of;-><init>(Landroid/content/Context;Lo/nS;Lo/Sc;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->g:I

    invoke-virtual {p0, p1, p2, v0}, Lo/Sb;->e(Ljava/lang/String;II)V

    return-void
.end method
