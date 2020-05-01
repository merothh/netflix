.class Lo/Watchable$Activity$4;
.super Lo/Charset;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Watchable$Activity;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Watchable$Activity;

.field final synthetic e:Lo/Spanned;


# direct methods
.method constructor <init>(Lo/Watchable$Activity;Lo/Spanned;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lo/Watchable$Activity$4;->b:Lo/Watchable$Activity;

    iput-object p2, p0, Lo/Watchable$Activity$4;->e:Lo/Spanned;

    invoke-direct {p0}, Lo/Charset;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/CharsetDecoder;)V
    .locals 2

    .line 285
    iget-object v0, p0, Lo/Watchable$Activity$4;->e:Lo/Spanned;

    iget-object v1, p0, Lo/Watchable$Activity$4;->b:Lo/Watchable$Activity;

    iget-object v1, v1, Lo/Watchable$Activity;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lo/Spanned;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 286
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
