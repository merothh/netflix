.class final Lo/UQ$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/UQ;->c(Z)V
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
.field final synthetic c:Lo/UQ;


# direct methods
.method constructor <init>(Lo/UQ;)V
    .locals 0

    iput-object p1, p0, Lo/UQ$Application;->c:Lo/UQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lo/UQ$Application;->c(Ljava/lang/Integer;)V

    return-void
.end method

.method public final c(Ljava/lang/Integer;)V
    .locals 3

    .line 153
    iget-object v0, p0, Lo/UQ$Application;->c:Lo/UQ;

    invoke-static {v0}, Lo/UQ;->c(Lo/UQ;)Lo/UI;

    move-result-object v0

    .line 154
    new-instance v1, Lo/UP$Typeface;

    const-string v2, "it"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v1, p1}, Lo/UP$Typeface;-><init>(I)V

    check-cast v1, Lo/UP;

    .line 153
    invoke-interface {v0, v1}, Lo/UI;->c(Lo/UP;)V

    return-void
.end method
