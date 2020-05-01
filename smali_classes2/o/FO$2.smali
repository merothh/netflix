.class final Lo/FO$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Du$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FO;-><init>(Landroid/view/ViewGroup;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Landroid/view/View;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/FO;


# direct methods
.method constructor <init>(Lo/FO;)V
    .locals 0

    iput-object p1, p0, Lo/FO$2;->c:Lo/FO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lo/AS;)V
    .locals 3

    .line 113
    iget-object v0, p0, Lo/FO$2;->c:Lo/FO;

    new-instance v1, Lo/FJ$Activity;

    const-string v2, "episodeDetails"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1}, Lo/FJ$Activity;-><init>(Lo/AS;)V

    invoke-virtual {v0, v1}, Lo/FO;->e(Ljava/lang/Object;)V

    return-void
.end method
