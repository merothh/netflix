.class Lcom/airbnb/lottie/LottieAnimationView$5;
.super Lo/AlarmManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieAnimationView;->b(Lo/IntKeyframeSet;Ljava/lang/Object;Lo/ActivityThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/AlarmManager<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/ActivityThread;

.field final synthetic d:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;Lo/ActivityThread;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView$5;->d:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/airbnb/lottie/LottieAnimationView$5;->a:Lo/ActivityThread;

    invoke-direct {p0}, Lo/AlarmManager;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lo/ActivityTransitionState;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActivityTransitionState<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 758
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$5;->a:Lo/ActivityThread;

    invoke-interface {v0, p1}, Lo/ActivityThread;->a(Lo/ActivityTransitionState;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
