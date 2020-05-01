.class public final Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIView$render$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alS;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YH;->a(Lo/YN;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alS<",
        "Landroid/graphics/Bitmap;",
        "Lcom/netflix/android/imageloader/api/ImageDataSource;",
        "Landroid/graphics/Bitmap;",
        "Lcom/netflix/android/imageloader/api/ImageDataSource;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/YN;

.field final synthetic c:Lo/YH;


# direct methods
.method public constructor <init>(Lo/YH;Lo/YN;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIView$render$1;->c:Lo/YH;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIView$render$1;->b:Lo/YN;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Landroid/graphics/Bitmap;

    check-cast p2, Lcom/netflix/android/imageloader/api/ImageDataSource;

    check-cast p3, Landroid/graphics/Bitmap;

    check-cast p4, Lcom/netflix/android/imageloader/api/ImageDataSource;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIView$render$1;->b(Landroid/graphics/Bitmap;Lcom/netflix/android/imageloader/api/ImageDataSource;Landroid/graphics/Bitmap;Lcom/netflix/android/imageloader/api/ImageDataSource;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method

.method public final b(Landroid/graphics/Bitmap;Lcom/netflix/android/imageloader/api/ImageDataSource;Landroid/graphics/Bitmap;Lcom/netflix/android/imageloader/api/ImageDataSource;)V
    .locals 5

    const-string v0, "boxArtBitmap"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boxArtDataSource"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleTreatmentBitmap"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleTreatmentDataSource"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIView$render$1;->c:Lo/YH;

    .line 173
    new-instance v1, Lo/YI;

    .line 175
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIView$render$1;->b:Lo/YN;

    invoke-virtual {v2}, Lo/YN;->i()Z

    move-result v2

    .line 176
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIView$render$1;->b:Lo/YN;

    invoke-virtual {v3}, Lo/YN;->k()I

    move-result v3

    .line 177
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIView$render$1;->b:Lo/YN;

    invoke-virtual {v4}, Lo/YN;->n()I

    move-result v4

    .line 173
    invoke-direct {v1, p1, v2, v3, v4}, Lo/YI;-><init>(Landroid/graphics/Bitmap;ZII)V

    .line 179
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIView$render$1;->c:Lo/YH;

    invoke-static {p1}, Lo/YH;->e(Lo/YH;)Lo/DayPickerPagerAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/DayPickerPagerAdapter;->setImageDataSource(Lcom/netflix/android/imageloader/api/ImageDataSource;)V

    .line 180
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIView$render$1;->c:Lo/YH;

    invoke-static {p1}, Lo/YH;->e(Lo/YH;)Lo/DayPickerPagerAdapter;

    move-result-object p1

    move-object p2, v1

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Lo/DayPickerPagerAdapter;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIView$render$1;->c:Lo/YH;

    invoke-virtual {p1}, Lo/YH;->i()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {v1}, Lo/YI;->c()Lo/YI$Application$Activity;

    move-result-object p2

    check-cast p2, Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 178
    invoke-static {v0, v1}, Lo/YH;->e(Lo/YH;Lo/YI;)V

    .line 184
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIView$render$1;->c:Lo/YH;

    invoke-static {p1}, Lo/YH;->a(Lo/YH;)Lo/GridView;

    move-result-object p1

    invoke-virtual {p1, p4}, Lo/GridView;->setImageDataSource(Lcom/netflix/android/imageloader/api/ImageDataSource;)V

    .line 185
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/previews/lolomo/PreviewsListItemUIView$render$1;->c:Lo/YH;

    invoke-static {p1}, Lo/YH;->a(Lo/YH;)Lo/GridView;

    move-result-object p1

    invoke-virtual {p1, p3}, Lo/GridView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
