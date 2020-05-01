.class public abstract Lo/HK;
.super Lo/GR;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/HK$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/GR<",
        "Lo/HK$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Ljava/lang/String;

.field private j:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lo/GR;-><init>()V

    .line 24
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    iput-object v0, p0, Lo/HK;->j:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lo/HK;->j:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    return-void
.end method

.method protected b()I
    .locals 1

    .line 19
    sget v0, Lo/GS$FragmentManager;->q:I

    return v0
.end method

.method public b(Lo/HK$TaskDescription;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lo/HK$TaskDescription;->a()Lo/GridView;

    move-result-object p1

    invoke-virtual {p1}, Lo/GridView;->i()V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lo/HK$TaskDescription;

    invoke-virtual {p0, p1}, Lo/HK;->b(Lo/HK$TaskDescription;)V

    return-void
.end method

.method public c(Lo/HK$TaskDescription;)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lo/HK;->f:Ljava/lang/String;

    .line 31
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 32
    invoke-virtual {p1}, Lo/HK$TaskDescription;->a()Lo/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/GridView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 34
    :cond_2
    invoke-virtual {p1}, Lo/HK$TaskDescription;->a()Lo/GridView;

    move-result-object v1

    new-instance v3, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    invoke-virtual {v3, v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->h(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/GridView;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 37
    :goto_2
    invoke-virtual {p1}, Lo/HK$TaskDescription;->a()Lo/GridView;

    move-result-object p1

    iget-object v0, p0, Lo/HK;->j:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;->a()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/GridView;->setAspectRatio(Ljava/lang/Float;)V

    return-void
.end method

.method public bridge synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 17
    check-cast p1, Lo/HK$TaskDescription;

    invoke-virtual {p0, p1}, Lo/HK;->c(Lo/HK$TaskDescription;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lo/HK$TaskDescription;

    invoke-virtual {p0, p1}, Lo/HK;->c(Lo/HK$TaskDescription;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lo/HK;->f:Ljava/lang/String;

    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 17
    check-cast p1, Lo/HK$TaskDescription;

    invoke-virtual {p0, p1}, Lo/HK;->b(Lo/HK$TaskDescription;)V

    return-void
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lo/HK;->p()Lo/HK$TaskDescription;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method

.method protected p()Lo/HK$TaskDescription;
    .locals 1

    .line 21
    new-instance v0, Lo/HK$TaskDescription;

    invoke-direct {v0}, Lo/HK$TaskDescription;-><init>()V

    return-object v0
.end method

.method public final q()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/HK;->j:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/HK;->f:Ljava/lang/String;

    return-object v0
.end method
