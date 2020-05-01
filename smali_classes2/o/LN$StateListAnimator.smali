.class final Lo/LN$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/LN;->e(Lo/agg;)V
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/LN;

.field final synthetic d:Lo/agg;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/LN;Lo/agg;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/LN$StateListAnimator;->c:Lo/LN;

    iput-object p2, p0, Lo/LN$StateListAnimator;->d:Lo/agg;

    iput-object p3, p0, Lo/LN$StateListAnimator;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lo/LN$StateListAnimator;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 3

    .line 117
    sget-object p1, Lo/LN;->a:Lo/LN$ActionBar;

    check-cast p1, Lo/MessagePdu;

    .line 118
    iget-object p1, p0, Lo/LN$StateListAnimator;->c:Lo/LN;

    iget-object v0, p0, Lo/LN$StateListAnimator;->d:Lo/agg;

    iget-object v1, p0, Lo/LN$StateListAnimator;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lo/LN;->b(Lo/LN;Lo/agg;Ljava/lang/String;Lo/agg;)V

    return-void
.end method
