.class public final Lcom/netflix/android/kotlinx/ButterKnifeKt$optional$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/NfcV;->b(ILo/alN;)Lo/BatteryManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "TT;",
        "Lo/amT<",
        "*>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic d:Lo/alN;


# direct methods
.method public constructor <init>(Lo/alN;I)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/kotlinx/ButterKnifeKt$optional$1;->d:Lo/alN;

    iput p2, p0, Lcom/netflix/android/kotlinx/ButterKnifeKt$optional$1;->a:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Lo/amT;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/amT<",
            "*>;)TV;"
        }
    .end annotation

    const-string v0, "desc"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object p2, p0, Lcom/netflix/android/kotlinx/ButterKnifeKt$optional$1;->d:Lo/alN;

    iget v0, p0, Lcom/netflix/android/kotlinx/ButterKnifeKt$optional$1;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lo/alN;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lo/amT;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/android/kotlinx/ButterKnifeKt$optional$1;->d(Ljava/lang/Object;Lo/amT;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
