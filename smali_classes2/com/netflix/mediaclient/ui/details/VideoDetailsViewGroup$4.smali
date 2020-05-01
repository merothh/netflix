.class Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;->c:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 301
    invoke-static {}, Lo/fc;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;->c:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->e:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Application;

    if-eqz p1, :cond_0

    .line 302
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;->c:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->e:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Application;

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Application;->b()V

    .line 304
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;->c:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    sget-object v0, Lcom/netflix/cl/model/AppView;->storyArt:Lcom/netflix/cl/model/AppView;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->c:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    const-string v2, "detailsPage"

    invoke-static {p1, v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->b(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/servicemgr/PlayLocationType;Ljava/lang/String;)V

    return-void
.end method
