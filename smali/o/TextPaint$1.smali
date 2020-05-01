.class Lo/TextPaint$1;
.super Lo/KeyListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/TextPaint;->c()Lo/KeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/KeyListener<",
        "TE;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/TextPaint;


# direct methods
.method constructor <init>(Lo/TextPaint;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lo/TextPaint$1;->c:Lo/TextPaint;

    invoke-direct {p0}, Lo/KeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 678
    iget-object v0, p0, Lo/TextPaint$1;->c:Lo/TextPaint;

    invoke-virtual {v0}, Lo/TextPaint;->clear()V

    return-void
.end method

.method protected b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TE;TE;>;"
        }
    .end annotation

    .line 658
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 663
    iget-object p2, p0, Lo/TextPaint$1;->c:Lo/TextPaint;

    invoke-virtual {p2, p1}, Lo/TextPaint;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected c()I
    .locals 1

    .line 638
    iget-object v0, p0, Lo/TextPaint$1;->c:Lo/TextPaint;

    iget v0, v0, Lo/TextPaint;->c:I

    return v0
.end method

.method protected d(Ljava/lang/Object;)I
    .locals 1

    .line 653
    iget-object v0, p0, Lo/TextPaint$1;->c:Lo/TextPaint;

    invoke-virtual {v0, p1}, Lo/TextPaint;->e(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected d(I)V
    .locals 1

    .line 673
    iget-object v0, p0, Lo/TextPaint$1;->c:Lo/TextPaint;

    invoke-virtual {v0, p1}, Lo/TextPaint;->c(I)Ljava/lang/Object;

    return-void
.end method

.method protected e(Ljava/lang/Object;)I
    .locals 1

    .line 648
    iget-object v0, p0, Lo/TextPaint$1;->c:Lo/TextPaint;

    invoke-virtual {v0, p1}, Lo/TextPaint;->e(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected e(II)Ljava/lang/Object;
    .locals 0

    .line 643
    iget-object p2, p0, Lo/TextPaint$1;->c:Lo/TextPaint;

    iget-object p2, p2, Lo/TextPaint;->e:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1
.end method

.method protected e(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 668
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "not a map"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
