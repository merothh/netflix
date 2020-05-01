.class final Lo/ZP$StateListAnimator$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZP$StateListAnimator;-><init>(Lo/ZP;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/ZP$StateListAnimator;


# direct methods
.method constructor <init>(Lo/ZP$StateListAnimator;)V
    .locals 0

    iput-object p1, p0, Lo/ZP$StateListAnimator$2;->b:Lo/ZP$StateListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 239
    check-cast p1, Lo/akj;

    invoke-virtual {p0, p1}, Lo/ZP$StateListAnimator$2;->d(Lo/akj;)V

    return-void
.end method

.method public final d(Lo/akj;)V
    .locals 1

    .line 266
    iget-object p1, p0, Lo/ZP$StateListAnimator$2;->b:Lo/ZP$StateListAnimator;

    iget-object p1, p1, Lo/ZP$StateListAnimator;->b:Lo/ZP;

    iget-object v0, p0, Lo/ZP$StateListAnimator$2;->b:Lo/ZP$StateListAnimator;

    invoke-virtual {v0}, Lo/ZP$StateListAnimator;->getAdapterPosition()I

    move-result v0

    invoke-static {p1, v0}, Lo/ZP;->e(Lo/ZP;I)V

    return-void
.end method
