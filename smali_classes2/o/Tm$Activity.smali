.class public final Lo/Tm$Activity;
.super Lo/Dc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Tm;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Dc<",
        "Lo/JM$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/Tm;


# direct methods
.method constructor <init>(Lo/Tm;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lo/Tm$Activity;->c:Lo/Tm;

    invoke-direct {p0, p2}, Lo/Dc;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lo/JM$TaskDescription;)V
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Lo/JM$TaskDescription;->e()Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;->getUserProfiles()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    .line 140
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    const-string v3, "it"

    .line 141
    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo/Tm$Activity;->c:Lo/Tm;

    invoke-static {v3}, Lo/Tm;->a(Lo/Tm;)Lo/BC;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v2, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 140
    :goto_0
    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    if-eqz v0, :cond_3

    .line 143
    iget-object p1, p0, Lo/Tm$Activity;->c:Lo/Tm;

    check-cast v0, Lo/BC;

    invoke-static {p1, v0}, Lo/Tm;->e(Lo/Tm;Lo/BC;)V

    .line 145
    :cond_3
    iget-object p1, p0, Lo/Tm$Activity;->c:Lo/Tm;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/Tm;->e(Lo/Tm;Z)V

    .line 146
    iget-object p1, p0, Lo/Tm$Activity;->c:Lo/Tm;

    invoke-static {p1}, Lo/Tm;->b(Lo/Tm;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->pv:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lo/Tm$Activity;->c:Lo/Tm;

    invoke-virtual {p1}, Lo/Tm;->dismiss()V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 136
    check-cast p1, Lo/JM$TaskDescription;

    invoke-virtual {p0, p1}, Lo/Tm$Activity;->a(Lo/JM$TaskDescription;)V

    return-void
.end method
