.class Lo/BiConsumer$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/OfPrimitive$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BiConsumer;->e(Lo/OfPrimitive;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/BiConsumer;


# direct methods
.method constructor <init>(Lo/BiConsumer;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lo/BiConsumer$2;->a:Lo/BiConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/OfPrimitive;)V
    .locals 1

    .line 397
    iget-object p1, p0, Lo/BiConsumer$2;->a:Lo/BiConsumer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/BiConsumer;->d(Lo/BiConsumer;Z)Z

    return-void
.end method

.method public b(Lo/OfPrimitive;)V
    .locals 1

    .line 402
    iget-object p1, p0, Lo/BiConsumer$2;->a:Lo/BiConsumer;

    invoke-virtual {p1}, Lo/BiConsumer;->hashCode()I

    move-result v0

    invoke-static {p1, v0}, Lo/BiConsumer;->e(Lo/BiConsumer;I)I

    .line 403
    iget-object p1, p0, Lo/BiConsumer$2;->a:Lo/BiConsumer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/BiConsumer;->d(Lo/BiConsumer;Z)Z

    return-void
.end method
