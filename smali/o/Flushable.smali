.class public final Lo/Flushable;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final b(Landroid/view/ViewGroup;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/Iterator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lo/Flushable$Activity;

    invoke-direct {v0, p0}, Lo/Flushable$Activity;-><init>(Landroid/view/ViewGroup;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public static final c(Landroid/view/ViewGroup;)Lo/anb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lo/anb<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lo/Flushable$ActionBar;

    invoke-direct {v0, p0}, Lo/Flushable$ActionBar;-><init>(Landroid/view/ViewGroup;)V

    check-cast v0, Lo/anb;

    return-object v0
.end method
