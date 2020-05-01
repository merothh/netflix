.class final Lo/Do$PendingIntent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Do;->b(Landroid/view/ViewGroup;)V
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
        "Lo/DG;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/Do;


# direct methods
.method constructor <init>(Lo/Do;)V
    .locals 0

    iput-object p1, p0, Lo/Do$PendingIntent;->b:Lo/Do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Lo/DG;

    invoke-virtual {p0, p1}, Lo/Do$PendingIntent;->b(Lo/DG;)V

    return-void
.end method

.method public final b(Lo/DG;)V
    .locals 1

    .line 174
    instance-of v0, p1, Lo/DG$StateListAnimator;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lo/Do$PendingIntent;->b:Lo/Do;

    check-cast p1, Lo/DG$StateListAnimator;

    invoke-virtual {p1}, Lo/DG$StateListAnimator;->e()I

    move-result p1

    invoke-static {v0, p1}, Lo/Do;->c(Lo/Do;I)V

    :cond_0
    return-void
.end method
