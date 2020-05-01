.class public final Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolderWithOriginalBranding$loadTitleImage$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YC$Activity;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/YC$Activity;


# direct methods
.method public constructor <init>(Lo/YC$Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolderWithOriginalBranding$loadTitleImage$1;->a:Lo/YC$Activity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolderWithOriginalBranding$loadTitleImage$1;->a:Lo/YC$Activity;

    invoke-static {v0}, Lo/YC$Activity;->c(Lo/YC$Activity;)Lo/DayPickerPagerAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/DayPickerPagerAdapter;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 358
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolderWithOriginalBranding$loadTitleImage$1;->a:Lo/YC$Activity;

    invoke-static {v0}, Lo/YC$Activity;->f(Lo/YC$Activity;)Lo/CompatibilityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/CompatibilityInfo;->close()V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolderWithOriginalBranding$loadTitleImage$1;->a:Lo/YC$Activity;

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    invoke-static {v0, p1}, Lo/YC$Activity;->b(Lo/YC$Activity;Lo/CompatibilityInfo;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 155
    check-cast p1, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/previews/PreviewsTitleBarAdapter$PreviewsTitleBarViewHolderWithOriginalBranding$loadTitleImage$1;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
