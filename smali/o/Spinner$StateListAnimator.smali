.class final Lo/Spinner$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Spinner;->show()V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/Spinner;


# direct methods
.method constructor <init>(Lo/Spinner;)V
    .locals 0

    iput-object p1, p0, Lo/Spinner$StateListAnimator;->a:Lo/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lo/Spinner$StateListAnimator;->e(Ljava/lang/Integer;)V

    return-void
.end method

.method public final e(Ljava/lang/Integer;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lo/Spinner$StateListAnimator;->a:Lo/Spinner;

    invoke-virtual {p1}, Lo/Spinner;->dismiss()V

    return-void
.end method
