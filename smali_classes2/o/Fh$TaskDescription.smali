.class final Lo/Fh$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Fh;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/Fh;


# direct methods
.method constructor <init>(Lo/Fh;)V
    .locals 0

    iput-object p1, p0, Lo/Fh$TaskDescription;->c:Lo/Fh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 5

    .line 74
    iget-object v0, p0, Lo/Fh$TaskDescription;->c:Lo/Fh;

    invoke-virtual {v0}, Lo/Fh;->f()Lo/GridView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/GridView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    iget-object v0, p0, Lo/Fh$TaskDescription;->c:Lo/Fh;

    invoke-virtual {v0}, Lo/Fh;->f()Lo/GridView;

    move-result-object v0

    iget-object v1, p0, Lo/Fh$TaskDescription;->c:Lo/Fh;

    invoke-static {v1}, Lo/Fh;->c(Lo/Fh;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lo/GridView;->e(Lo/GridView;Landroid/graphics/drawable/Drawable;IILjava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lo/Fh$TaskDescription;->c:Lo/Fh;

    invoke-static {v0}, Lo/Fh;->d(Lo/Fh;)Lo/CompatibilityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/CompatibilityInfo;->close()V

    .line 77
    :cond_0
    iget-object v0, p0, Lo/Fh$TaskDescription;->c:Lo/Fh;

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    invoke-static {v0, p1}, Lo/Fh;->d(Lo/Fh;Lo/CompatibilityInfo;)V

    .line 79
    iget-object p1, p0, Lo/Fh$TaskDescription;->c:Lo/Fh;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/Fh;->d(Lo/Fh;Z)V

    .line 80
    iget-object p1, p0, Lo/Fh$TaskDescription;->c:Lo/Fh;

    invoke-virtual {p1}, Lo/Fh;->f()Lo/GridView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lo/GridView;->setVisibility(I)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    invoke-virtual {p0, p1}, Lo/Fh$TaskDescription;->a(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    return-void
.end method
