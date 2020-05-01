.class public Lo/DN;
.super Lo/MultiAutoCompleteTextView;
.source ""

# interfaces
.implements Lo/JsDialogHelper;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DN$Application;
    }
.end annotation


# instance fields
.field private c:Lo/DN$Application;

.field protected e:Z

.field private i:Lo/JsDialogHelper$Activity;


# direct methods
.method public constructor <init>(Lo/MultiAutoCompleteTextView$Application;Lo/DN$Application;)V
    .locals 1

    .line 33
    sget-object v0, Lcom/netflix/cl/model/AppView;->episodesSelector:Lcom/netflix/cl/model/AppView;

    invoke-direct {p0, p1, v0}, Lo/MultiAutoCompleteTextView;-><init>(Lo/MultiAutoCompleteTextView$Application;Lcom/netflix/cl/model/AppView;)V

    .line 34
    invoke-static {}, Lo/aeB;->a()Z

    .line 36
    iput-object p2, p0, Lo/DN;->c:Lo/DN$Application;

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lo/DN;->e:Z

    return-void
.end method

.method protected b(I)V
    .locals 2

    .line 46
    iget-object v0, p0, Lo/DN;->c:Lo/DN$Application;

    invoke-virtual {p0}, Lo/DN;->getItemCount()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lo/DN$Application;->e(II)V

    return-void
.end method

.method protected c(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AS;",
            ">;I)V"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding episodes, count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EpisodesAdapter"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0, p1, p2}, Lo/DN;->b(Ljava/util/Collection;I)V

    return-void
.end method

.method public c(Lo/Bb;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lo/DN;->a:Lo/Bb;

    return-void
.end method

.method protected d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lo/DN;->i:Lo/JsDialogHelper$Activity;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0, p1}, Lo/JsDialogHelper$Activity;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public isLoadingData()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lo/DN;->e:Z

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public setLoadingStatusCallback(Lo/JsDialogHelper$Activity;)V
    .locals 1

    .line 61
    invoke-virtual {p0}, Lo/DN;->isLoadingData()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 62
    sget-object v0, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0}, Lo/JsDialogHelper$Activity;->a(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 64
    :cond_0
    iput-object p1, p0, Lo/DN;->i:Lo/JsDialogHelper$Activity;

    :goto_0
    return-void
.end method
