.class public abstract Lo/aad;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aad$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/aad$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field private g:I

.field private j:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/aad$ActionBar;)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget v0, p0, Lo/aad;->g:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    invoke-virtual {p1}, Lo/aad$ActionBar;->b()Lo/GridView;

    move-result-object p1

    .line 35
    invoke-virtual {p1, v1}, Lo/GridView;->setVisibility(I)V

    .line 37
    new-instance v1, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v1}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    iget-object v2, p0, Lo/aad;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v3, "boxArtImageUrl"

    invoke-static {v3}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1, v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->d(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/GridView;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 38
    iget-object v0, p0, Lo/aad;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v1, "videoTitle"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/GridView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lo/aad;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/GridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Lo/GridView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method protected b()I
    .locals 1

    .line 44
    sget v0, Lo/Zt$LoaderManager;->b:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    .line 27
    iput p1, p0, Lo/aad;->g:I

    return-void
.end method

.method public final c(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lo/aad;->j:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 17
    check-cast p1, Lo/aad$ActionBar;

    invoke-virtual {p0, p1}, Lo/aad;->a(Lo/aad$ActionBar;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lo/aad$ActionBar;

    invoke-virtual {p0, p1}, Lo/aad;->a(Lo/aad$ActionBar;)V

    return-void
.end method

.method public e(III)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final h()Landroid/view/View$OnClickListener;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/aad;->j:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final k()I
    .locals 1

    .line 27
    iget v0, p0, Lo/aad;->g:I

    return v0
.end method
