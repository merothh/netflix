.class Lo/ByteChannel$1;
.super Lo/CharsetDecoder$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ByteChannel;->e(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Landroid/graphics/Rect;

.field final synthetic e:Lo/ByteChannel;


# direct methods
.method constructor <init>(Lo/ByteChannel;Landroid/graphics/Rect;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lo/ByteChannel$1;->e:Lo/ByteChannel;

    iput-object p2, p0, Lo/ByteChannel$1;->c:Landroid/graphics/Rect;

    invoke-direct {p0}, Lo/CharsetDecoder$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/CharsetDecoder;)Landroid/graphics/Rect;
    .locals 0

    .line 312
    iget-object p1, p0, Lo/ByteChannel$1;->c:Landroid/graphics/Rect;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    iget-object p1, p0, Lo/ByteChannel$1;->c:Landroid/graphics/Rect;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
