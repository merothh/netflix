.class public final Lkotlin/UnsafeLazyImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aka;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/aka<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private a:Lo/alB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/alB<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lo/alB;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alB<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lkotlin/UnsafeLazyImpl;->a:Lo/alB;

    .line 76
    sget-object p1, Lo/aki;->e:Lo/aki;

    iput-object p1, p0, Lkotlin/UnsafeLazyImpl;->c:Ljava/lang/Object;

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 2

    .line 92
    new-instance v0, Lkotlin/InitializedLazyImpl;

    invoke-virtual {p0}, Lkotlin/UnsafeLazyImpl;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/InitializedLazyImpl;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lkotlin/UnsafeLazyImpl;->c:Ljava/lang/Object;

    sget-object v1, Lo/aki;->e:Lo/aki;

    if-ne v0, v1, :cond_1

    .line 81
    iget-object v0, p0, Lkotlin/UnsafeLazyImpl;->a:Lo/alB;

    if-nez v0, :cond_0

    invoke-static {}, Lo/amh;->c()V

    :cond_0
    invoke-interface {v0}, Lo/alB;->invoke()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lkotlin/UnsafeLazyImpl;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 82
    check-cast v0, Lo/alB;

    iput-object v0, p0, Lkotlin/UnsafeLazyImpl;->a:Lo/alB;

    .line 85
    :cond_1
    iget-object v0, p0, Lkotlin/UnsafeLazyImpl;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public d()Z
    .locals 2

    .line 88
    iget-object v0, p0, Lkotlin/UnsafeLazyImpl;->c:Ljava/lang/Object;

    sget-object v1, Lo/aki;->e:Lo/aki;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lkotlin/UnsafeLazyImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlin/UnsafeLazyImpl;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Lazy value not initialized yet."

    :goto_0
    return-object v0
.end method
