.class public abstract Lo/amu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/amB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/amB<",
        "Ljava/lang/Object;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lo/amu;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected a(Lo/amT;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/amT<",
            "*>;TT;TT;)Z"
        }
    .end annotation

    const-string p2, "property"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/Object;Lo/amT;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/amT<",
            "*>;TT;)V"
        }
    .end annotation

    const-string p1, "property"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lo/amu;->b:Ljava/lang/Object;

    .line 37
    invoke-virtual {p0, p2, p1, p3}, Lo/amu;->a(Lo/amT;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    iput-object p3, p0, Lo/amu;->b:Ljava/lang/Object;

    .line 41
    invoke-virtual {p0, p2, p1, p3}, Lo/amu;->d(Lo/amT;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/amT<",
            "*>;)TT;"
        }
    .end annotation

    const-string p1, "property"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lo/amu;->b:Ljava/lang/Object;

    return-object p1
.end method

.method protected d(Lo/amT;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/amT<",
            "*>;TT;TT;)V"
        }
    .end annotation

    const-string p2, "property"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
