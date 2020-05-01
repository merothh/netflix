.class public final Lcom/netflix/android/widgetry/widget/UserRatingButtonLottie_Ab9305$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/StatsDimensionsValue;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/WebStorage;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/StatsDimensionsValue;


# direct methods
.method public constructor <init>(Lo/StatsDimensionsValue;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonLottie_Ab9305$1;->c:Lo/StatsDimensionsValue;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/WebStorage;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonLottie_Ab9305$1;->c:Lo/StatsDimensionsValue;

    invoke-static {v0, p1}, Lo/StatsDimensionsValue;->e(Lo/StatsDimensionsValue;Lo/WebStorage;)V

    .line 34
    iget-object p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonLottie_Ab9305$1;->c:Lo/StatsDimensionsValue;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/StatsDimensionsValue;->setClickable(Z)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lo/WebStorage;

    invoke-virtual {p0, p1}, Lcom/netflix/android/widgetry/widget/UserRatingButtonLottie_Ab9305$1;->a(Lo/WebStorage;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
