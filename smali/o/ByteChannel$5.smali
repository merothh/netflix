.class Lo/ByteChannel$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CharsetDecoder$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ByteChannel;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/ByteChannel;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lo/ByteChannel;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lo/ByteChannel$5;->c:Lo/ByteChannel;

    iput-object p2, p0, Lo/ByteChannel$5;->d:Landroid/view/View;

    iput-object p3, p0, Lo/ByteChannel$5;->e:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/CharsetDecoder;)V
    .locals 0

    return-void
.end method

.method public b(Lo/CharsetDecoder;)V
    .locals 0

    return-void
.end method

.method public c(Lo/CharsetDecoder;)V
    .locals 0

    return-void
.end method

.method public d(Lo/CharsetDecoder;)V
    .locals 3

    .line 155
    invoke-virtual {p1, p0}, Lo/CharsetDecoder;->removeListener(Lo/CharsetDecoder$StateListAnimator;)Lo/CharsetDecoder;

    .line 156
    iget-object p1, p0, Lo/ByteChannel$5;->d:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object p1, p0, Lo/ByteChannel$5;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 159
    iget-object v2, p0, Lo/ByteChannel$5;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
