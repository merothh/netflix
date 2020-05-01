.class Lcom/airbnb/lottie/LottieAnimationView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SecretKeyFactorySpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/SecretKeyFactorySpi<",
        "Lo/DESedeKeySpec;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView$3;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/DESedeKeySpec;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$3;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lo/DESedeKeySpec;)V

    return-void
.end method

.method public synthetic e(Ljava/lang/Object;)V
    .locals 0

    .line 67
    check-cast p1, Lo/DESedeKeySpec;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView$3;->b(Lo/DESedeKeySpec;)V

    return-void
.end method
