.class final Lo/OS$ActionBar$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OS$ActionBar;->e(Lo/OS;)Lo/akj;
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic d:Lo/OS;

.field final synthetic e:Lo/OS$ActionBar;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/OS$ActionBar;Lo/OS;)V
    .locals 0

    iput-object p1, p0, Lo/OS$ActionBar$Activity;->a:Landroid/content/Context;

    iput-object p2, p0, Lo/OS$ActionBar$Activity;->e:Lo/OS$ActionBar;

    iput-object p3, p0, Lo/OS$ActionBar$Activity;->d:Lo/OS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;

    invoke-virtual {p0, p1}, Lo/OS$ActionBar$Activity;->c(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V

    return-void
.end method

.method public final c(Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;)V
    .locals 5

    .line 128
    iget-object v0, p0, Lo/OS$ActionBar$Activity;->e:Lo/OS$ActionBar;

    invoke-static {v0}, Lo/OS$ActionBar;->d(Lo/OS$ActionBar;)Lo/GridView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lo/OS$ActionBar$Activity;->a:Landroid/content/Context;

    const-string v3, "context"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->d()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lo/GridView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget-object v0, p0, Lo/OS$ActionBar$Activity;->e:Lo/OS$ActionBar;

    invoke-static {v0}, Lo/OS$ActionBar;->d(Lo/OS$ActionBar;)Lo/GridView;

    move-result-object v0

    iget-object v1, p0, Lo/OS$ActionBar$Activity;->e:Lo/OS$ActionBar;

    invoke-static {v1}, Lo/OS$ActionBar;->e(Lo/OS$ActionBar;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lo/GridView;->e(Lo/GridView;Landroid/graphics/drawable/Drawable;IILjava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lo/OS$ActionBar$Activity;->e:Lo/OS$ActionBar;

    invoke-static {v0}, Lo/OS$ActionBar;->a(Lo/OS$ActionBar;)Lo/CompatibilityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/CompatibilityInfo;->close()V

    .line 131
    :cond_0
    iget-object v0, p0, Lo/OS$ActionBar$Activity;->e:Lo/OS$ActionBar;

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;->e()Lo/CompatibilityInfo;

    move-result-object p1

    invoke-static {v0, p1}, Lo/OS$ActionBar;->e(Lo/OS$ActionBar;Lo/CompatibilityInfo;)V

    return-void
.end method
