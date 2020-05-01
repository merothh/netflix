.class public abstract Lo/ET;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ET$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/ET$Application;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Landroid/view/View$OnClickListener;

.field private c:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    .line 24
    sget-object v0, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->UNKNOWN:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    iput-object v0, p0, Lo/ET;->c:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lo/ET;->g:Z

    return-void
.end method

.method public final a_(Ljava/lang/CharSequence;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lo/ET;->a:Ljava/lang/CharSequence;

    return-void
.end method

.method protected b()I
    .locals 1

    .line 32
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->fM:I

    return v0
.end method

.method public final b(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lo/ET;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public b(Lo/ET$Application;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lo/ET;->a:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lo/ET;->c:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    sget-object v2, Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;->SUBTITLES_CLOSED_CAPTIONS:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    if-ne v0, v2, :cond_0

    .line 44
    invoke-virtual {p1}, Lo/ET$Application;->a()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lo/ImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->eF:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v1, v0}, Lo/aev;->c(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 48
    :cond_0
    invoke-virtual {p1}, Lo/ET$Application;->a()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p1}, Lo/ET$Application;->a()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lo/ImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    iget-boolean v1, p0, Lo/ET;->g:Z

    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {p1}, Lo/ET$Application;->a()Lo/ImageSwitcher;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->r:I

    invoke-virtual {v1, v0, v2}, Lo/ImageSwitcher;->setTextAppearance(Landroid/content/Context;I)V

    .line 52
    invoke-virtual {p1}, Lo/ET$Application;->d()Lo/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/GridView;->setVisibility(I)V

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p1}, Lo/ET$Application;->a()Lo/ImageSwitcher;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->w:I

    invoke-virtual {v1, v0, v2}, Lo/ImageSwitcher;->setTextAppearance(Landroid/content/Context;I)V

    .line 55
    invoke-virtual {p1}, Lo/ET$Application;->d()Lo/GridView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lo/GridView;->setVisibility(I)V

    .line 58
    :goto_0
    invoke-virtual {p1}, Lo/ET$Application;->g()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lo/ET;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 17
    check-cast p1, Lo/ET$Application;

    invoke-virtual {p0, p1}, Lo/ET;->b(Lo/ET$Application;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lo/ET$Application;

    invoke-virtual {p0, p1}, Lo/ET;->b(Lo/ET$Application;)V

    return-void
.end method

.method public final e(Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lo/ET;->c:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    return-void
.end method

.method public final h()Ljava/lang/CharSequence;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/ET;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final k()Landroid/view/View$OnClickListener;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/ET;->b:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final l()Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/ET;->c:Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    return-object v0
.end method

.method public final m()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lo/ET;->g:Z

    return v0
.end method

.method public synthetic n()Lo/TimeUnit;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lo/ET;->o()Lo/ET$Application;

    move-result-object v0

    check-cast v0, Lo/TimeUnit;

    return-object v0
.end method

.method protected o()Lo/ET$Application;
    .locals 1

    .line 34
    new-instance v0, Lo/ET$Application;

    invoke-direct {v0}, Lo/ET$Application;-><init>()V

    return-object v0
.end method
