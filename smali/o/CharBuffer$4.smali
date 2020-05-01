.class Lo/CharBuffer$4;
.super Lo/Charset;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CharBuffer;->e(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/View;

.field final synthetic d:Lo/CharBuffer;


# direct methods
.method constructor <init>(Lo/CharBuffer;Landroid/view/View;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lo/CharBuffer$4;->d:Lo/CharBuffer;

    iput-object p2, p0, Lo/CharBuffer$4;->b:Landroid/view/View;

    invoke-direct {p0}, Lo/Charset;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/CharsetDecoder;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lo/CharBuffer$4;->b:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lo/DSAParams;->a(Landroid/view/View;F)V

    .line 136
    iget-object v0, p0, Lo/CharBuffer$4;->b:Landroid/view/View;

    invoke-static {v0}, Lo/DSAParams;->b(Landroid/view/View;)V

    .line 137
    invoke-virtual {p1, p0}, Lo/CharsetDecoder;->removeListener(Lo/CharsetDecoder$StateListAnimator;)Lo/CharsetDecoder;

    return-void
.end method
