.class public final Lo/MaskFilterSpan$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MaskFilterSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lo/MaskFilterSpan$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lo/GhostView;Lo/GhostView;Ljava/lang/String;ZZ)Lo/MaskFilterSpan;
    .locals 5

    .line 35
    new-instance v0, Lo/MaskFilterSpan;

    invoke-direct {v0}, Lo/MaskFilterSpan;-><init>()V

    .line 37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Lo/GhostView;->d()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const-string v4, "userSelectedPlanName"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 39
    invoke-virtual {p1}, Lo/GhostView;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    const-string v3, "userSelectedPlanPrice"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 40
    invoke-virtual {p2}, Lo/GhostView;->d()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v2

    :goto_2
    const-string v3, "upgradedPlanName"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 41
    invoke-virtual {p2}, Lo/GhostView;->b()Ljava/lang/String;

    move-result-object v2

    :cond_3
    const-string p1, "upgradedPlanPrice"

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "zeroPrice"

    .line 42
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "hasFreeTrial"

    .line 43
    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "isFormerMember"

    .line 44
    invoke-virtual {v1, p1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    invoke-virtual {v0, v1}, Lo/MaskFilterSpan;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
