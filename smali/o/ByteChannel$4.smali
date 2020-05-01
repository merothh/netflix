.class Lo/ByteChannel$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CharsetDecoder$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ByteChannel;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:Ljava/util/ArrayList;

.field final synthetic i:Ljava/util/ArrayList;

.field final synthetic j:Lo/ByteChannel;


# direct methods
.method constructor <init>(Lo/ByteChannel;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lo/ByteChannel$4;->j:Lo/ByteChannel;

    iput-object p2, p0, Lo/ByteChannel$4;->d:Ljava/lang/Object;

    iput-object p3, p0, Lo/ByteChannel$4;->e:Ljava/util/ArrayList;

    iput-object p4, p0, Lo/ByteChannel$4;->c:Ljava/lang/Object;

    iput-object p5, p0, Lo/ByteChannel$4;->b:Ljava/util/ArrayList;

    iput-object p6, p0, Lo/ByteChannel$4;->a:Ljava/lang/Object;

    iput-object p7, p0, Lo/ByteChannel$4;->i:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/CharsetDecoder;)V
    .locals 3

    .line 222
    iget-object p1, p0, Lo/ByteChannel$4;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 223
    iget-object v1, p0, Lo/ByteChannel$4;->j:Lo/ByteChannel;

    iget-object v2, p0, Lo/ByteChannel$4;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Lo/ByteChannel;->d(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 225
    :cond_0
    iget-object p1, p0, Lo/ByteChannel$4;->c:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 226
    iget-object v1, p0, Lo/ByteChannel$4;->j:Lo/ByteChannel;

    iget-object v2, p0, Lo/ByteChannel$4;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Lo/ByteChannel;->d(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 228
    :cond_1
    iget-object p1, p0, Lo/ByteChannel$4;->a:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 229
    iget-object v1, p0, Lo/ByteChannel$4;->j:Lo/ByteChannel;

    iget-object v2, p0, Lo/ByteChannel$4;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Lo/ByteChannel;->d(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
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
    .locals 0

    return-void
.end method
