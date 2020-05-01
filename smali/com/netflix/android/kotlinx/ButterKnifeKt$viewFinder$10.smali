.class public final Lcom/netflix/android/kotlinx/ButterKnifeKt$viewFinder$10;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/NfcV;->a(Lo/VibrationEffect;)Lo/alN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lo/VibrationEffect<",
        "*>;",
        "Ljava/lang/Integer;",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lcom/netflix/android/kotlinx/ButterKnifeKt$viewFinder$10;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/android/kotlinx/ButterKnifeKt$viewFinder$10;

    invoke-direct {v0}, Lcom/netflix/android/kotlinx/ButterKnifeKt$viewFinder$10;-><init>()V

    sput-object v0, Lcom/netflix/android/kotlinx/ButterKnifeKt$viewFinder$10;->e:Lcom/netflix/android/kotlinx/ButterKnifeKt$viewFinder$10;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/VibrationEffect;I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/VibrationEffect<",
            "*>;I)",
            "Landroid/view/View;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Lo/VibrationEffect;->y()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lo/VibrationEffect;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/netflix/android/kotlinx/ButterKnifeKt$viewFinder$10;->b(Lo/VibrationEffect;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
