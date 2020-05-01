.class Lo/Kh$4$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Kh$4;->run(Lo/Am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Kh$4;


# direct methods
.method constructor <init>(Lo/Kh$4;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lo/Kh$4$3;->d:Lo/Kh$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;)V
    .locals 1

    .line 300
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 301
    iget-object p1, p0, Lo/Kh$4$3;->d:Lo/Kh$4;

    iget-object p1, p1, Lo/Kh$4;->b:Lo/Kh;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/Kh;->d(Lo/Kh;Z)V

    .line 302
    iget-object p1, p0, Lo/Kh$4$3;->d:Lo/Kh$4;

    iget-object p1, p1, Lo/Kh$4;->b:Lo/Kh;

    iget-object p1, p1, Lo/Kh;->k:Lo/EditText;

    if-eqz p1, :cond_0

    .line 303
    iget-object p1, p0, Lo/Kh$4$3;->d:Lo/Kh$4;

    iget-object p1, p1, Lo/Kh$4;->b:Lo/Kh;

    iget-object p1, p1, Lo/Kh;->k:Lo/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/EditText;->c(Z)V

    :cond_0
    return-void
.end method

.method public c(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;I)V
    .locals 0

    const-string p1, "GalleryLoMoFrag"

    const-string p2, "onFetchSuccess"

    .line 322
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object p1, p0, Lo/Kh$4$3;->d:Lo/Kh$4;

    iget-object p1, p1, Lo/Kh$4;->b:Lo/Kh;

    iget-object p1, p1, Lo/Kh;->k:Lo/EditText;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 324
    iget-object p1, p0, Lo/Kh$4$3;->d:Lo/Kh$4;

    iget-object p1, p1, Lo/Kh$4;->b:Lo/Kh;

    iget-object p1, p1, Lo/Kh;->k:Lo/EditText;

    invoke-virtual {p1, p2}, Lo/EditText;->a(Z)V

    .line 326
    :cond_0
    iget-object p1, p0, Lo/Kh$4$3;->d:Lo/Kh$4;

    iget-object p1, p1, Lo/Kh$4;->b:Lo/Kh;

    iget-object p1, p1, Lo/Kh;->j:Lo/ParcelableParcel;

    invoke-virtual {p1, p2}, Lo/ParcelableParcel;->setVisibility(I)V

    .line 327
    iget-object p1, p0, Lo/Kh$4$3;->d:Lo/Kh$4;

    iget-object p1, p1, Lo/Kh$4;->b:Lo/Kh;

    invoke-virtual {p1}, Lo/Kh;->z()V

    return-void
.end method

.method public e(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;I)V
    .locals 1

    const-string p2, "GalleryLoMoFrag"

    const-string v0, "onFetchError"

    .line 310
    invoke-static {p2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 313
    iget-object p1, p0, Lo/Kh$4$3;->d:Lo/Kh$4;

    iget-object p1, p1, Lo/Kh$4;->b:Lo/Kh;

    iget-object p1, p1, Lo/Kh;->k:Lo/EditText;

    if-eqz p1, :cond_0

    .line 314
    iget-object p1, p0, Lo/Kh$4$3;->d:Lo/Kh$4;

    iget-object p1, p1, Lo/Kh$4;->b:Lo/Kh;

    iget-object p1, p1, Lo/Kh;->j:Lo/ParcelableParcel;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lo/ParcelableParcel;->setVisibility(I)V

    .line 315
    iget-object p1, p0, Lo/Kh$4$3;->d:Lo/Kh$4;

    iget-object p1, p1, Lo/Kh$4;->b:Lo/Kh;

    iget-object p1, p1, Lo/Kh;->k:Lo/EditText;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lo/EditText;->b(Z)V

    :cond_0
    return-void
.end method
