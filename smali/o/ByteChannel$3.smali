.class Lo/ByteChannel$3;
.super Lo/CharsetDecoder$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ByteChannel;->c(Ljava/lang/Object;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/ByteChannel;

.field final synthetic e:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lo/ByteChannel;Landroid/graphics/Rect;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lo/ByteChannel$3;->b:Lo/ByteChannel;

    iput-object p2, p0, Lo/ByteChannel$3;->e:Landroid/graphics/Rect;

    invoke-direct {p0}, Lo/CharsetDecoder$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/CharsetDecoder;)Landroid/graphics/Rect;
    .locals 0

    .line 91
    iget-object p1, p0, Lo/ByteChannel$3;->e:Landroid/graphics/Rect;

    return-object p1
.end method
