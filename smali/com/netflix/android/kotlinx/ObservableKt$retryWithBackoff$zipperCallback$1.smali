.class public final Lcom/netflix/android/kotlinx/ObservableKt$retryWithBackoff$zipperCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BestClock;->c(Lio/reactivex/Observable;IJLo/alA;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Ljava/lang/Throwable;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic e:Lo/alA;


# direct methods
.method public constructor <init>(Lo/alA;I)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/kotlinx/ObservableKt$retryWithBackoff$zipperCallback$1;->e:Lo/alA;

    iput p2, p0, Lcom/netflix/android/kotlinx/ObservableKt$retryWithBackoff$zipperCallback$1;->d:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;I)I
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/netflix/android/kotlinx/ObservableKt$retryWithBackoff$zipperCallback$1;->e:Lo/alA;

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/alA;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_0
    iget v0, p0, Lcom/netflix/android/kotlinx/ObservableKt$retryWithBackoff$zipperCallback$1;->d:I

    if-eq p2, v0, :cond_1

    return p2

    .line 32
    :cond_1
    throw p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/netflix/android/kotlinx/ObservableKt$retryWithBackoff$zipperCallback$1;->a(Ljava/lang/Throwable;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
