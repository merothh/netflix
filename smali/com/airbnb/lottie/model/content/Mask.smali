.class public Lcom/airbnb/lottie/model/content/Mask;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final c:Lo/RevealAnimator;

.field private final d:Lo/PathKeyframes;

.field private final e:Lcom/airbnb/lottie/model/content/Mask$MaskMode;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/content/Mask$MaskMode;Lo/RevealAnimator;Lo/PathKeyframes;Z)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/Mask;->e:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 20
    iput-object p2, p0, Lcom/airbnb/lottie/model/content/Mask;->c:Lo/RevealAnimator;

    .line 21
    iput-object p3, p0, Lcom/airbnb/lottie/model/content/Mask;->d:Lo/PathKeyframes;

    .line 22
    iput-boolean p4, p0, Lcom/airbnb/lottie/model/content/Mask;->a:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/airbnb/lottie/model/content/Mask;->a:Z

    return v0
.end method

.method public b()Lo/RevealAnimator;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/Mask;->c:Lo/RevealAnimator;

    return-object v0
.end method

.method public c()Lo/PathKeyframes;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/Mask;->d:Lo/PathKeyframes;

    return-object v0
.end method

.method public d()Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/Mask;->e:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    return-object v0
.end method
