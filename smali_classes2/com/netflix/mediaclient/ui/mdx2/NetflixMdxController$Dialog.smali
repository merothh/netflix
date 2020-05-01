.class public final Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$Dialog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/android/mdxpanel/MdxPanelController$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/pJ;

.field final synthetic c:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

.field final synthetic d:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Lo/pJ;Landroid/graphics/BitmapFactory$Options;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/pJ;",
            "Landroid/graphics/BitmapFactory$Options;",
            ")V"
        }
    .end annotation

    .line 683
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$Dialog;->c:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$Dialog;->b:Lo/pJ;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$Dialog;->d:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 685
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$Dialog;->b:Lo/pJ;

    invoke-virtual {v0, p1}, Lo/pJ;->a(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 688
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$Dialog;->d:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$Dialog;->d:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v3, p1, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 689
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$Dialog;->d:Landroid/graphics/BitmapFactory$Options;

    iget-object p1, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$Dialog;->c:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$Dialog;->d:Landroid/graphics/BitmapFactory$Options;

    iget-object v1, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_0
    check-cast v0, Landroid/graphics/drawable/Drawable;

    :cond_1
    return-object v0
.end method
