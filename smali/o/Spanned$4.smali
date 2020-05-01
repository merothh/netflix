.class Lo/Spanned$4;
.super Lo/KeyListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Spanned;->e()Lo/KeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/KeyListener<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/Spanned;


# direct methods
.method constructor <init>(Lo/Spanned;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lo/Spanned$4;->d:Lo/Spanned;

    invoke-direct {p0}, Lo/KeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 119
    iget-object v0, p0, Lo/Spanned$4;->d:Lo/Spanned;

    invoke-virtual {v0}, Lo/Spanned;->clear()V

    return-void
.end method

.method protected b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lo/Spanned$4;->d:Lo/Spanned;

    return-object v0
.end method

.method protected b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lo/Spanned$4;->d:Lo/Spanned;

    invoke-virtual {v0, p1, p2}, Lo/Spanned;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected c()I
    .locals 1

    .line 79
    iget-object v0, p0, Lo/Spanned$4;->d:Lo/Spanned;

    iget v0, v0, Lo/Spanned;->h:I

    return v0
.end method

.method protected d(Ljava/lang/Object;)I
    .locals 1

    .line 94
    iget-object v0, p0, Lo/Spanned$4;->d:Lo/Spanned;

    invoke-virtual {v0, p1}, Lo/Spanned;->e(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected d(I)V
    .locals 1

    .line 114
    iget-object v0, p0, Lo/Spanned$4;->d:Lo/Spanned;

    invoke-virtual {v0, p1}, Lo/Spanned;->e(I)Ljava/lang/Object;

    return-void
.end method

.method protected e(Ljava/lang/Object;)I
    .locals 1

    .line 89
    iget-object v0, p0, Lo/Spanned$4;->d:Lo/Spanned;

    invoke-virtual {v0, p1}, Lo/Spanned;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected e(II)Ljava/lang/Object;
    .locals 1

    .line 84
    iget-object v0, p0, Lo/Spanned$4;->d:Lo/Spanned;

    iget-object v0, v0, Lo/Spanned;->g:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected e(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lo/Spanned$4;->d:Lo/Spanned;

    invoke-virtual {v0, p1, p2}, Lo/Spanned;->b(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
