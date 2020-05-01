.class public Lcom/netflix/mediaclient/media/BifManager$Utils;
.super Ljava/lang/Object;
.source "BifManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showBifInView(Lcom/netflix/mediaclient/media/BifManager;ILandroid/widget/ImageView;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/media/BifManager;->getIndexFrame(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/media/BifManager$Utils;->showBifInView(Ljava/nio/ByteBuffer;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static showBifInView(Ljava/nio/ByteBuffer;Landroid/widget/ImageView;)V
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo v0, "BifManager"

    const-string/jumbo v1, "View is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-nez p0, :cond_1

    const-string/jumbo v0, "BifManager"

    const-string/jumbo v1, "ByteBuffer is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "BifManager"

    const-string/jumbo v1, "decoded bif bitmap is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
