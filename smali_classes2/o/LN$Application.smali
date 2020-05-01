.class final Lo/LN$Application;
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
        "Lo/agg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/agg;

.field final synthetic c:Lo/LN;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/LN;Lo/agg;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/LN$Application;->c:Lo/LN;

    iput-object p2, p0, Lo/LN$Application;->b:Lo/agg;

    iput-object p3, p0, Lo/LN$Application;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/agg;)V
    .locals 3

    .line 114
    iget-object v0, p0, Lo/LN$Application;->c:Lo/LN;

    iget-object v1, p0, Lo/LN$Application;->b:Lo/agg;

    iget-object v2, p0, Lo/LN$Application;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lo/LN;->b(Lo/LN;Lo/agg;Ljava/lang/String;Lo/agg;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Lo/agg;

    invoke-virtual {p0, p1}, Lo/LN$Application;->a(Lo/agg;)V

    return-void
.end method
